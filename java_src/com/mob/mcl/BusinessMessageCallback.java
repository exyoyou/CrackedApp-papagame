package com.mob.mcl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BusinessMessageCallback implements BusinessMessageListener {
    public static final int STATUS_NO_RECEIVED = 0;
    public static final int STATUS_RECEIVED = 1;

    public abstract void messageReceived(int i10, int i11, String str, String str2);

    @Override // com.mob.mcl.BusinessMessageListener
    public void messageReceived(int i10, String str, String str2) {
    }
}
