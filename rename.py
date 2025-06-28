import os

folder_path = '/Users/fs/Documents/DA/California SaaS Startup Growth & Funding Analysis/screenshots/new'

for filename in os.listdir(folder_path):
    old_file = os.path.join(folder_path, filename)
    new_file = os.path.join(folder_path, filename.replace('-', '_').replace(' ', '_').lower())
    os.rename(old_file, new_file)
    print(f'Renamed: {old_file} -> {new_file}')
