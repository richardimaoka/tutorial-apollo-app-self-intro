import { ProfileDescriptionComponent } from "./ProfileDescriptionComponent";
import { ProfileImageComponent } from "./ProfileImageComponent";
import { ProfileNameComponent } from "./ProfileNameComponent";
import { ProfileResidenceComponent } from "./ProfileResidenceComponent";

export const App = (): JSX.Element => {
  return (
    <main>
      <div style={{ width: "780px" }}>
        <div style={{ position: "relative" }}>
          <div
            style={{
              height: "195px",
              backgroundColor: "#27a603",
              borderTopLeftRadius: "20px",
              borderTopRightRadius: "20px",
            }}
          ></div>
        </div>
        <div
          style={{
            borderBottomLeftRadius: "20px",
            borderBottomRightRadius: "20px",
            padding: "24px",
            backgroundColor: "#fdfdfd",
          }}
        >
          <div
            style={{
              position: "relative",
              marginTop: "-120px",
            }}
          >
            <ProfileImageComponent src="http://localhost:8080/images/profile.jpg" />
          </div>
          <div>中堅エンジニア</div>
          <ProfileNameComponent name="リチャード 伊真岡" />
          <ProfileResidenceComponent residence="東京都 南アザラシ区 ペンギン町" />
          <ProfileDescriptionComponent description="中堅エンジニアのリチャード・伊真岡です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。" />
        </div>
      </div>
    </main>
  );
};
