import { ApolloServer, gql } from "apollo-server";

const typeDefs = gql`
  type Query {
    me: Profile
  }

  type Profile {
    imgSrc: String
    name: String
    residence: String
    jobTitle: String
    description: String
  }
`;

interface Profile {
  imgSrc: string;
  name: string;
  residence: string;
  jobTitle: string;
  description: string;
}

const resolvers = {
  Query: {
    me(parent: any, args: any, context: any, info: any): Profile {
      return {
        imgSrc: "http://localhost:8080/images/profile.jpg",
        name: "リチャード 伊真岡",
        jobTitle: "中堅エンジニア",
        residence: "東京都 南アザラシ区 ペンギン町",
        description:
          "中堅エンジニアのリチャード・伊真岡です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。",
      };
    },
  },
};

const server = new ApolloServer({
  typeDefs,
  resolvers,
});

// The `listen` method launches a web server.
server.listen().then(({ url }) => {
  console.log(`🚀  Server ready at ${url}`);
});
