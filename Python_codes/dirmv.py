import os
import shutil
import filecmp

dst = 'backup'
if not os.path.isdir(dst):
    os.makedirs(dst)

shutil.move('dir4/', dst, copy_function=shutil.copy2)

# shutil.copy2('dir1', 'dir4')