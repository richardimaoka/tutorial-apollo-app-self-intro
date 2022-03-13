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
          <ProfileImageComponent src={imgSrc} />
        </div>
        <ProfileNameComponent name={name} />
        <ProfileJobTitleComponent jobTitle={jobTitle} />
        <ProfileResidenceComponent residence={residence} />
        <ProfileDescriptionComponent description={description} />
      </div>
    </div>
  );
};
