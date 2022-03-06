export interface ProfileResidenceComponentProps {
  residence: string;
}

export const ProfileResidenceComponent = ({
  residence,
}: ProfileResidenceComponentProps): JSX.Element => {
  return (
    <div style={{ color: "#777777", marginBottom: "10px" }}>{residence}</div>
  );
};
