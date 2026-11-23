package com.kwad.components.core.innerEc.live.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.kwad.sdk.widget.KSFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoSpeedControlFrameLayout extends KSFrameLayout {
    private final List<GestureDetector> aaA;
    private boolean aaz;

    public PhotoSpeedControlFrameLayout(Context context) {
        super(context);
        this.aaz = false;
        this.aaA = new ArrayList();
    }

    public final void a(GestureDetector gestureDetector) {
        if (gestureDetector == null || this.aaA.contains(gestureDetector)) {
            return;
        }
        this.aaA.add(gestureDetector);
    }

    public final void b(GestureDetector gestureDetector) {
        if (gestureDetector != null) {
            this.aaA.remove(gestureDetector);
        }
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        Iterator<GestureDetector> it2 = this.aaA.iterator();
        while (it2.hasNext()) {
            zDispatchTouchEvent = it2.next().onTouchEvent(motionEvent) || zDispatchTouchEvent;
        }
        return zDispatchTouchEvent;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.aaz) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        motionEvent.getAction();
        return true;
    }

    public void setIntercepted(boolean z10) {
        this.aaz = z10;
    }

    public PhotoSpeedControlFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aaz = false;
        this.aaA = new ArrayList();
    }

    public PhotoSpeedControlFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.aaz = false;
        this.aaA = new ArrayList();
    }
}
