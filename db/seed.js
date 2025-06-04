import db from "#db/client";
import { createEmployee } from "#db/queries/employees";
import { faker } from "@faker-js/faker";

await db.connect();
await seedEmployees();
await db.end();
console.log("🌱 Database seeded.");

async function seedEmployees() {
  for (let i = 0; i < 10; i++) {
    const employee = {
      name: faker.person.fullName(),
      birthday: faker.date.birthdate({ min: 18, max: 65, mode: "age" }),
      salary: faker.number.int({ min: 30000, max: 100000 }),
    };
    await createEmployee(employee);
  }
  // TODO-done
  console.log("✅ Employees seeded.");
}
