package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;

/* JADX INFO: loaded from: classes3.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f74851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f74852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f74853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f74854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f74855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f74856f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ClassLoader f74857g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f74858h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f74859i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f74860j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f74861k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ActivityInfo[] f74862l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f74863m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f74864n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f74865o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f74866p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f74867q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public PackageInfo f74868r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f74869s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f74870t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f74871u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f74872v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f74873w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f74874x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f74875y;

    public s() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        String str = this.f74853c;
        if (str == null) {
            if (sVar.f74853c != null) {
                return false;
            }
        } else if (!str.equals(sVar.f74853c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f74853c;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public s(PackageInfo packageInfo, int i10, String str, String str2, String str3, String str4) {
        this.f74868r = packageInfo;
        this.f74851a = i10;
        this.f74853c = str;
        this.f74854d = str2;
        this.f74859i = str3;
        this.f74860j = str4;
    }
}
