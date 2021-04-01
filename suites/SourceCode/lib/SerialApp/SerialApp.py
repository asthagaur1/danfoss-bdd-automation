from SerialLibApi import SerialLibApi
import SerialAppConfig
import subprocess
import common
import sys
import win32com.client
import os
import win32gui,win32con
import test
import time
from Constants import Simulator

class SerialApp():
    """
    Serial application related to koolprog.
    """

    def __init__(self, use_devman_exe=False):
        """

        """
        self.__serial_handlers = list()
        self.COMPORT_NOT_AVAILABE = 1
        self.COMPORT_USED_ALREADY = 2
        self.COMPORT_AVAILABE = 3
        self.COMPORT_PROCESS_SCCEED = 4
        self.__use_devman_exe = use_devman_exe
        if sys.version_info.major == 2:
            self.__run_process = subprocess.call
        elif sys.version_info.major == 3:
            self.__run_process = subprocess.run
        else:
            raise Exception("Sorry, no numbers below zero")

    def close_other_ports_expect_given(self, port_name):
        """
        Close other ports expect given in argument
        :param port_name: COM port name to keep access koolprog.
        :return:
        """
        if not self.__use_devman_exe:
            given_port_is_available = False
            for port in SerialLibApi.list_all_serial_ports():
                serial_handler = SerialLibApi()
                if port_name == port["port"]:
                    given_port_is_available = serial_handler
                else:
                    serial_handler.open_serial_port(port["port"])
                self.__serial_handlers.append(serial_handler)

            if not given_port_is_available:
                return self.COMPORT_NOT_AVAILABE
            if given_port_is_available.isopen():
                return self.COMPORT_USED_ALREADY
            return self.COMPORT_AVAILABE
        else:
            exe = SerialAppConfig.DevManView_executeable_path
            for port in SerialLibApi.list_all_serial_ports():
                serial_handler = SerialLibApi()
                if port_name != port["port"]:
                    self.__run_process([exe, "/disable", port["desc"]])
                else:
                    self.__run_process([exe, "/enable", port["desc"]])
        return self.COMPORT_AVAILABE

    def disable_all_ports(self):
        """
        Disable all serial and specific USB ports.
        :return: COMPORT_PROCESS_SCCEED
        """
        if not self.__use_devman_exe:
            given_port_is_available = False
            for port in SerialLibApi.list_all_serial_ports():
                serial_handler = SerialLibApi()
                serial_handler.open_serial_port(port["port"])
                self.__serial_handlers.append(serial_handler)

            return self.COMPORT_PROCESS_SCCEED
        else:
            exe = SerialAppConfig.DevManView_executeable_path
            path_f = common.get_currentDirectory()
            print("hello")
            for port in SerialLibApi.list_all_serial_ports():
                self.__run_process([exe, "/disable", port["desc"]])
            wmi = win32com.client.GetObject ("winmgmts:")
            for usb in wmi.InstancesOf ("Win32_USBHub"):
                print(usb.DeviceID)
                if "VID_0403&PID_6001" in usb.DeviceID:
                    self.__run_process([exe, "/disable", usb.DeviceID])
                    return "USBOperationSucceeded"
        try:
            processName = Simulator.simulator_file
            count = 0
            import wmi
            f=wmi.WMI()
            for process in f.Win32_Process(): 
                if process.name == processName: 
                    process.Terminate() 
                    count += 1
            if count == 0:
                test.log("Process not found")
        except:
            pass
        return self.COMPORT_PROCESS_SCCEED
              

    def enable_all_ports(self):
        """
        Enable all serial and specific USB ports.
        :return: COMPORT_PROCESS_SCCEED
        """
        if not self.__use_devman_exe:
            for ser in self.__serial_handlers:
                ser.close()

            return self.COMPORT_PROCESS_SCCEED

        else:
            exe = SerialAppConfig.DevManView_executeable_path
            wmi = win32com.client.GetObject ("winmgmts:")
            for usb in wmi.InstancesOf ("Win32_USBHub"):
                print(usb.DeviceID)
                if "VID_0403&PID_6001" in usb.DeviceID:
                    self.__run_process([exe, "/enable", usb.DeviceID])
                    break
            for port in SerialLibApi.list_all_serial_ports():
                self.__run_process([exe, "/enable", port["desc"]])
                  

        return self.COMPORT_PROCESS_SCCEED

    def enable_port(self, port_name,  path=None):
        """
        Enable "port_name" for access.
        :param port_name: Serial/USB port name to enable.
        :return: COMPORT_PROCESS_SCCEED
        """
        if not self.__use_devman_exe:
            for ser in self.__serial_handlers:
                ser.close()

            return self.COMPORT_PROCESS_SCCEED
        if port_name == Simulator.portName:
            if win32gui.FindWindow(None,path):
                test.log("simulator is already running")
            else:
                os.startfile(path)
                time.sleep(2)
                Minimize = win32gui.GetForegroundWindow()
                win32gui.ShowWindow(Minimize, win32con.SW_MINIMIZE)
        
        else:
            exe = SerialAppConfig.DevManView_executeable_path
            if (port_name != "USB") and ("Combination:" not in port_name):
                for port in SerialLibApi.list_all_serial_ports():
                    if port_name == port["port"]:
                        self.__run_process([exe, "/enable", port["desc"]])
                        return self.COMPORT_PROCESS_SCCEED
                    
            elif "Combination:" in port_name:
                port_name = port_name.split(";")
                wmi = win32com.client.GetObject ("winmgmts:")
                for usb in wmi.InstancesOf ("Win32_USBHub"):
                    print(usb.DeviceID)
                    if "VID_0403&PID_6001" in usb.DeviceID:
                        self.__run_process([exe, "/enable", usb.DeviceID])
                        break
                com_port = port_name[1]
                for port in SerialLibApi.list_all_serial_ports():
                    if com_port == port["port"]:
                        self.__run_process([exe, "/enable", port["desc"]])
                        break
                
                return "USBOperationSucceeded"
            else: 
                wmi = win32com.client.GetObject ("winmgmts:")
                for usb in wmi.InstancesOf ("Win32_USBHub"):
                    print(usb.DeviceID)
                    if "VID_0403&PID_6001" in usb.DeviceID:
                        self.__run_process([exe, "/enable", usb.DeviceID])
                        return "USBOperationSucceeded"
            return self.COMPORT_NOT_AVAILABE

    def disable_port(self, port_name):
        """
        Disable "port_name" for access.
        :param port_name: Serial port name to disable.
        :return: COMPORT_PROCESS_SCCEED
        """
        if not self.__use_devman_exe:
            for ser in self.__serial_handlers:
                ser.close()

            return self.COMPORT_PROCESS_SCCEED
        else:
            exe = SerialAppConfig.DevManView_executeable_path
            for port in SerialLibApi.list_all_serial_ports():
                if port_name == port["port"]:
                    self.__run_process([exe, "/disable", port["desc"]])
                    return self.COMPORT_PROCESS_SCCEED
            return self.COMPORT_NOT_AVAILABE
    
        
if __name__ == '__main__':
    ser = SerialApp(True)
    # ser.close_other_ports_expect_given("COM3")

    print("ser port ={}".format(ser.close_other_ports_expect_given("COM19")))
    pass
