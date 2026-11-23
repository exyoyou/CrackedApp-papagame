package com.byazt.lbn;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 496, 1203})
public final class TTViewStub extends View {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<View> f16576c;
    public com.byazt.lbn.c tt;
    public c uj;
    public Context ve;

    public interface c {
    }

    public TTViewStub(Context context, com.byazt.lbn.c cVar) {
        super(context);
        this.ve = context;
        this.tt = cVar;
        setVisibility(8);
    }

    public View c() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        com.byazt.lbn.c cVar = this.tt;
        if (cVar == null) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        View viewInflate = cVar.inflate(this.ve);
        c(viewInflate, (ViewGroup) parent);
        this.f16576c = new WeakReference<>(viewInflate);
        return viewInflate;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setOnInflateListener(c cVar) {
        this.uj = cVar;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        WeakReference<View> weakReference = this.f16576c;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i10);
            return;
        }
        super.setVisibility(i10);
        if (i10 == 0 || i10 == 4) {
            c();
        }
    }

    private void c(View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }
}
