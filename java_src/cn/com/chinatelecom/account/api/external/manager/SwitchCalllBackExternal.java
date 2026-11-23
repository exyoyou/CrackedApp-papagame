package cn.com.chinatelecom.account.api.external.manager;

import android.net.Network;

/* JADX INFO: loaded from: classes7.dex */
public interface SwitchCalllBackExternal {
    void onSwitchError(long j10);

    void onSwitchSuccess(Network network, long j10);

    void onSwitchTimeout();
}
