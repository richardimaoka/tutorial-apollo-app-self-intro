import { ProfileComponent } from "./ProfileComponent";

export const MainComponent = (): JSX.Element => {
  const profile = {
    imgSrc: "http://localhost:8080/images/profile.png",
    name: "エメラルド 君沢",
    jobTitle: "データベース エンジニア",
    residence: "東京都 南アザラシ区 ペンギン町",
    description:
      " データベース エンジニアのエメラルド 君沢です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。",
  };

  return (
    <main>
      <div style={{ width: "780px", margin: "0 auto" }}>
        <ProfileComponent
          imgSrc={profile.imgSrc}
          name={profile.name}
          jobTitle={profile.jobTitle}
          residence={profile.residence}
          description={profile.description}
        />
      </div>
    </main>
  );
};
