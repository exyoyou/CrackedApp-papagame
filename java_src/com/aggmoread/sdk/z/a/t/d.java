package com.aggmoread.sdk.z.a.t;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class d implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f3983e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3985g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f3987i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f3988j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f3989k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f3990l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f3991m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Bitmap f3992n;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3984f = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3986h = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3993o = 25;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f3994p = true;

    public d() {
        new ArrayList();
    }

    public String a() {
        return TextUtils.isEmpty(this.f3982d) ? this.f3981c : this.f3982d;
    }

    public String b() {
        return this.f3983e;
    }

    public String c() {
        return TextUtils.isEmpty(this.f3981c) ? this.f3982d : this.f3981c;
    }

    public String d() {
        return TextUtils.isEmpty(this.f3991m) ? a() : this.f3991m;
    }

    public String e() {
        return this.f3988j;
    }

    public String f() {
        return TextUtils.isEmpty(this.f3990l) ? c() : this.f3990l;
    }

    public String g() {
        return TextUtils.isEmpty(this.f3989k) ? this.f3983e : this.f3989k;
    }

    public int h() {
        return this.f3993o;
    }

    public int i() {
        if (this.f3984f == 1) {
            return this.f3985g;
        }
        return 0;
    }

    public String j() {
        return this.f3980b;
    }

    public boolean k() {
        return this.f3986h == 1;
    }
}
