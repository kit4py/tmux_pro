import shutil
import os

# Specify the file path with ~
file = ".tmux.conf"
file2 = "~/"

# Expand the ~ to the full home directory path
source_file = os.path.expanduser(file)
destination_directory = os.path.expanduser(file2)

# Use shutil.move to move the file
shutil.copy(source_file, destination_directory)
