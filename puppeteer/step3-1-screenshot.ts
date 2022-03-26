import puppeteer from "puppeteer";
import path from "path";

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto("http://localhost:4000");
  await page.waitForSelector("aria/Query your server");
  await page.click("aria/Query your server");
  await page.waitForNavigation({ waitUntil: "domcontentloaded" });
  await page.screenshot({ path: "screenshots/step3-1.screenshot.png" });

  await browser.close();
})();
