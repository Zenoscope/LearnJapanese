
# use grep to find all of the appropriate lines and put them in an arrray:

# <layer type="group" active="false" exclude_from_rendering="false" version="0.3" desc="p_Kanji 2">

#array=${grep "desc=\"p_" Synfig_Animation_1}

#readarray -d '' -t my_array < <(grep --null -l "desc=\"p_" Synfig_Animation_1)

#echo ${my_array[0]}

# read into the array

echo time >

array=()
while read line; do
    array+=( "$line" )
done < <(grep "desc=\"p_" Synfig_Animation_1)

counter=0
for item in ${array[@]}; do
    # sed change line
    echo ${array[$counter]} | sed 's/exclude_from_rendering="false"/exclude_from_rendering="true"/g' Synfig_Animation_1 Synfig_Animation_2
    ((counter++))
done

: '
counter=0
for item in ${array[@]}; do
    # echo "$item"
    # sed change line
    # sed 's/exclude_from_rendering="false"/exclude_from_rendering="true"/$counter' Synfig_Animation_2 > Synfig_Animation_2
    # synfig render file
    outputCounter=$counter
    if [counter -lt 10]; then padding="000"
    elif [$counter -lt 100]; then padding="00"
    else padding="0"

    outputCounter=$counter+$padding

    echo synfig -t mpeg4 -w 300 -h 300 -o outputfilename+$outputCounter
    echo ffmpeg -i outputfilename+$outputCounter.mp4 outputfilename+$outputCounter.gif
    ((counter++))
    echo $counter
done

synfig -t mpeg4 -w 300 -h 300 -o outputfilename

ffmpeg -i cat.mp4 cat.gif
# '
