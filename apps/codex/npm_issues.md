1. cannot remove this file
 3115 sudo rm /Users/frankliu/.npm/_cacache/content-v2/sha512/d5/9d/edb89b1e3df42f0442e64d3dc3a739b81a17909f4b781fc46d7599d8541763d6f0361e2e9e182ace1d7c4f49f5d1283ad267856f00b710999a45998b1a1c

2. force does not work
 3116  npm i -g @openai/codex --force

3. cache clean does not work
 3117  npm cache clean --force

4. change owner
 3118  sudo chown -R 501:20 "/Users/frankliu/.npm"
 3119  npm cache clean --force
 3120  npm i -g @openai/codex

