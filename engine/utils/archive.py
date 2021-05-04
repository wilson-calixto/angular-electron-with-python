""" This package will be responsible to create models archive """

import shutil
import logging

logger = logging.getLogger('')

class ArchiveModels:
    """ Saves models in an archive file """

    def __init__(self, archive_format='gztar'):
        self.format = archive_format

    def save_dir(self, dir_name, output_filename):
        shutil.make_archive(output_filename, self.format, dir_name)

    def load_file(self, filename, extract_dir=''):
        try:
            shutil.unpack_archive(filename, extract_dir)
        except ValueError:
            logger.error("Invalid format file %s", filename)
            raise
