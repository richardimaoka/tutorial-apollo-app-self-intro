export interface ProfileJobTitleComponentProps {
  jobTitle: string;
}

export const ProfileJobTitleComponent = ({
  jobTitle,
}: ProfileJobTitleComponentProps): JSX.Element => {
  return (
    <div style={{ color: "#777777", marginBottom: "10px" }}>{jobTitle}</div>
  );
};
