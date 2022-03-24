import puppeteer from "puppeteer";
import path from "path";

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto("http://localhost:3000");
  await page.screenshot({ path: "screenshots/step2-2.screenshot.png" });

  await browser.close();
})();
