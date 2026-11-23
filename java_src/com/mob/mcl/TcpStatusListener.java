package com.mob.mcl;

import com.mob.tools.proguard.EverythingKeeper;

/* JADX INFO: loaded from: classes2.dex */
public interface TcpStatusListener extends EverythingKeeper {
    void onStatus(TcpStatus tcpStatus);
}
