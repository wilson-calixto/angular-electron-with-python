import os
from datetime import datetime as dt
from shutil import copyfile, rmtree
from .test import TestEnum
from libs.data.sql_provider import SQLProvider
from .archive import ArchiveModels



class ProfileHandler:
    @staticmethod
    def extract_profile(args):
        result = False
        timestamp = dt.now().strftime('%Y-%m-%d_%H-%M-%S')
        filename = 'profile_{0}'.format(timestamp)
        fullpath = os.path.join(args['path'], filename)
        #edid_path = os.path.join("edid-tables,{0}/{1}.dat")
        profile_init_dir = os.path.join("profile","edid-tables")
        try:
            os.makedirs(profile_init_dir)
            for model in args['models']:
                test = [test for test in model.tests \
                if test.type_val == TestEnum.EDID_TEST]

                if len(test) != 0:
                    edid_filename = "{0}.dat".format(model.name)
                    path_formated = os.path.join('edid-tables',
                        model.brand.upper(),edid_filename)
                    fullpath_formated = os.path.join("db", path_formated)
                    if os.path.exists(fullpath_formated):
                        brand_dir = os.path.join(profile_init_dir,model.brand.upper())
                        if not os.path.exists(brand_dir):
                            os.makedirs(brand_dir)
                        copyfile(os.path.join("db",path_formated), \
                            os.path.join("profile",path_formated))

            provider = SQLProvider()
            provider.dump_models_file(args['models'], "profile", timestamp)
            archive = ArchiveModels()
            archive.save_dir("profile", fullpath)
            result = True
        except Exception as e:
            print(str(e))
        finally:
            rmtree(profile_init_dir)
            rmtree('profile')

        return result, fullpath

