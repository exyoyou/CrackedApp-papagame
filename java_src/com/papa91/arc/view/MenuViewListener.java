package com.papa91.arc.view;

/* JADX INFO: loaded from: classes2.dex */
public interface MenuViewListener {
    boolean IsHapticFeedbackEnable();

    boolean IsSoundEnable();

    void exit();

    void exitEndGame(boolean z10);

    void forum();

    void gameOnPause();

    void gameOnResume();

    boolean getChangeDiskState();

    String getEndGameDesc();

    int getEndGameLimitTime();

    String getEndGameScore(int i10);

    int getGamePlayTime();

    int getMiniRankTime();

    void getPassRewardPoint();

    boolean isEndGame();

    boolean isRankAutoUpload();

    boolean isRankGame();

    boolean isShowAchievementIcon();

    boolean isShowCheating();

    boolean isShowGate();

    boolean isShowOnekey();

    boolean isShowQuickSlot();

    void keysSetting();

    boolean needShowBottomBar();

    boolean needShowTimer();

    void onAdImageClick();

    void onChangeDisk();

    void onHideMenu();

    void onRankFinish(int i10);

    void onScreenShot();

    void onTimerTick(long j10);

    void playVideoForReward();

    void quickSlot();

    void reload();

    void restartEndGame();

    void saveGameConfig();

    void showAchievementDialog(int i10);

    void showMenuCheating();

    void showMenuGate();

    void showMenuOnekey();

    void showMenuPerformance();

    void showMenuSlot();

    void showReceivePointDialog();

    void showTimeLimitedDialog1();

    void showTimeLimitedDialog2();

    void startEndGame();

    void vibrate(boolean z10);

    void voice(boolean z10);
}
