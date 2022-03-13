export interface ErrorComponentProps {
  errorMessage: string;
}

export const ErrorComponent = ({
  errorMessage,
}: ErrorComponentProps): JSX.Element => {
  return (
    <>
      <div
        style={{
          height: "195px",
          backgroundColor: "#b93434",
          borderTopLeftRadius: "20px",
          borderTopRightRadius: "20px",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <p style={{ color: "#ffffff" }}>
          エラー: サーバーからのデータ取得に失敗しました
        </p>
      </div>
      <div
        style={{
          height: "100px",
          borderBottomLeftRadius: "20px",
          borderBottomRightRadius: "20px",
          backgroundColor: "#fdfdfd",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <p>{errorMessage}</p>
      </div>
    </>
  );
};
