package com.byazt.sy;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.m;
import com.byazt.ete.u;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 1633})
public class EasyPlayableContainer extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final sp f19961c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public u f19962n;
    public final m tt;
    public int uj;
    public final ic ve;

    public EasyPlayableContainer(@NonNull Context context, sp spVar, m mVar, ic icVar, u uVar) {
        super(context);
        this.uj = 0;
        this.f19961c = spVar;
        this.tt = mVar;
        this.ve = icVar;
        this.f19962n = uVar;
    }

    public boolean c() {
        return this.uj == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        sp spVar = this.f19961c;
        if (spVar != null) {
            spVar.tt();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        sp spVar = this.f19961c;
        if (spVar != null) {
            spVar.ve();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.tt == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        float fUj = pf.uj(getContext(), motionEvent.getX());
        float fUj2 = pf.uj(getContext(), motionEvent.getY());
        if (this.tt.c(fUj, fUj2)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            new com.byazt.kyz.c(this.ve, this.f19962n).c(this.ve, fUj, fUj2, 1);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.tt == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.tt.c(pf.uj(getContext(), motionEvent.getX()), pf.uj(getContext(), motionEvent.getY()))) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void setIfStayTop(int i10) {
        this.uj = i10;
    }

    public static void c(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        boolean z10 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof EasyPlayableContainer) {
                EasyPlayableContainer easyPlayableContainer = (EasyPlayableContainer) childAt;
                if (easyPlayableContainer.c()) {
                    easyPlayableContainer.bringToFront();
                    z10 = true;
                }
            }
        }
        if (z10) {
            viewGroup.invalidate();
        }
    }
}
