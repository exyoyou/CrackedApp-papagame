package com.google.android.material.shape;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f31614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MaterialShapeDrawable f31615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScrollView f31616c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f31617d = new int[2];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f31618e = new int[2];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f31619f = new a();

    class a implements ViewTreeObserver.OnScrollChangedListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            h.this.e();
        }
    }

    public h(View view, MaterialShapeDrawable materialShapeDrawable, ScrollView scrollView) {
        this.f31614a = view;
        this.f31615b = materialShapeDrawable;
        this.f31616c = scrollView;
    }

    public void a(ScrollView scrollView) {
        this.f31616c = scrollView;
    }

    public void b(MaterialShapeDrawable materialShapeDrawable) {
        this.f31615b = materialShapeDrawable;
    }

    public void c(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.f31619f);
    }

    public void d(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.f31619f);
    }

    public void e() {
        ScrollView scrollView = this.f31616c;
        if (scrollView == null) {
            return;
        }
        if (scrollView.getChildCount() == 0) {
            throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
        }
        this.f31616c.getLocationInWindow(this.f31617d);
        this.f31616c.getChildAt(0).getLocationInWindow(this.f31618e);
        int top = (this.f31614a.getTop() - this.f31617d[1]) + this.f31618e[1];
        int height = this.f31614a.getHeight();
        int height2 = this.f31616c.getHeight();
        if (top < 0) {
            this.f31615b.q0(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
            this.f31614a.invalidate();
            return;
        }
        int i10 = top + height;
        if (i10 > height2) {
            this.f31615b.q0(Math.max(0.0f, Math.min(1.0f, 1.0f - ((i10 - height2) / height))));
            this.f31614a.invalidate();
        } else if (this.f31615b.A() != 1.0f) {
            this.f31615b.q0(1.0f);
            this.f31614a.invalidate();
        }
    }
}
