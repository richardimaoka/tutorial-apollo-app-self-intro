export interface ProfileNameComponentProps {
  name: string;
}

export const ProfileNameComponent = ({
  name,
}: ProfileNameComponentProps): JSX.Element => {
  return <div style={{ fontSize: "24px", fontWeight: "bold" }}>{name}</div>;
};
