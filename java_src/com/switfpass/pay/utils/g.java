package com.switfpass.pay.utils;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f82793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Intent f82794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f82795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Activity f82796d;

    public g() {
        this.f82795c = 0;
    }

    public Intent a() {
        return this.f82794b;
    }

    public String b() {
        return this.f82793a;
    }

    public int c() {
        return this.f82795c;
    }

    public void d(Intent intent) {
        this.f82794b = intent;
    }

    public void e(String str) {
        this.f82793a = str;
    }

    public void f(int i10) {
        this.f82795c = i10;
    }

    public g(String str, Intent intent) {
        this.f82795c = 0;
        this.f82793a = str;
        this.f82794b = intent;
    }

    public g(String str, Intent intent, int i10, Activity activity) {
        this.f82793a = str;
        this.f82794b = intent;
        this.f82795c = i10;
        this.f82796d = activity;
    }
}
