mkdir py312
cd py312
uv venv --python=3.12
uv pip install pip           # install pip3
source .venv/bin/activate
pip3 install pip --upgrade   # install pip

# Running without activating
uv run cli_tools/run.py --tag calendar

# pip
uv pip install -e .

# Sync
uv sync

# active
Append --active if you are already in the venv
uv sync --active
uv run --active pre-commit install
