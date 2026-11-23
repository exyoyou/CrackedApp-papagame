package com.join.mgps.task;

import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes3.dex */
public class b implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f73192c = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f73193b;

    public b(String filePath) {
        this.f73193b = filePath;
    }

    @Override // java.lang.Runnable
    public void run() {
        o0.m(this.f73193b);
    }
}
