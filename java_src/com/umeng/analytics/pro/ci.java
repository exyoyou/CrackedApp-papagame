package com.umeng.analytics.pro;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class ci implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f84528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f84529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f84530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f84531d;

    public ci(byte b10, boolean z10) {
        this.f84529b = b10;
        this.f84528a = false;
        this.f84530c = null;
        this.f84531d = z10;
    }

    public boolean a() {
        return this.f84528a;
    }

    public String b() {
        return this.f84530c;
    }

    public boolean c() {
        return this.f84529b == 12;
    }

    public boolean d() {
        byte b10 = this.f84529b;
        return b10 == 15 || b10 == 13 || b10 == 14;
    }

    public boolean e() {
        return this.f84531d;
    }

    public ci(byte b10) {
        this(b10, false);
    }

    public ci(byte b10, String str) {
        this.f84529b = b10;
        this.f84528a = true;
        this.f84530c = str;
        this.f84531d = false;
    }
}
