@echo off

cd /d %~dp0

start jupyter notebook --NotebookApp.token='' --NotebookApp.password=''

timeout /t 8 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\__init__.ipynb"

timeout /t 3 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\model_api.ipynb"

timeout /t 3 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\models_ipynb\BlurModel.ipynb"

timeout /t 3 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\models_ipynb\ColoringModel.ipynb"

timeout /t 3 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\models_ipynb\InpaintingModel.ipynb"

timeout /t 3 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\models_ipynb\model.ipynb"

timeout /t 3 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\models_ipynb\ScratchModel.ipynb"

timeout /t 3 /nobreak > nul
start jupyter notebook "models\Backup_models_and_codes\IPYNBs\models_ipynb\SmudgeModel.ipynb"
