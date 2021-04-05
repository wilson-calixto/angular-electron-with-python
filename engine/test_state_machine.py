"""
Unit tests for the StateMachine library
"""

from state_machine import StateMachine


class TestStateMachine:
    def test_dispach_event(self):
        sm_test = StateMachine()
        sm_test.sm['load'] = {1: print("test")}
        sm_test.inicia_tread()
        sm_test.on_event(event=1, args=None)
        sm_test.dispach_events()
        sm_test.finaliza_tread()
        assert 0 == sm_test.events_queue.getLenth()

    def test_undispach_event(self):
        sm_test = StateMachine()
        sm_test.sm['load'] = {1: print("test")}
        sm_test.inicia_tread()
        sm_test.on_event(event=1, args=None)
        sm_test.finaliza_tread()
        assert 1 == sm_test.events_queue.getLenth()
