import serial.tools.list_ports as ls_ports
from application.utils.constants import *
import os, json

def get_available_ports():
    ports = [port[0] for port in ls_ports.comports()]
    return ports

def get_available_bauds():
    bauds = [300, 600, 1200,1800,2400,4800,7200,
    9600,14400,19200,38400,56000,57600,115200,128000]
    return bauds


def type_of_crop(filepath,default_value):
    crop_type=''    
    try:
        if(os.path.isfile(filepath)):
            with open(filepath, 'r') as config_file:
                config = json.load(config_file)

            if('crop_type' in config):

                if(config['crop_type'].lower() == 'ann'):
                    crop_type=HDMI_ANN

                elif(config['crop_type'].lower() == 'new_pdi_crop'):
                    crop_type=NEW_PDI_CROP

                else:
                    crop_type=WITH_WHITE_SCREEN                  
            
            if(crop_type == ''):
                return default_value

            return crop_type
    except Exception as e:
        return default_value



def type_of_ann(filepath):
    ann_type=''    
    try:
        if(os.path.isfile(filepath)):
            with open(filepath, 'r') as config_file:
                config = json.load(config_file)

            if('ssnn_hdmi' in config or 'ssnn_gray_level' in config or 'ssnn_mura' in config):

                if(config['ssnn_hdmi'].lower() == 'true'):
                    ann_type=HDMI_ANN

                if(config['ssnn_gray_level'].lower() == 'true'):
                    ann_type=GRAY_LEVEL_ANN

                if(config['ssnn_mura'].lower() == 'true'):
                    ann_type=MURA_ANN
                    
            
            if(ann_type == ''):
                return WITH_WHITE_SCREEN

            return ann_type
    except Exception as e:
        return WITH_WHITE_SCREEN



def images_to_save(filepath):
    type_of_image_to_save='error'    
    try:
        if(os.path.isfile(filepath)):
            with open(filepath, 'r') as config_file:
                config = json.load(config_file)

            if('images_to_save' in config):
                return config['images_to_save'].lower()

            return type_of_image_to_save
    except Exception as e:
        return type_of_image_to_save

def type_of_aditional_log(filepath):
    default_value=''
    try:
        if(os.path.isfile(filepath)):
            with open(filepath, 'r') as config_file:
                config = json.load(config_file)

            if('aditional_log' in config):
                return config['aditional_log'].lower()

            return default_value
    except Exception as e:
        return default_value

def type_of_type_of_hdcp_edid_lib(filepath):
    default_value=''
    try:
        if(os.path.isfile(filepath)):
            with open(filepath, 'r') as config_file:
                config = json.load(config_file)

            if('type_of_hdcp_edid_lib' in config):
                return config['type_of_hdcp_edid_lib'].lower()

            return default_value
    except Exception as e:
        return default_value        
