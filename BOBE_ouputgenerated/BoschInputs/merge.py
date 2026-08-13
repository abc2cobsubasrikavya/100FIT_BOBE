# -*- coding: utf-8
#! /usr/bin/env python
#
# (C) ZFLS GmbH EZPQ P.Ungeheuer
#
# script for ASC support in project MQB
# Merge ASC A2L description Block to ZF A2L

import sys, shutil, os, stat, glob, time, string , operator , binascii

get = []
dict = {}
#C:\eps_deploy\gx0530_ASC_V94\
#asca2lfile  = 'C:/eps_deploy/gx0530_ASC_V94/oem_merge.a2l'
#asca2lfile  = 'p:/steering_epsvwmqb_sbk/SW/DeploymentSet/SW_Partner/VW/A2L/asc_swc2.a2l'

#outa2l = 'C:/eps_deploy/gx0530_ASC_V94/zflsappl_oem.a2l'
#outa2lmerge = 'C:/eps_deploy/gx0530_ASC_V94/oem.a2l'

#headerfile = 'p:/steering_epsvwmqb_sbk/SW/DeploymentSet/SW_Partner/VW/INC/asc_cal.h'
#mapfile  = 'c:/eps_deploy/gx0530_Job772_Damosmakro_charisma/zflsappl.map'

#structname = '_SYS_STRUCT'
#structname = '_VEH_STRUCT'

#------------------------------------------------------------------------------
# reada2l
# get the OEM�s A2L
#------------------------------------------------------------------------------
def readA2L():
  element = 0
  commentactive = False
  waitforbegin = True
  waitforchara = False
  waitforvarname = False
  waitforvalue = False
  waitforadress = False
  line4 = ""
  varname = ""
  ungerade = False
  offset = 0

  fa2l  = open(asca2lfile, 'r')

  print("read A2L")

  for line in fa2l:
    line2 = line.strip().split()

    for pp in line2:
       if pp.startswith("/*"):
         commentactive = True
         #print "<begin comments---",
       if pp.endswith("*/"):
         commentactive = False
         #print "---end comments>"
       elif not commentactive:
         if pp.startswith("/begin"):
           waitforbegin = False
           waitforchara = True
         if pp.startswith("/end"):                                #reset to begin if /end is found
           waitforbegin = True
           waitforchara = False
           waitforvarname = False
         if waitforchara and pp.startswith("A2ML"):
           waitforchara = False
           waitforvarname = True
           break
         if waitforvarname:
            line4 = line4 + "".join(str(pp)) + " "
    if len(line4):
       #print line4
       fnewa2lmerge.write(line4)
       fnewa2lmerge.write("\n")

    line4=""

  fa2l.close()

#------------------------------------------------------------------------------
# readdata
# get the OEM�s data block
#------------------------------------------------------------------------------
def readDATA():
  element = 0
  commentactive = False
  waitforbegin = True
  waitforchara = False
  waitforvarname = False
  waitforvalue = False
  waitforadress = False
  pointfound = False
  line4 = ""
  varname = ""
  ungerade = False
  offset = 0
  storenext = False

  fa2l  = open(asca2lfile, 'r')

  print("read A2L")

  for line in fa2l:
    line2 = line.strip()

    if foutlist:
      if storenext:
        storenext = False
        splitline = line2.split()
        foutlist.write(splitline[0])
        foutlist.write("\n")

      if line2.startswith("/begin MEASUREMENT") or \
         line2.startswith("/begin AXIS_PTS") or \
         line2.startswith("/begin CHARACTERISTIC"):
        splitline = line2.split()
        if len(splitline) > 2:
          foutlist.write(splitline[2])
          foutlist.write("\n")
        else:
          storenext = True

    if line2.startswith("/begin MEASUREMENT") or \
       line2.startswith("/begin COMPU_METHOD") or \
       line2.startswith("/begin RECORD_LAYOUT") or \
       line2.startswith("/begin FUNCTION") or \
       line2.startswith("/begin AXIS_PTS") or \
       line2.startswith("/begin COMPU_VTAB") or \
       line2.startswith("/begin CHARACTERISTIC"):
      pointfound = True

    if line2.endswith("/end MEASUREMENT") or \
       line2.endswith("/end COMPU_METHOD")or \
       line2.endswith("/end RECORD_LAYOUT")or \
       line2.endswith("/end FUNCTION") or \
       line2.endswith("/end AXIS_PTS") or \
       line2.endswith("/end COMPU_VTAB") or \
       line2.endswith("/end CHARACTERISTIC"):
      pointfound = False
      # /*letzte zeile noch schreiben*/
      if len(line):
       fnewa2lmerge.write(line2)
       fnewa2lmerge.write("\n")


    if pointfound and len(line):
       #print line4
       fnewa2lmerge.write(line2)
       fnewa2lmerge.write("\n")

    line=""

  fa2l.close()

#------------------------------------------------------------------------------
# mergea2l
# find exakt position where to insert the a2ml block and call reada2l()
#------------------------------------------------------------------------------
def mergeA2L():

  element = 0
  commentactive = False
  waitforbegin = True
  waitforchara = False
  waitforvarname = False
  waitforvalue = False
  waitforadress = False
  line4 = ""
  varname = ""
  ungerade = False
  offset = 0

  fnewa2l = open(outa2l,'r')

  print("merge A2L")

  for line in fnewa2l:
    line2 = line.strip().split()

    fnewa2lmerge.write(line)

    for pp in line2:
       if pp.startswith("/*"):
         commentactive = True
         #print "<begin comments---",
       if pp.endswith("*/"):
         commentactive = False
         #print "---end comments>"
       elif not commentactive:
         if pp.startswith("/begin"):
           waitforbegin = False
           waitforchara = True
           #print "begin "
           #break
         if pp.startswith("/end"):                                #reset to begin if /end is found
           waitforbegin = True
           waitforchara = False
           waitforvarname = False
         if waitforchara and pp.startswith("A2ML"):
           waitforchara = False
           waitforvarname = True
           line4 = line4 + "".join(str(pp)) + " "
           print("mergepoint : ", pp)
           fnewa2lmerge.write("\n/*********************begin of automated merge***********************/ \n")
           readA2L()
           print("A2ML inserted")
           fnewa2lmerge.write("\n/*********************end of automated merge***********************/ \n")
           #break

  fnewa2l.close()

#------------------------------------------------------------------------------
# mergedata
# find exakt position where to insert the a2ml block and call reada2l()
#------------------------------------------------------------------------------
def mergeDATA():

  element = 0
  commentactive = False
  waitforbegin = True
  waitforchara = False
  waitforvarname = False
  waitforvalue = False
  waitforadress = False
  line4 = ""
  varname = ""
  ungerade = False
  offset = 0

  fnewa2l = open(outa2lmerge + "_tmp",'r')

  print("merge DATA")

  for line in fnewa2l:
    line2 = line.strip().split()

    #fnewa2lmerge.write(line)

    for pp in line2:
       if pp.startswith("/*"):
         commentactive = True
         #print "<begin comments---",
       if pp.endswith("*/"):
         commentactive = False
         #print "---end comments>"
       elif not commentactive:
         if pp.startswith("/end"):
           waitforbegin = False
           waitforchara = True
           #print "begin "
           #break
         if pp.startswith("/begin"):                                #reset to begin if /end is found
           waitforbegin = True
           waitforchara = False
           waitforvarname = False
         if waitforchara and pp.startswith("MODULE"):
           waitforchara = False
           waitforvarname = True
           line4 = line4 + "".join(str(pp)) + " "
           print("mergepoint : ", pp)
           fnewa2lmerge.write("\n/*********************begin of automated merge DATA***********************/ \n")
           readDATA()
           print("DATA inserted")
           fnewa2lmerge.write("\n/*********************end of automated merge DATA***********************/ \n")
           #break
    fnewa2lmerge.write(line)

  fnewa2l.close()

#------------------------------------------------------------------------------
# main
#------------------------------------------------------------------------------
if __name__ == "__main__":

    exitCode = 0

    try:
       #print "main"
       # Read the command arguments
       asca2lfile = sys.argv[1]
       outa2l     = sys.argv[2]
       outa2lmerge = sys.argv[3]
       #print "\narg1 : " , asca2lfile ,"\n"A
       #print "\narg2 : " , outa2l ,"\n"
       #print "\narg3 : " , outa2lmerge ,"\n"
       if len(sys.argv) > 4:
         outlist = sys.argv[4]
         foutlist = open(outlist, 'w')
       else:
         foutlist = None

       fnewa2lmerge = open(outa2lmerge + "_tmp",'w')

       mergeA2L()

       fnewa2lmerge.close()

       fnewa2lmerge = open(outa2lmerge,'w')

       mergeDATA()

       fnewa2lmerge.close()

       print("merge done\n")

    except Exception as e:
        print("Error %s" % e)
        exitCode = -1
    #print "End main"
    sys.exit(exitCode)
