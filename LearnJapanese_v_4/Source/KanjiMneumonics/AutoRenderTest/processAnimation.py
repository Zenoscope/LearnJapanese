#import panda
# open the sif file as an xml file
#import xml.etree.ElementTree as ET

#
# processAnimation.py
#
# Render groups as separate animations (gifs etc)
#
# 1) read the whole file into memory.
# 2) change all of the marked lines to active="false"
# <layer type="group" active="true" exclude_from_rendering="false" version="0.3" desc="p_Country">
# 3) Loop though again.
# 4) at the first matching line, change from false to true.
# 5) Save the file
# 6) run the renderer
# 7) Change the line back to false
# 8) Find the next line




import fileinput
import subprocess

#def parseXML(xmlFile):

#    for layer in root.findall
        # base tag is <canvas>
        # <layer type="group" active="false" exclude_from_rendering="false" version="0.3" desc="p_Kanji 2">
        #if layer.tag == "desc"

infile = open("test.sif","rt")
outfile = open("test-out.sif","wt")

file_counter = 0
line_counter = 0
# for line in fileinput.input("test.sif"):

with open("test.sif", 'rt') as fp:
        infile = fp.readlines()
        print('Total Number of lines:', len(infile))

        for line in infile:
                #print(line)
                # if line.contains("desc=\"p_"):
                if "desc=\"p_" in line:
                        # <layer type="group" active="true" exclude_from_rendering="false" version="0.3" desc="p_Country">

                        newLine = line[line_counter].replace("active=\"false\"" , "active=\"true\"")
                        print("old line ", line)
                        print("new line", newLine)

                        # match = re.search(line[line_counter],"_")
                        # print("start index" , match.start())
                        # string.index(search)

                        # render the file

                        if file_counter < 10:
                                padding = "000"
                        elif file_counter < 100:
                                padding = "00"
                        else: padding = "0"

                        outputString = "--output-file=output" + padding + str(file_counter) + ".gif"
                        subprocess.run(["synfig", "test-out.sif", "--width=300","--height=300",outputString ,"--quiet"])
                        file_counter+=1

                        # change the line back
                        newLine = line.replace("active=\"true\"" , "active=\"false\"")

                        # write out the rest of the file
                        for lines[line_counter + 1] in infile
                                writelines(line)

                # if the line doesn't match
                else:
                        outfile.write(line)
                        outfile.write(line)

                line_counter += 1
