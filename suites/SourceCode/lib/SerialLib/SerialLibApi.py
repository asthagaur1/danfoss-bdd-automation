from SerialLib import SerialLib


class SerialLibApi(SerialLib):
    """
    Koolprog automation related serial port
    """

    def __init__(self):
        """

        """
        SerialLib.__init__(self)

    @staticmethod
    def list_all_serial_ports():
        """
        List all serial ports present in computer.
        :return: list of dict contains serial ports.
        """
        return SerialLib._list_all_serial_ports()

    def open_serial_port(self, port, baudrate=9600, bytesize=8, parity='N', stopbits=1, timeout=30, xonxoff=0,
                         rtscts=0):
        """
        Open a serial port for given name.
        :param com_name: COM name like COM1,COM2,...
        :return: True if communication succeed else False.
        """
        return self._open_serial_port(port, baudrate, bytesize, parity, stopbits, timeout, xonxoff, rtscts)

    def close_serial_port(self):
        """
        Close serial port.
        :param com_name:
        :return:
        """
        return self._close_serial_port()

    def write(self, data):
        """
        Write data to opened serial port.
        :param data: byte array to send date to serial port.
        :return:
        """
        self._write(data)

    def read(self):
        """
        Write data to opened serial port.
        :return: read all bytes from serial rx buffer.
        """
        return self._read()

    def isopen(self):
        """
        Check port status.
        :return:
        """
        return self._isopen()




