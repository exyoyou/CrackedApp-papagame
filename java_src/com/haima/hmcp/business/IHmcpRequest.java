package com.haima.hmcp.business;

import android.os.Bundle;
import com.haima.hmcp.beans.GameStreamingType;
import com.haima.hmcp.beans.IntentExtraData;
import com.haima.hmcp.beans.InternalJoinBattle;
import com.haima.hmcp.beans.UserInfo;
import com.haima.hmcp.listeners.OnConfigListener;
import com.haima.hmcp.listeners.OnGameStreamingTypeListener;
import com.haima.hmcp.listeners.OnInitCallBackListener;
import com.haima.hmcp.listeners.OnJoinBattleListener;

/* JADX INFO: loaded from: classes5.dex */
public interface IHmcpRequest {
    void clearCloudId();

    void connect2Access(int i10, boolean z10);

    String getCloudId();

    void getCloudService(int i10, int i11, boolean z10);

    void getConfigure(String str, OnConfigListener onConfigListener);

    void getDeviceId(OnInitCallBackListener onInitCallBackListener);

    void getExtraConfigure(String str, OnConfigListener onConfigListener);

    void getJoinBattle(boolean z10, InternalJoinBattle internalJoinBattle, OnJoinBattleListener onJoinBattleListener);

    void getStreamingType(GameStreamingType gameStreamingType, OnGameStreamingTypeListener onGameStreamingTypeListener);

    boolean getTransferOpen();

    void isAllowConnect2Access(boolean z10);

    void requestData(Bundle bundle);

    void setConfigInfo(String str);

    void setExtraData(IntentExtraData intentExtraData);

    void setResolutionID(String str);

    void setUserInfo(UserInfo userInfo);

    void stopCloudService();

    void switchResolution(String str, int i10, int i11);
}
