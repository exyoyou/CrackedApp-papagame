package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.InternalJoinBattle;
import com.haima.hmcp.beans.JoinBattle;

/* JADX INFO: loaded from: classes5.dex */
public interface TvBattleModelListener {
    boolean hasUserInfo();

    boolean isBackground();

    boolean onEvent(String str);

    void onInitData(JoinBattle joinBattle);

    boolean onKeyboardInputState();

    void onPutDownEventMap(String str, String str2);

    void onRelease(String str);

    void onRemoveDownEventMap(String str, String str2);

    void onSceneChangedMessage(String str, String str2);

    void requestJoinBattle(InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener);

    void setInputType(int i10);
}
