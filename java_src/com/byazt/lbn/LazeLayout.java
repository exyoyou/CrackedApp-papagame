package com.byazt.lbn;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.bzd.x;
import com.byazt.nr.da;
import com.byazt.nr.m;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 496, 1578})
public class LazeLayout<T extends View> extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View.OnClickListener f16569a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile com.byazt.lbn.c<T> f16570c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicBoolean f16571n;
    public View.OnTouchListener sp;
    public volatile Context tt;
    public AtomicBoolean uj;
    public c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public T f16572x;

    public interface c<T extends View> {
        void onFill(T t10);
    }

    public LazeLayout(Context context, com.byazt.lbn.c cVar, c cVar2) {
        super(context);
        this.uj = new AtomicBoolean(false);
        this.f16571n = new AtomicBoolean(false);
        this.f16570c = cVar;
        this.tt = context;
        this.ve = cVar2;
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f16571n.set(true);
        if (this.uj.get()) {
            return;
        }
        this.uj.set(true);
        T t10 = this.f16572x;
        if (t10 != null) {
            c(t10, getParent());
        } else {
            da.ve().post(new Runnable() { // from class: com.byazt.lbn.LazeLayout.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LazeLayout lazeLayout = LazeLayout.this;
                        lazeLayout.f16572x = lazeLayout.f16570c.inflate(LazeLayout.this.tt);
                        if (LazeLayout.this.f16572x == null) {
                            return;
                        }
                        LazeLayout lazeLayout2 = LazeLayout.this;
                        lazeLayout2.c(lazeLayout2.f16572x, LazeLayout.this.getParent());
                    } catch (Exception e10) {
                        m.tt("LazeLayout", "inflate error", e10);
                    }
                }
            });
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f16571n.set(false);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f16569a = onClickListener;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.sp = onTouchListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final T t10, final ViewParent viewParent) {
        if (t10 == null) {
            return;
        }
        if (viewParent == null) {
            if (this.f16571n.get()) {
                da.ve().postDelayed(new Runnable() { // from class: com.byazt.lbn.LazeLayout.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LazeLayout lazeLayout = LazeLayout.this;
                        lazeLayout.c(t10, lazeLayout.getParent());
                    }
                }, 50L);
                return;
            } else {
                this.uj.set(false);
                return;
            }
        }
        if (viewParent instanceof ViewGroup) {
            x.c(new Runnable() { // from class: com.byazt.lbn.LazeLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    if (LazeLayout.this.f16571n.get()) {
                        LazeLayout.this.c(t10, (ViewGroup) viewParent);
                    } else {
                        LazeLayout.this.uj.set(false);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(T t10, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        this.tt = null;
        this.f16570c = null;
        ViewParent parent = t10.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(t10);
        }
        View.OnClickListener onClickListener = this.f16569a;
        if (onClickListener != null) {
            t10.setOnClickListener(onClickListener);
        }
        View.OnTouchListener onTouchListener = this.sp;
        if (onTouchListener != null) {
            t10.setOnTouchListener(onTouchListener);
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(t10, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(t10, iIndexOfChild);
        }
        c cVar = this.ve;
        if (cVar != null) {
            cVar.onFill(t10);
        }
        this.f16572x = null;
    }

    public void c() {
        this.f16572x = null;
        this.f16570c = null;
        this.tt = null;
        this.ve = null;
    }
}
