import subprocess
import pdb

def run_program(count,file_counter,name):
        #exec_string = "cp '" + process_this_file + "' 'keep_" + name + str(count) + ".xml'"
        #print(exec_string)

        #if file_counter < 10:
        #    padding = "000"
        #elif file_counter < 100:
        #    padding = "00"
        #else: padding = "0"

        # outputString = "--output-file=output_" + name + padding + str(file_counter) + ".gif"
        outputString = "--output-file=output_" + name + ".gif"
        print("Generating ", outputString)
        subprocess.run(["synfig", process_this_file , "--width=300","--height=300",outputString ,"--quiet"])
        file_counter += 1

        return file_counter
        # subprocess.call(exec_string, shell = True)

def process_file(filename):
    # pdb.set_trace()
    with open(filename, "r") as f:
        lines = f.readlines()

    file_counter = 0
    count = 0
    for i, line in enumerate(lines):
        if "desc=\"p_" in line:
            print(f"Processing line {i}")
            # Save original
            original = lines[i]

            # Modify just this line
            lines[i] = line.replace("active=\"false\"" , "active=\"true\"")

            name_start = line.find("p_")
            name_end = line.find("\">",name_start,20) # 20 characters to look file_counter
            name = line[name_start:name_end - 2]

            # Write modified file
            with open(filename, "w") as f:
                f.writelines(lines)

            # Run program here
            file_counter = run_program(count,file_counter,name)

            # Restore original line
            lines[i] = original
            count += 1

    # Optionally restore original file on disk
    with open(filename, "w") as f:
        f.writelines(lines)

process_this_file = "Synfig_Animation_1.sif"

if __name__ == "__main__":

        # create a bunch of gifs for the ones which aren't finished.
        # create files for the ones which are finished.
        process_file(process_this_file)

