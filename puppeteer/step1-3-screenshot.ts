import puppeteer from "puppeteer";
import path from "path";

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();

  const indexHtmlPath = path.join(__dirname, "..", "index.html");
  console.log(indexHtmlPath);
  await page.goto("file://" + indexHtmlPath);
  await page.screenshot({ path: "screenshots/step1-3.screenshot.png" });

  await browser.close();
})();
