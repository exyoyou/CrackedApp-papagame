package com.airbnb.lottie.model;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f5855d = "\r";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5858c;

    public g(String str, float f10, float f11) {
        this.f5856a = str;
        this.f5858c = f11;
        this.f5857b = f10;
    }

    public float a() {
        return this.f5858c;
    }

    public String b() {
        return this.f5856a;
    }

    public float c() {
        return this.f5857b;
    }

    public boolean d(String str) {
        if (this.f5856a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f5856a.endsWith(f5855d)) {
            String str2 = this.f5856a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
