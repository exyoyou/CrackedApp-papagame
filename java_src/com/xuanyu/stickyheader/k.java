package com.xuanyu.stickyheader;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes8.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f90199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f90201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f90202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f90203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f90204f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f90205g = true;

    public k(View view) {
        this.f90199a = view;
    }

    void a() {
        View view = this.f90199a;
        ViewCompat.offsetTopAndBottom(view, this.f90202d - (view.getTop() - this.f90200b));
        View view2 = this.f90199a;
        ViewCompat.offsetLeftAndRight(view2, this.f90203e - (view2.getLeft() - this.f90201c));
    }

    public int b() {
        return this.f90201c;
    }

    public int c() {
        return this.f90200b;
    }

    public int d() {
        return this.f90203e;
    }

    public int e() {
        return this.f90202d;
    }

    public boolean f() {
        return this.f90205g;
    }

    public boolean g() {
        return this.f90204f;
    }

    void h() {
        this.f90200b = this.f90199a.getTop();
        this.f90201c = this.f90199a.getLeft();
    }

    public void i(boolean horizontalOffsetEnabled) {
        this.f90205g = horizontalOffsetEnabled;
    }

    public boolean j(int offset) {
        if (!this.f90205g || this.f90203e == offset) {
            return false;
        }
        this.f90203e = offset;
        a();
        return true;
    }

    public boolean k(int offset) {
        if (!this.f90204f || this.f90202d == offset) {
            return false;
        }
        this.f90202d = offset;
        a();
        return true;
    }

    public void l(boolean verticalOffsetEnabled) {
        this.f90204f = verticalOffsetEnabled;
    }
}
