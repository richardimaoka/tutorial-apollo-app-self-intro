import { ProfileDescriptionComponent } from "./ProfileDescriptionComponent";
import { ProfileUpperBackgroundComponent } from "./ProfileUpperBackgroundComponent";
import { ProfileJobTitleComponent } from "./ProfileJobTitleComponent";
import { ProfileImageComponent } from "./ProfileImageComponent";
import { ProfileNameComponent } from "./ProfileNameComponent";
import { ProfileResidenceComponent } from "./ProfileResidenceComponent";

export interface ProfileComponentProps {
  imgSrc: string;
  name: string;
  jobTitle: string;
  residence: string;
  description: string;
}

export const ProfileComponent = ({
  imgSrc,
  name,
  jobTitle,
  residence,
  description,
}: ProfileComponentProps): JSX.Element => {
  return (
    <div>
      <ProfileUpperBackgroundComponent />
      <div
        style={{
          position: "relative",
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
        <ProfileJobTitleComponent jobTitle="中堅エンジニア" />
        <ProfileNameComponent name="リチャード 伊真岡" />
        <ProfileResidenceComponent residence="東京都 南アザラシ区 ペンギン町" />
        <ProfileDescriptionComponent description="中堅エンジニアのリチャード・伊真岡です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。" />
      </div>
    </div>
  );
};
