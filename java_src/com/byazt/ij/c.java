package com.byazt.ij;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 20})
public class c implements View.OnTouchListener {
    public static int ve = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f15348c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15351n;
    public float tt;
    public com.byazt.nk.x uj;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RectF f15347a = new RectF();
    public long sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f15352x = 200;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15350i = 3;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public SoftReference<ViewGroup> f15349da = new SoftReference<>(null);

    public c(com.byazt.nk.x xVar, int i10, final ViewGroup viewGroup) {
        this.f15351n = ve;
        this.uj = xVar;
        if (i10 > 0) {
            this.f15351n = i10;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.byazt.ij.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.f15349da = new SoftReference(viewGroup);
                }
            });
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.byazt.nk.x xVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15347a = c(this.f15349da.get());
            this.f15348c = motionEvent.getRawX();
            this.tt = motionEvent.getRawY();
            this.sp = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.f15347a;
            if (rectF != null && !rectF.contains(this.f15348c, this.tt)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.f15348c);
            float fAbs2 = Math.abs(rawY - this.tt);
            int i10 = this.f15351n;
            if (fAbs >= i10 && fAbs2 >= i10) {
                com.byazt.nk.x xVar2 = this.uj;
                if (xVar2 != null) {
                    xVar2.c();
                }
            } else if ((System.currentTimeMillis() - this.sp < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (xVar = this.uj) != null) {
                xVar.c();
            }
        }
        return true;
    }

    private RectF c(View view) {
        if (view == null) {
            return new RectF();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        return new RectF(i10, iArr[1], i10 + view.getWidth(), iArr[1] + view.getHeight());
    }
}
