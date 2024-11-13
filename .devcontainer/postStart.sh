pwd
git config --global user.email 'kunalpathak13@gmail.com'
pip3 install -r ./.devcontainer/requirements.txt
python ./.devcontainer/test.py

# python3 -m venv katas_venv
# source katas_venv/bin/activate
# pip install -r .devcontainer/requirements.txt
# pip list
# pip freeze > requirements.txt
# sudo pip uninstall -r requirements.txt -y
