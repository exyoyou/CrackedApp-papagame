package com.airbnb.lottie.model;

import androidx.annotation.RestrictTo;
import com.airbnb.lottie.model.content.l;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<l> f5748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char f5749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f5750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f5751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f5753f;

    public c(List<l> list, char c10, double d10, double d11, String str, String str2) {
        this.f5748a = list;
        this.f5749b = c10;
        this.f5750c = d10;
        this.f5751d = d11;
        this.f5752e = str;
        this.f5753f = str2;
    }

    public static int c(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List<l> a() {
        return this.f5748a;
    }

    public double b() {
        return this.f5751d;
    }

    public int hashCode() {
        return c(this.f5749b, this.f5753f, this.f5752e);
    }
}
