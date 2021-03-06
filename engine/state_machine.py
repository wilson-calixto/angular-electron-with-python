from collections import deque
from threading import Thread
import json


class CustomQueue(object):

    def __init__(self, maxlen: int = 10):
        self.queue: deque = deque(maxlen=maxlen)

    def append(self, data: list):
        self.queue.append(data)

    def priority_append(self, data: list):
        self.queue.appendleft(data)

    def getLenth(self) -> int:
        return len(self.queue)

    def pop(self) -> list:
        return self.queue.popleft()


class StateMachine():

    def __init__(self, statemachine_name: str = 'test'):
        self.sm_name: str = statemachine_name
        self.events_queue: CustomQueue = CustomQueue()
        self.state: str = 'load'
        self.sm: dict = {}
        self.last_args={}

        self.inicia_tread()

    def inicia_tread(self):
        self.thread: Thread = Thread(target=self.dispach_events, args=([], ))
        self.thread.start()

    def finaliza_tread(self) -> exit:
        self.thread.join()
        self.thread = None
        exit(0)


    
    def get_available_events(self):
        my_list=[]
        for key in self.sm[self.state].keys():
            my_list.append({"available_event_number":key,"event_name":self.temp_dict[key]})

        return my_list

    def set_last_args(self,args):
        self.last_args=args

    def get_last_args(self):
        return self.last_args
                

    def on_event(self, event: int, args: dict = None):
        #print(json.dumps({"event_arived":event}))
        self.events_queue.append([event, args])

    def dispach_events(self, *args: dict):
        while True:
            try:
                if(self.events_queue.getLenth() > 0):
                    event, args = self.events_queue.pop()
                    if event in self.sm[self.state]:
                        self.set_last_args(args)
                        self.sm[self.state][event](args=args)
            except Exception:
                pass
