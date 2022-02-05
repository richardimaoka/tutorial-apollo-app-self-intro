function App() {
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
            <img
              width="160px"
              height="160px"
              style={{ borderRadius: "50%" }}
              src="http://localhost:8080/images/profile.jpg"
            />
          </div>
          <div style={{ fontSize: "24px", fontWeight: "bold" }}>
            リチャード 伊真岡
          </div>
          <div>中堅エンジニア</div>
          <div style={{ color: "#777777", marginBottom: "10px" }}>
            熊本県 キャリフォルニア市
          </div>
          <div>
            中堅エンジニアのリチャード・伊真岡です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。
          </div>
        </div>
      </div>
    </main>
  );
}

export default App;
