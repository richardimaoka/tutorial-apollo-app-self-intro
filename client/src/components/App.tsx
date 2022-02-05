import { ProfileComponent, ProfileComponentProps } from "./ProfileComponent";

export const App = (): JSX.Element => {
  const profile: ProfileComponentProps = {
    imgSrc: "http://localhost:8080/images/profile.jpg",
    jobTitle: "中堅エンジニア",
    name: "リチャード 伊真岡",
    residence: "東京都 南アザラシ区 ペンギン町",
    description:
      "中堅エンジニアのリチャード・伊真岡です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。",
  };
  return (
    <main>
      <div style={{ width: "780px", margin: "0 auto" }}>
        <ProfileComponent
          imgSrc={profile.imgSrc}
          jobTitle={profile.jobTitle}
          name={profile.name}
          residence={profile.residence}
          description={profile.description}
        />
      </div>
    </main>
  );
};
