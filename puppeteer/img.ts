import puppeteer from "puppeteer";

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto("http://localhost:8080/index.html");
  const imgUrl = await page.$eval("img", (el) => el.getAttribute("src"));
  console.log(imgUrl);
})();
