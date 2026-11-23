package com.sigmob.sdk.mraid2;

import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f81314a;

    public w(View target) {
        this.f81314a = target;
    }

    public int a() {
        return this.f81314a.getLayoutParams().height;
    }

    public int b() {
        return this.f81314a.getLayoutParams().width;
    }

    public void a(int height) {
        this.f81314a.getLayoutParams().height = height;
        this.f81314a.requestLayout();
    }

    public void b(int width) {
        this.f81314a.getLayoutParams().width = width;
        this.f81314a.requestLayout();
    }
}
