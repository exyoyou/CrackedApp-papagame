package com.byazt.ff;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.ScrollView;
import com.byazt.el.SSWebView;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes6.dex */
@c(c = {0, 1, 142, 1595})
public class SSWebViewVideoPage extends SSWebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f14154a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f14155n;
    public boolean sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ViewParent f14156x;

    public SSWebViewVideoPage(Context context) {
        super(context);
        this.f14155n = true;
        this.f14154a = -1.0f;
        this.sp = false;
    }

    public void a() {
        if (this.sp) {
            return;
        }
        this.f14156x.requestDisallowInterceptTouchEvent(true);
        this.sp = true;
    }

    public void c(boolean z10) {
        if (((ScrollView) this.f14156x).getScrollY() == 0) {
            if (z10) {
                a();
                return;
            } else {
                sp();
                return;
            }
        }
        if (!this.f14155n) {
            a();
        } else if (z10) {
            sp();
        } else {
            a();
        }
    }

    @Override // android.view.View
    public void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        super.onOverScrolled(i10, i11, z10, z11);
        if (i11 == 0 && z11) {
            this.f14155n = true;
        } else {
            this.f14155n = false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f14156x == null) {
            this.f14156x = c((View) this);
        }
        if (motionEvent.getAction() == 0) {
            this.f14154a = motionEvent.getY();
        } else if (motionEvent.getAction() == 2) {
            float y10 = motionEvent.getY() - this.f14154a;
            if (y10 > 0.0f) {
                c(true);
            } else if (y10 != 0.0f && y10 < 0.0f) {
                c(false);
            }
            this.f14154a = motionEvent.getY();
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            a();
            this.sp = false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void sp() {
        if (this.sp) {
            return;
        }
        this.f14156x.requestDisallowInterceptTouchEvent(false);
        this.sp = true;
    }
}
