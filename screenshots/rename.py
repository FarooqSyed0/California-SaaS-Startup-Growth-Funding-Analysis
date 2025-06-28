import os

folder_path = './screenshots'
files = os.listdir(folder_path)

for filename in files:
    new_name = filename.replace('-', '_')
    if new_name.endswith('.jpeg'):
        new_name = new_name[:-5] + '.png'
    if new_name != filename:
        os.rename(os.path.join(folder_path, filename), os.path.join(folder_path, new_name))
        print(f'Renamed: {filename} -> {new_name}')
    else:
        print(f'No change: {filename}')
