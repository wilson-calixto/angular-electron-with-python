"""
Unit tests for the StateMachine library
"""

from application_manager import ApplicationManager


class TestApplicationManager:
    def test_load_configuration(self):
        app_manager_test = ApplicationManager()
        app_manager_test.load_configuration()
        assert app_manager_test.state == 'configured_system'

    def test_setup_station(self):
        app_manager_test = ApplicationManager()
        app_manager_test.setup_station(args=None)
        assert app_manager_test.state == 'configured_system'

    def test_update_system(self):
        app_manager_test = ApplicationManager()
        app_manager_test.update_system(args=None)
        assert app_manager_test.state == 'configured_system'

    def test_select_model(self):
        app_manager_test = ApplicationManager()
        app_manager_test.select_model(args=None)
        assert app_manager_test.state == 'selected_model'

    def test_configure_model_testing(self):
        app_manager_test = ApplicationManager()
        app_manager_test.configure_model_testing(args=None)
        assert app_manager_test.state == 'tests_configured'

    def test_start_a_test_sequence(self):
        app_manager_test = ApplicationManager()
        app_manager_test.start_a_test_sequence(args=None)
        assert app_manager_test.state == 'executing_a_test_sequence'

    def test_running_a_test_sequence(self):
        app_manager_test = ApplicationManager()
        app_manager_test.running_a_test_sequence(args=None)
        assert app_manager_test.state == 'configured_system'

    def test_cancel_a_test_sequence(self):
        app_manager_test = ApplicationManager()
        app_manager_test.cancel_a_test_sequence(args=None)
        assert app_manager_test.state == 'tests_configured'

    def test_report_error_in_hw(self):
        app_manager_test = ApplicationManager()
        app_manager_test.report_error_in_hw(args=None)
        assert app_manager_test.state == 'hw_error'

    def test_return_to_configuration_of_test(self):
        app_manager_test = ApplicationManager()
        app_manager_test.return_to_configuration_of_test(
            args=None)
        assert app_manager_test.state == 'selected_model'

    def test_return_to_system_configuration(self):
        app_manager_test = ApplicationManager()
        app_manager_test.return_to_system_configuration(
            args=None)
        assert app_manager_test.state == 'configured_system'
