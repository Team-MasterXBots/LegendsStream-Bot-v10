echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Team-MasterXBots/LegendsStream-Bot-v10 /LegendsStream-Bot-v10
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Team-MasterXBots/LegendsStream-Bot-v10 -b $BRANCH /LegendsStream-Bot-v10
fi
cd /LegendsStream-Bot-v10
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
