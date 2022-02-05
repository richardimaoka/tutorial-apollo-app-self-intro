import { gql, useQuery } from "@apollo/client";
import { ProfileComponent, ProfileComponentProps } from "./ProfileComponent";

interface Profile {
  imgSrc: string;
  name: string;
  residence: string;
  jobTitle: string;
  description: string;
}

interface QueryData {
  me: Profile;
}

export const MainComponent = (): JSX.Element => {
  const { loading, error, data } = useQuery<QueryData>(gql`
    {
      me {
        imgSrc
        name
        residence
        jobTitle
        description
      }
    }
  `);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error :(</p>;
  if (!data) {
    return <p>Empty data</p>;
  } else {
    console.log("non empty data", data);
    return (
      <main>
        <div style={{ width: "780px", margin: "0 auto" }}>
          <ProfileComponent
            imgSrc={data.me.imgSrc}
            name={data.me.name}
            jobTitle={data.me.jobTitle}
            residence={data.me.residence}
            description={data.me.description}
          />
        </div>
      </main>
    );
  }
};
