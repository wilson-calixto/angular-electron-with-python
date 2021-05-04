import json
import os

class ConfigurationHandler:
    def __init__(self):
        self.config = None
        pass

    def load_config(self,filepath):
        if os.path.isfile(filepath):
            with open(filepath, 'r') as config_file:
                self.config = json.load(config_file)

    def get_station_version(self):
        version = '0.0.0'
        if 'version_station' in self.config:
            version = self.config['version_station']

        return version

    def get_manager_version(self):
        version = '0.0.0'
        if 'version_manager' in self.config:
            version = self.config['version_manager']

        return version
