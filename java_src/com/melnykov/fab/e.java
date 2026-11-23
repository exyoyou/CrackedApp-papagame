package com.melnykov.fab;

import android.widget.ScrollView;

/* JADX INFO: loaded from: classes2.dex */
abstract class e implements ObservableScrollView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f75401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f75402b;

    e() {
    }

    @Override // com.melnykov.fab.ObservableScrollView.a
    public void a(ScrollView scrollView, int i10, int i11, int i12, int i13) {
        if (Math.abs(i11 - this.f75401a) > this.f75402b) {
            if (i11 > this.f75401a) {
                c();
            } else {
                b();
            }
        }
        this.f75401a = i11;
    }

    abstract void b();

    abstract void c();

    public void d(int i10) {
        this.f75402b = i10;
    }
}
