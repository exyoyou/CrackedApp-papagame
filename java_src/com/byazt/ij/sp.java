package com.byazt.ij;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1432, 91})
public class sp implements View.OnTouchListener {
    public static int ve = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f15360c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15363n;
    public float tt;
    public com.byazt.nk.x uj;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RectF f15359a = new RectF();
    public long sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f15364x = 200;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15362i = 3;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public SoftReference<View> f15361da = new SoftReference<>(null);

    public sp(com.byazt.nk.x xVar, int i10, final ViewGroup viewGroup) {
        this.f15363n = ve;
        this.uj = xVar;
        if (i10 > 0) {
            this.f15363n = i10;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.byazt.ij.sp.1
                @Override // java.lang.Runnable
                public void run() {
                    View viewFindViewById = viewGroup.findViewById(2097610746);
                    sp.this.f15361da = new SoftReference(viewFindViewById);
                }
            });
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.byazt.nk.x xVar;
        com.byazt.nk.x xVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f15359a = c(this.f15361da.get());
            this.f15360c = motionEvent.getRawX();
            this.tt = motionEvent.getRawY();
            this.sp = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.f15359a;
            if (rectF != null && !rectF.contains(this.f15360c, this.tt)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.f15360c);
            float fAbs2 = Math.abs(rawY - this.tt);
            int iTt = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), Math.abs(rawX - this.f15360c));
            int i10 = ve;
            if (fAbs < i10 || fAbs2 < i10) {
                if ((System.currentTimeMillis() - this.sp < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (xVar = this.uj) != null) {
                    xVar.c();
                }
            } else if (rawX > this.f15360c && iTt > this.f15363n && (xVar2 = this.uj) != null) {
                xVar2.c();
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
