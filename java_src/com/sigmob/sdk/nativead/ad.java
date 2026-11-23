package com.sigmob.sdk.nativead;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes3.dex */
public class ad extends Handler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f81367b = 87108;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f81368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f81369d;

    public ad() {
        this.f81368c = 100L;
        this.f81369d = true;
    }

    public void a() {
        sendEmptyMessageDelayed(f81367b, this.f81368c);
    }

    public boolean b() {
        return this.f81369d;
    }

    public ad(Looper looper) {
        super(looper);
        this.f81368c = 100L;
        this.f81369d = true;
    }

    public void a(boolean stopped) {
        this.f81369d = stopped;
    }
}
