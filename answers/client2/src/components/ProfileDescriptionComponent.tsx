export interface ProfileDescriptionComponentProps {
  description: string;
}

export const ProfileDescriptionComponent = ({
  description,
}: ProfileDescriptionComponentProps): JSX.Element => {
  return <div>{description}</div>;
};
