jobs:
  my-job:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Set up Node.js
        uses: actions/setup-node@v3
        with:
          node-version: 18

      - name: Install dependencies
        run: npm install

      - name: Set up Chrome
        uses: browser-actions/setup-chrome@v1
        with:
          chrome-version: 120 # Or any other supported version

      - name: Run Puppeteer tests
        run: npm run test
