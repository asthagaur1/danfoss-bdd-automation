from AKCC55 import AKCC55
from EET import EET
from EKE1x import EKE1x
from ERC11x import ERC11x
from ERC21x import ERC21x
from ETC1Hx import ETC1Hx


class CreateObject():
    def getControllerObject(self,controller,variant):
        controllers = {"ERC11x" : ERC11x(variant),"EET" : EET(variant),"AK-CC55" : AKCC55(variant),
                       "EKE1x" : EKE1x(variant),"ERC21x" : ERC21x(variant),"ETC1Hx" : ETC1Hx(variant)}
        return controllers[controller]
    


