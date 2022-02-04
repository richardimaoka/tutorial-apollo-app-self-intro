import { ApolloServer, gql } from "apollo-server";
import * as fs from "fs";

const typeDefs = gql`
  type Query {
    me: Profile
  }

  type Profile {
    name: String
    hometown: String
    jobTitle: String
    description: String
  }
`;

interface Book {
  title: string;
  author: string;
}

const resolvers = {
  Query: {
    me(parent: any, args: any, context: any, info: any): string {
      return context;
    },
  },
};

const server = new ApolloServer({
  typeDefs,
  resolvers,
  context: async ({ req }: any) => {
    try {
      const jsonDataFile = __dirname.concat("/data.json");
      const fileContent = await fs.promises.readFile(jsonDataFile, "utf8");
      const jsonData = JSON.parse(fileContent);
      return jsonData;
    } catch (err) {
      console.log("***ERROR OCURRED***");
      console.log(err);
      throw new Error("internal error happened!!");
    }
  },
});

// The `listen` method launches a web server.
server.listen().then(({ url }) => {
  console.log(`🚀  Server ready at ${url}`);
});
