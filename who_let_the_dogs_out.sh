#Go through the number of puppy pic files and open them up individually

#The range in {} can be modified to accomodate however many images the zip file contains

#NOTE: currently, in order for the files to be opened by this script, they must
#      1) Have a title of a number 
#          WORKS: 0.jpg
#          DOESN'T WORK: puppy.jpg
#      2) Have an extension of .jpg

#This limitation can be fixed by changing the for loop to look for a specifig Regular Expression
#I may implement this feature in the future

#create a flag so that a the full screen operation happens only once
run=true

for i in {1..18}
do

  #open the image file
   open -a Preview ~/Documents/Private/unimportant/strange/how/odd/why/are/you/still/looking/here/$i.jpg; 
  #pause for 1.5 second
  sleep 1.5;

  #full screen the picture after it has been opened
  #this operation should only happen once; hence the $run flag
  if [ $run = true ]; then
    echo expression evaluated as true
    /usr/bin/osascript -e 'tell application "Preview"' -e "activate" -e 'tell application "System Events"' -e 'keystroke "f" using {control down, command down}' -e "end tell" -e "end tell";
   sleep .3;
   run=false
  fi

done
