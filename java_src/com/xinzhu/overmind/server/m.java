package com.xinzhu.overmind.server;

import android.os.HandlerThread;

/* JADX INFO: loaded from: classes8.dex */
public class m extends HandlerThread {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f89703c = "ServiceThread";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f89704b;

    public m(String str, int i10, boolean z10) {
        super(str, i10);
        this.f89704b = z10;
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
    }
}
