from typing import Optional
from fastapi import FastAPI
from engine.application_manager import *
from pydantic import BaseModel

class Item(BaseModel):
    event: int


app = FastAPI()
applicationManager = ApplicationManager()

@app.get("/")
def read_root():
    #print('\n\n\n',type(applicationManager.get_available_events()))
    return {"available_events": applicationManager.get_available_events()}

@app.post("/")
async def create_item(item: Item):
    print("arived",int(item.event))

    applicationManager.on_event(int(item.event))
    applicationManager.get_available_events()
    print("applicationManager.get_available_events()",applicationManager.get_available_events(),applicationManager.get_last_args())

    return {"available_events": applicationManager.get_available_events(), "args":applicationManager.get_last_args()}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}


def self_terminate():
    time.sleep(1)
    parent = psutil.Process(psutil.Process(os.getpid()).ppid())
    parent.kill()
