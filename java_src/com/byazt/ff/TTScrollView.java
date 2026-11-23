package com.byazt.ff;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 142, 2423})
public class TTScrollView extends ScrollView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14174c;
    public boolean tt;
    public boolean uj;
    public c ve;

    public interface c {
        void c(boolean z10);
    }

    public TTScrollView(Context context) {
        super(context);
        this.tt = false;
        this.uj = false;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.tt) {
            return;
        }
        try {
            this.tt = true;
            View childAt = ((ViewGroup) getChildAt(0)).getChildAt(1);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.height = getHeight();
            childAt.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            m.uj("TTScrollView", "onLayout error" + th.toString());
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        super.onOverScrolled(i10, i11, z10, z11);
    }

    @Override // android.widget.ScrollView, android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f14174c = getChildAt(0).getMeasuredHeight();
        post(new Runnable() { // from class: com.byazt.ff.TTScrollView.3
            @Override // java.lang.Runnable
            public void run() {
                TTScrollView tTScrollView = TTScrollView.this;
                tTScrollView.smoothScrollTo(0, tTScrollView.f14174c);
            }
        });
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        c cVar;
        boolean z10 = true;
        if (motionEvent.getAction() == 1 && getScrollY() < this.f14174c) {
            if (getScrollY() > this.f14174c / 2) {
                post(new Runnable() { // from class: com.byazt.ff.TTScrollView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TTScrollView tTScrollView = TTScrollView.this;
                        tTScrollView.smoothScrollTo(0, tTScrollView.f14174c);
                    }
                });
            } else {
                if (getScrollY() > 0) {
                    post(new Runnable() { // from class: com.byazt.ff.TTScrollView.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TTScrollView.this.smoothScrollTo(0, 0);
                        }
                    });
                } else if (getScrollY() != 0) {
                }
                cVar = this.ve;
                if (cVar != null && z10 != this.uj) {
                    cVar.c(z10);
                }
                this.uj = z10;
            }
            z10 = false;
            cVar = this.ve;
            if (cVar != null) {
                cVar.c(z10);
            }
            this.uj = z10;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListener(c cVar) {
        this.ve = cVar;
    }

    public boolean c() {
        return this.uj;
    }
}
