package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes10.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f95315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadMode f95316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Class<?> f95317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f95318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f95319e;

    public e(String str, Class<?> cls, ThreadMode threadMode, int i10, boolean z10) {
        this.f95315a = str;
        this.f95316b = threadMode;
        this.f95317c = cls;
        this.f95318d = i10;
        this.f95319e = z10;
    }

    public e(String str, Class<?> cls) {
        this(str, cls, ThreadMode.POSTING, 0, false);
    }

    public e(String str, Class<?> cls, ThreadMode threadMode) {
        this(str, cls, threadMode, 0, false);
    }
}
