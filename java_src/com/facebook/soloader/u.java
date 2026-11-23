package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f29042a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f29043b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f29044c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f29045d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f29046e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    public static final int f29047f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f29048g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f29049h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f29050i = 2;

    public void a(Collection<String> collection) {
    }

    @Nullable
    public String[] b(String str) throws IOException {
        return null;
    }

    @Nullable
    public String c(String str) throws IOException {
        return null;
    }

    public String[] d() {
        return SysUtil.h();
    }

    public abstract int e(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException;

    protected void f(int i10) throws IOException {
    }

    @Nullable
    public abstract File g(String str) throws IOException;

    public String toString() {
        return getClass().getName();
    }
}
