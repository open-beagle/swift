# Swift

## samples

```bash
# 0.5B
python .beagle\0.5b-chat.py

# 4B
python .beagle\4b-chat.py

# 7B
python .beagle\7b-chat.py

# ENV CHECK
python .beagle\pytorch.py
```

## scores

```txt
# 2060 desktop
# 7b use 10% GPUCore 5.6GB/6GB GPUMEM
0.5b  1.5s
4b    23.6s
7b    113.9s

# 4070 laptop

```

## windows allow ps scripts

```powershell
# https://learn.microsoft.com/zh-cn/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.4
Get-ExecutionPolicy -Scope CurrentUser
Set-ExecutionPolicy -ExecutionPolicy Bypass
```

## python

```powershell
# python 3.12
# https://www.python.org/ftp/python/3.12.2/python-3.12.2-amd64.exe
python -m venv $PWD/.venv

# Virtual Python Environment
pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/

pip install virtualenv

virtualenv --python "C:\Program Files\Python312\python.exe" .venv

.venv\Scripts\activate
```

## pytorch on windows

```powershell
# cuda11.8
# https://developer.nvidia.com/cuda-toolkit-archive

# torch2.2.1
# https://pytorch.org/
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

# add in $PATH
C:\Users\Mengk\AppData\Roaming\Python\Python312\Scripts
```

## install libs

```powershell
# https://modelscope.cn/docs/LLM推理文档

# 设置pip全局镜像
pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/

pip install -e .[llm]

pip install -r requirements/framework.txt  -U

pip install -r requirements/llm.txt  -U
```

## git

<https://github.com/modelscope/swift>

```bash
git remote add upstream git@github.com:modelscope/swift.git

git fetch upstream

git merge v1.6.1
```
