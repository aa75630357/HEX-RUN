HEX-RUN (六角運行)
這是一款以「六角形幾何」為核心視覺與障礙設計的 2D 快速反應遊戲。玩家需要操作角色在不斷變換的六角陣列中生存，挑戰反應極限與操作精準度。

📂 專案核心目錄導覽
本專案遵循 Godot 建議的標準開發架構，確保資源管理與程式碼解耦：

Assets/: 包含所有 Hex 相關的像素美術、粒子特效與 UI 素材。

Scenes/:

GameWorld.tscn: 核心遊戲循環場景。

Menu.tscn: 遊戲主選單與高分紀錄介面。

Scripts/ ⬅️ 【核心邏輯】面試官請點此檢視代碼

HexGenerator.gd: 處理六角形障礙物的隨機生成與模式切換邏輯。

PlayerController.gd: 實現玩家在極高速度下的靈敏移動反應。

GlobalScore.gd: 使用 Singleton（自動載入）處理跨場景的分數儲存與資料讀取。

project.godot: Godot 專案設定檔。

🛠 關鍵技術實現
在 HEX-RUN 的開發過程中，我重點克服了以下技術挑戰：

1. 幾何生成演算法 (Procedural Generation)
實現：開發了一套隨機生成系統，能確保六角形障礙物依照預設的「節奏模式」出現，而非完全隨機。

優化：利用 Godot 的 QueueFree 系統自動清理超出螢幕的物件，維持長時間遊戲下的效能穩定。

2. 精確的幾何碰撞判定
技術：使用 Polygon2D 搭配 CollisionPolygon2D，確保不規則六角形的碰撞範圍與視覺外觀完全一致。

回饋：實作了碰撞瞬間的 Time Freeze（時間凍結）與震動特效，強化玩家失敗時的視覺衝擊感。
