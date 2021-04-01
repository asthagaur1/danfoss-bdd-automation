import serial.tools.list_ports




class SerialLib:

    def __init__(self):
        self.__serialHandle = serial.Serial()


    @staticmethod
    def _list_all_serial_ports():
        """
        List all serial ports present in computer.
        :return: list of dict contains serial ports.
        """
        comPorts = serial.tools.list_ports
        com_ports = list()
        for port, desc, hwid in sorted(comPorts.comports()):
            com_ports.append({"port": port, "desc": desc, "hwid": hwid})
        return com_ports

    def _open_serial_port(self, port, baudrate=9600, bytesize=8, parity='N', stopbits=1, timeout=0xFF, xonxoff=0,
                         rtscts=0):
        """
        Open a serial port for given name.
        :param com_name: COM name like COM1,COM2,...
        :return: True if communication succeed else False.
        """
        ser = serial.Serial()
        ser.baudrate = 19200
        ser.port = port
        ser.baudrate = baudrate
        ser.bytesize = bytesize
        ser.parity = parity
        ser.stopbits = stopbits
        ser.timeout = timeout
        ser.xonxoff = xonxoff
        ser.rtscts = rtscts
        if not ser.isOpen():
            return False
        ser.open()
        self.__serialHandle = ser

    def _close_serial_port(self):
        """
        Close serial port.
        :param com_name:
        :return:
        """
        if not self.__serialHandle:
            if self.__serialHandle.isOpen():
                self.__serialHandle.close()
                return True
        return False

    def _write(self,data):
        """
        Write data to opened serial port.
        :param data:
        :return:
        """
        self.__serialHandle.write(data=data)

    def _read(self):
        """
        Write data to opened serial port.
        :return:
        """
        return self.__serialHandle.read_all()

    def _isopen(self):
        """
        Check port status.
        :return:
        """
        return self.__serialHandle.isOpen()

if __name__ == '__main__':
    ser = SerialLib()
    print("ser port ={}".format(ser._list_all_serial_ports()))
    pass
