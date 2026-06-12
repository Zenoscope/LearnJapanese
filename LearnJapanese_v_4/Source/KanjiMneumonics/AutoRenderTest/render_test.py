import subprocess
import pdb

def run_program(count,file_counter):
        # exec_string = "cp 'keep_change.xml' 'keep_change" + str(count) + ".xml'"
        # print(exec_string)

        if file_counter < 10:
            padding = "000"
        elif file_counter < 100:
            padding = "00"
        else: padding = "0"

        outputString = "--output-file=output" + padding + str(file_counter) + ".gif"
        subprocess.run(["synfig", "test.sif", "--width=300","--height=300",outputString ,"--quiet"])
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

            # Write modified file
            with open(filename, "w") as f:
                f.writelines(lines)

            # Run program here
            file_counter = run_program(count,file_counter)

            # Restore original line
            lines[i] = original
            count += 1

    # Optionally restore original file on disk
    with open(filename, "w") as f:
        f.writelines(lines)


if __name__ == "__main__":
        process_file("test.sif")
