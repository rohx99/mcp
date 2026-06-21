import { z } from "zod";
import User from "../models/users.model.js";

const UserModel = User();

export const tools = {
  createUser: {
    name: "create_user",
    description:
      "Create a new user with name, email, and optional date of birth.",
    schema: {
      name: z.string().describe("Full name of the user"),
      email: z.string().email().describe("Unique email address"),
      dob: z.string().optional().describe("Date of birth, YYYY-MM-DD"),
    },
    handler: async ({ name, email, dob }) => {
      try {
        const user = await UserModel.create({ name, email, dob });
        return {
          content: [{ type: "text", text: JSON.stringify(user, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  findAllUsers: {
    name: "find_all_users",
    description: "Retrieve a list of all users.",
    schema: {},
    handler: async () => {
      try {
        const users = await UserModel.findAll();
        return {
          content: [{ type: "text", text: JSON.stringify(users, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  findUserById: {
    name: "find_user_by_id",
    description: "Find a single user by their numeric ID.",
    schema: { id: z.number().int().describe("The user's ID") },
    handler: async ({ id }) => {
      try {
        const user = await UserModel.findByPk(id);
        if (!user)
          return {
            content: [{ type: "text", text: "User not found" }],
            isError: true,
          };
        return {
          content: [{ type: "text", text: JSON.stringify(user, null, 2) }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  updateUser: {
    name: "update_user",
    description: "Update an existing user's fields by ID.",
    schema: {
      id: z.number().int(),
      name: z.string().optional(),
      email: z.string().email().optional(),
      dob: z.string().optional(),
    },
    handler: async ({ id, ...fields }) => {
      try {
        const [updated] = await UserModel.update(fields, { where: { id } });
        if (!updated)
          return {
            content: [{ type: "text", text: "User not found" }],
            isError: true,
          };
        const updatedUser = await UserModel.findByPk(id);
        return {
          content: [
            { type: "text", text: JSON.stringify(updatedUser, null, 2) },
          ],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },

  deleteUser: {
    name: "delete_user",
    description: "Delete a user by ID.",
    schema: { id: z.number().int() },
    handler: async ({ id }) => {
      try {
        const deleted = await UserModel.destroy({ where: { id } });
        if (!deleted)
          return {
            content: [{ type: "text", text: "User not found" }],
            isError: true,
          };
        return {
          content: [{ type: "text", text: `User ${id} deleted successfully` }],
        };
      } catch (err) {
        return {
          content: [{ type: "text", text: `Error: ${err.message}` }],
          isError: true,
        };
      }
    },
  },
};
