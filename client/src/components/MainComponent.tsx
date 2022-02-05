import { ProfileComponent, ProfileComponentProps } from "./ProfileComponent";

export interface MainComponentProps {
  profile: ProfileComponentProps;
}

export const MainComponent = ({ profile }: MainComponentProps): JSX.Element => {
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
