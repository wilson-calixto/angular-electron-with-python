"""
Unit tests for the DeviceManager library
"""

from device_manager import DeviceManager


class TestDeviceManager:
    def test_open_all_devices(self):
        dm = DeviceManager()
        assert True is dm.open_all_devices()

    def test_start_all_devices(self):
        dm = DeviceManager()
        assert True is dm.start_all_devices()

    def test_stop_all_devices(self):
        dm = DeviceManager()
        assert True is dm.stop_all_devices()

    def test_close_all_devices(self):
        dm = DeviceManager()
        assert True is dm.close_all_devices()

    def test_load_devices_from_db(self):
        dm = DeviceManager()
        assert True is dm.load_devices_from_db()

    def test_get_all_devices_status(self):
        dm = DeviceManager()
        assert [True] == dm.get_all_devices_status()

    def test_get_device_status(self):
        dm = DeviceManager()
        assert True is dm.get_device_status('dev_name')

    def test_update_device_property(self):
        dm = DeviceManager()
        assert True is dm.update_device_property('device')

    def test_is_device_open(self):
        dm = DeviceManager()
        assert True is dm.is_device_open('dev_name')

    def test_test_all_devices(self):
        dm = DeviceManager()
        assert [{"device_name": "xyz", "status": True}
                ] == dm.test_all_devices()

    def test_test_device(self):
        dm = DeviceManager()
        assert True is DeviceManagertest_device('dev').

    def test_access_device(self):
        dm = DeviceManager()
        assert True is dm.access_device('dev')

    def test_get_failed_devices(self):
        dm = DeviceManager()
        assert [True] == dm.get_failed_devices()
