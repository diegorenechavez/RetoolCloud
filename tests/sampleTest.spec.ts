import { expect, test } from '@playwright/test';
import dotenv from "dotenv";

dotenv.config();

test.describe("User Management", () => {
  test("opens the app and checks welcome text", async ({ page }) => {
    await page.goto("https://diegochavez.retool.com/auth/login");

    await page
      .getByPlaceholder("name@company.com")
      .fill(`${process.env.PLAYWRIGHT_USERNAME}`, { timeout: 10000 });

    await page
      .getByPlaceholder("Password")
      .fill(`${process.env.PLAYWRIGHT_PASSWORD}`, { timeout: 10000 });

    await page.getByText(/^Sign in$/).click();
    await page.getByRole('link', { name: 'Apps' }).click();

    await page.goto(
      "https://diegochavez.retool.com/apps/8fddac04-e754-11ef-aedb-fb2a505086cc/List%20View/defaultPage",
      { timeout: 100000 }
    );

    await page
    .getByPlaceholder("Search by name")
    .fill("eva", { timeout: 5000 });

    page.pause()

    const gridContainer = page.getByTestId("RetoolGrid:listView1");
    await page.pause()
    await expect(gridContainer.getByRole("heading")).toHaveCount(2);
    await page.pause()
    await expect(gridContainer).toContainText("Eva Noyce");
    await page.pause()
    await expect(gridContainer).toContainText("Eva Lu Ator");
  });
});
