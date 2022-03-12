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

const InnerComponent = (): JSX.Element => {
  const { loading, error, data } = useQuery<QueryData>(gql`
    {
      me {
        imgSrc
        name
        residence
        jobTitle
        descriptiosn
     
    }
  `);

  if (loading) {
    return <LoadingSpinnerComponent />;
  } else if (error) {
    return <ErrorComponent errorMessage={error.message} />;
  } else if (!data) {
    return (
      <ErrorComponent errorMessage={"サーバーから空データが取得されました"} />
    );
  } else {
    return (
      <ProfileComponent
        imgSrc={data.me.imgSrc}
        name={data.me.name}
        jobTitle={data.me.jobTitle}
        residence={data.me.residence}
        description={data.me.description}
      />
    );
  }
};

export const MainComponent = (): JSX.Element => {
  return (
    <main>
      <div style={{ width: "780px", margin: "0 auto" }}>
        <InnerComponent />
      </div>
    </main>
  );
};
