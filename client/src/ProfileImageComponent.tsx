export interface ProfileImageComponentProps {
  src: string;
}

export const ProfileImageComponent = ({
  src,
}: ProfileImageComponentProps): JSX.Element => {
  return (
    <img
      width="160px"
      height="160px"
      style={{ borderRadius: "50%" }}
      src={src}
    />
  );
};
