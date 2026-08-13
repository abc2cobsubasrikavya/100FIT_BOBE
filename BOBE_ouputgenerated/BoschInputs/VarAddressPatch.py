# --------------------------------------
# import libraries
# --------------------------------------
import shutil
import os
import errno
import stat
import sys
import re
import ntpath
from optparse import OptionParser

# --------------------------------------
# Declarations/Definitions
# --------------------------------------

# --------------------------------------
# Global Variables
# --------------------------------------

# --------------------------------------
# Function ExecUpdatedAddressesInFile()
# --------------------------------------
def VarAddressPatch(InputMAPFile,InputTemplateFile,OutputFile):

   InMAPFile  = open(InputMAPFile,"r")
   InTempFile = open(InputTemplateFile,"r")
   OutFile    = open(OutputFile,"w")
   FindVarString = []
   FindVarStringAddr = []
   
   for CurrentLine in InMAPFile:

       #print("1st CurrentLine: %s." % CurrentLine)
       #print("1st CurrentLine: %s." % CurrentLine.split()[0])
       #if CurrentLine.split()[0] in InTempFileData
       for CurrentLineTemp in InTempFile:
         if CurrentLineTemp.find(CurrentLine.split()[0])!=-1:
            FindVarString.append(CurrentLine.split()[0])
            FindVarStringAddr.append("0x"+CurrentLine.split()[1])
            
            #print("2nd CurrentLineTemp: %s." % FindVarString)
            #print("2nd CurrentLineTemp: %s." % FindVarStringAddr)
       InTempFile.seek(0)
   #InTempFile.close()
   #InMAPFile.close()
   
   #InTempFile = open(InputTemplateFile,"r")    
   #OutFile    = open(OutputFile,"w")
   for CurrentLineTemp in InTempFile:
       for i in range(len(FindVarString)):
          if CurrentLineTemp.find(FindVarString[i])!=-1:
             CurrentLineTemp=CurrentLineTemp.replace(FindVarString[i],FindVarStringAddr[i])
             #print("2nd CurrentLineTemp: %s." % CurrentLineTemp)
       OutFile.write(CurrentLineTemp)
               
              
   InMAPFile.close()
   InTempFile.close()
   OutFile.close()
# end of function CustOEMVerNumPatch() *********************************************

if __name__ == '__main__':
    if len(sys.argv) > 1:
       InputMAPFile       = sys.argv[1]
       InputTemplateFile  = sys.argv[2]
       OutputFile         = sys.argv[3]
       VarAddressPatch(InputMAPFile,InputTemplateFile,OutputFile)
    else:
       print('------------------------------------------------------------------------------------------')
       print('ERROR: Please enter the correct path.')