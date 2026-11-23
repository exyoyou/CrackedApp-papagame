package com.byazt.rpt;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 311, 445})
public class PlayableEndcardFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f19500c;
    public int tt;

    public interface c {
        void c();
    }

    public PlayableEndcardFrameLayout(Context context) {
        super(context);
    }

    public void c(c cVar) {
        this.f19500c = cVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int y10 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.tt = y10;
        } else if (action == 2 && Math.abs(this.tt - y10) > 100) {
            c();
            this.tt = y10;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void c() {
        c cVar = this.f19500c;
        if (cVar != null) {
            cVar.c();
        }
    }
}
