import puppeteer from "puppeteer";

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto(
    "file:///home/richardimaoka/ghq/src/github.com/richardimaoka/tutorial-apollo-app-self-intro/index.html"
  );
  await page.screenshot({ path: "screenshots/example.png" });

  await browser.close();
})();
