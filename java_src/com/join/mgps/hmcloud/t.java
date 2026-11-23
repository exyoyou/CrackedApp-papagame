package com.join.mgps.hmcloud;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public interface t {
    void onChangeUiState(HMCloudGameManager.GAME_UI_STATE state, Bundle extra);

    void onFinishGame();

    void onReload();

    void onRestUI();

    void onUpdateProgress(HMCloudGameManager.GAME_UI_STATE state, int progress);
}
