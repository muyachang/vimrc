import re
import shutil
import tempfile
import urllib.request
import zipfile
from io import BytesIO
from os import path

# --- Globals ----------------------------------------------
PLUGINS = """
ack.vim https://github.com/mileszs/ack.vim.git
ale https://github.com/dense-analysis/ale
auto-pairs https://github.com/jiangmiao/auto-pairs
bufexplorer https://github.com/jlanzarotta/bufexplorer
copilot.vim https://github.com/github/copilot.vim
ctrlp.vim https://github.com/ctrlpvim/ctrlp.vim
lightline.vim https://github.com/itchyny/lightline.vim
lightline-ale https://github.com/maximbaz/lightline-ale
mru.vim https://github.com/vim-scripts/mru.vim
nerdtree https://github.com/preservim/nerdtree
repeat https://github.com/tpope/vim-repeat
rust.vim https://github.com/rust-lang/rust.vim
vim-commentary https://github.com/tpope/vim-commentary
vim-expand-region https://github.com/terryma/vim-expand-region
vim-indent-guides https://github.com/nathanaelkane/vim-indent-guides
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-lastplace https://github.com/farmergreg/vim-lastplace.git
vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors
vim-surround https://github.com/tpope/vim-surround
vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack.git
peaksea https://github.com/vim-scripts/peaksea.git
vim-pyte https://github.com/therubymug/vim-pyte
""".strip()

GITHUB_ZIP = "%s/archive/master.zip"

SOURCE_DIR = path.join(path.dirname(__file__), "pack/forked/start")


def download_extract_replace(plugin_name, zip_path, temp_dir, source_dir):
    # Download and extract file in temp dir
    with urllib.request.urlopen(zip_path) as req:
        zip_f = zipfile.ZipFile(BytesIO(req.read()))
        zip_f.extractall(temp_dir)
        content_disp = req.headers.get("Content-Disposition")

    filename = re.findall("filename=(.+).zip", content_disp)[0]
    plugin_temp_path = path.join(temp_dir, path.join(temp_dir, filename))

    # Remove the current plugin and replace it with the extracted
    plugin_dest_path = path.join(source_dir, plugin_name)

    try:
        shutil.rmtree(plugin_dest_path)
    except OSError:
        pass

    shutil.move(plugin_temp_path, plugin_dest_path)
    print("Updated {0}".format(plugin_name))


def update(plugin):
    name, github_url = plugin.split(" ")
    zip_path = GITHUB_ZIP % github_url
    try:
        download_extract_replace(name, zip_path, temp_directory, SOURCE_DIR)
    except Exception as exp:
        print("Could not update {}. Error was: {}".format(name, str(exp)))


if __name__ == "__main__":
    temp_directory = tempfile.mkdtemp()

    try:
        [update(x) for x in PLUGINS.splitlines()]
    finally:
        shutil.rmtree(temp_directory)
