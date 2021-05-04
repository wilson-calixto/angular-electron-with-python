from typing import Optional
from engine.application_manager import *
from pydantic import BaseModel
from fastapi.responses import HTMLResponse
from fastapi import FastAPI, WebSocket
from fastapi.middleware.cors import CORSMiddleware
import time
class Item(BaseModel):
    event: int



import threading

receive_finish = threading.Event()


app = FastAPI()
origins = [
    "http://localhost.tiangolo.com",
    "https://localhost.tiangolo.com",
    "http://localhost",
    "http://localhost:8080",
    "http://localhost:8000",

]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
applicationManager = ApplicationManager()
html = """
<!DOCTYPE html>
<html>
    <head>
        <title>Chat</title>
    </head>
    <body>
        <h1>WebSocket Chat</h1>
        <form action="" onsubmit="sendMessage(event)">
            <input type="text" id="messageText" autocomplete="off"/>
            <button>Send</button>
        </form>
        <ul id='messages'>
        </ul>
        <script>
            var ws = new WebSocket("ws://localhost:8000/ws");
            ws.onmessage = function(event) {
                var messages = document.getElementById('messages')
                var message = document.createElement('li')
                var content = document.createTextNode(event.data)
                message.appendChild(content)
                messages.appendChild(message)
            };
            function sendMessage(event) {
                var input = document.getElementById("messageText")
                ws.send(input.value)
                input.value = ''
                event.preventDefault()
            }
        </script>
    </body>
</html>
"""

@app.get("/websocket")
async def get():
    return HTMLResponse(html)

@app.get("/")
def read_root():
    #print('\n\n\n',type(applicationManager.get_available_events()))
    return {"available_events": applicationManager.get_available_events()}


def set_receive_finish(timeout):
    receive_finish.set(timeout)

@app.post("/")
async def create_item(item: Item):
    print("arived",int(item.event))

    applicationManager.on_event(
        int(item.event),
        {"set_receive_finish": set_receive_finish})
    applicationManager.get_available_events()
    #print("applicationManager.get_available_events()",applicationManager.get_available_events(),applicationManager.get_last_args())

    return {"available_events": applicationManager.get_available_events(), "args": applicationManager.get_last_args()}

@app.get("/models_by_brand")
async def get_models_by_brand():
    # call event 12 => get_all_models_by_brand
    #there is a asycronism problem in this call
    applicationManager.on_event(12)
    return {"available_events": applicationManager.get_available_events(), "args": applicationManager.get_last_args()}


@app.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()
    while True:
        #data = await websocket.receive_text()
        #o socket está bloqueando o recurso : applicationManager
        #applicationManager.set_last_args('aa')
        data = applicationManager.get_last_args()
        time.sleep(1)

        await websocket.send_text(f"Message text was: {data}")

@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}


def self_terminate():
    time.sleep(1)
    parent = psutil.Process(psutil.Process(os.getpid()).ppid())
    parent.kill()
