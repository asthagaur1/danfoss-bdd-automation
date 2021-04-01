import abc
class Interface(abc.ABC):
    
    @abc.abstractmethod
    def getHeader(self):
        pass
    
    @abc.abstractmethod
    def parseTheInputFile(self):
        pass
