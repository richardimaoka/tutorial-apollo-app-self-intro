import { gql, useQuery } from "@apollo/client";
import { ProfileComponent } from "./ProfileComponent";
import { LoadingSpinnerComponent } from "./LoadingSpinnerComponent";
import { ErrorComponent } from "./ErrorComponent";

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
        descriptions
      }
    }
  `);

  if (loading) {
    return (
      <div style={{ width: "780px", margin: "0 auto" }}>
        <LoadingSpinnerComponent />
      </div>
    );
  } else if (error) {
    return (
      <div style={{ width: "780px", margin: "0 auto" }}>
        <ErrorComponent errorMessage={error.message} />
      </div>
    );
  } else if (!data) {
    return (
      <div style={{ width: "780px", margin: "0 auto" }}>
        <ErrorComponent errorMessage={"サーバーから空データが取得されました"} />
      </div>
    );
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
