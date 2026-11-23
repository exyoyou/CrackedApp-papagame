package com.byazt.atv;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 134, 1541})
public class UGTimerContainer extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.qmz.c f11741c;
    public final com.byazt.xyr.sp tt;

    public UGTimerContainer(@NonNull Context context, com.byazt.xyr.sp spVar) {
        super(context);
        this.tt = spVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        com.byazt.xyr.sp spVar = this.tt;
        if (spVar != null) {
            spVar.c(this, motionEvent, zDispatchTouchEvent);
        }
        return zDispatchTouchEvent;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        com.byazt.qmz.c cVar = this.f11741c;
        if (cVar != null) {
            if (i10 == 0) {
                cVar.c();
            } else {
                cVar.tt();
            }
        }
    }

    public void setTimerHolder(com.byazt.qmz.c cVar) {
        this.f11741c = cVar;
    }
}
