import { gql, useQuery } from "@apollo/client";
import { ProfileComponent } from "./ProfileComponent";
import { LoadingSpinnerComponent } from "./LoadingSpinnerComponent";

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
        <div
          style={{
            height: "195px",
            backgroundColor: "#b93434",
            borderTopLeftRadius: "20px",
            borderTopRightRadius: "20px",
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <p style={{ color: "#ffffff" }}>
            エラー: サーバーからのデータ取得に失敗しました
          </p>
        </div>
        <div
          style={{
            height: "100px",
            borderBottomLeftRadius: "20px",
            borderBottomRightRadius: "20px",
            backgroundColor: "#fdfdfd",
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <p>{error.message}</p>
        </div>
      </div>
    );
  } else if (!data) {
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
