package com.byazt.nl;

import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public interface ve {

    public interface c {
        Pair<Boolean, Boolean> c(View view, MotionEvent motionEvent);
    }

    void setTag(int i10, Object obj);

    void setTouchEventListener(c cVar);
}
