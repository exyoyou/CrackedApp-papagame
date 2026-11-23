package com.aggmoread.sdk.z.c.a.a.c;

/* JADX INFO: loaded from: classes7.dex */
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f4371c = new i(-1, -2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4373b;

    public i(int i10, int i11) {
        this.f4372a = i10;
        this.f4373b = i11;
    }

    public int a() {
        return this.f4373b;
    }

    public int b() {
        return this.f4372a;
    }

    public String toString() {
        return String.format("{w= %s,h= %s}", Integer.valueOf(this.f4372a), Integer.valueOf(this.f4373b));
    }
}
