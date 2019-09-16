#!/usr/bin/env python

import os
from pathlib import Path

# print(os.environ)

secret_key_path = Path("/root/.ssh/id_rsa")
# secret_key_path.parent.mkdir()
secret_key_path.write_text(os.getenv("INPUT_SSH_KEY"))