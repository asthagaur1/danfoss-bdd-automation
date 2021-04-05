# -*- coding: utf-8 -*-
import pywinauto
from pywinauto.application import Application
import win32gui
import time

class installation():
    """
    Install the KoolProg.
    """
    def install(self, installation_path):
        """
        Install the KoolProg.
        :param installation_path: Path of the KoolProg Setup file.
        :return: True if installed , otherwise False.
        """
        try:
            app = Application().start(installation_path, timeout=10)
            time.sleep(5)
            initial_hwnd = win32gui.FindWindow(None, 'Setup - KoolProg')
            app = Application().connect(handle=initial_hwnd,timeout=10)
            app['Setup - KoolProg'].NextButton.click_input()
            app['Setup - KoolProg'].IacceptthisagreementRadioButton.click_input()
            app['Setup - KoolProg'].NextButton.click_input()
            app['Setup - KoolProg'].NextButton.click_input()
            folder_exist_hwnd = win32gui.FindWindow(None, 'Folder Exists')
            if folder_exist_hwnd != 0:
                app = Application().connect(handle=folder_exist_hwnd,timeout=10)
                app['Folder Exists'].YesButton.click_input()
                app['Setup - KoolProg'].NextButton.click_input()
            app['Setup - KoolProg'].InstallButton.click_input()
            time.sleep(10)
            try:
                app['Setup - KoolProg'].AutomaticallyclosetheapplicationsRadioButton.click_input()
                app['Setup - KoolProg'].NextButton.click_input()
            except:
                pass
            time.sleep(30)
            cdm_hwnd = win32gui.FindWindow(None, 'FTDI CDM Drivers')
            if cdm_hwnd != 0:
                app = Application().connect(handle=cdm_hwnd)
                app['FTDI CDM Drivers'].ExtractButton.click_input()
            time.sleep(5)
            device_driver_hwnd = win32gui.FindWindow(None, 'Device Driver Installation Wizard')
            if device_driver_hwnd != 0:
                app = Application().connect(handle=device_driver_hwnd)
                app['Device Driver Installation Wizard'].NextButton.click_input()
                app['Device Driver Installation Wizard'].IacceptthisagreementRadioButton.click_input()
                app['Device Driver Installation Wizard'].NextButton.click_input()
                time.sleep(5)
                app['Device Driver Installation Wizard'].FinishButton.click_input()
                app = Application().connect(handle=initial_hwnd,timeout=10)
            time.sleep(5)
            app['Setup - KoolProg'].FinishButton.click_input()
            return True
        except RuntimeError:
            return False
        except pywinauto.findbestmatch.MatchError:
            return False

class uninstallation():
    
    def uninstall(self, uninstall_file):
        """
        Uninstall the KoolProg.
        :param uninstall_file: Path of the uninstall file.
        :return: True if uninstalled , otherwise False.
        """
        try:
            app = Application().start(uninstall_file, timeout=10)
            time.sleep(5)
            hwnd = win32gui.FindWindow(None, 'KoolProg Uninstall')
            app = Application().connect(handle=hwnd)
            app['KoolProg Uninstall'].YesButton.click_input()
            time.sleep(5)
            app['KoolProg Uninstall'].OKButton.click_input()
        except RuntimeError:
            return False
        except pywinauto.findbestmatch.MatchError:
            return False
    