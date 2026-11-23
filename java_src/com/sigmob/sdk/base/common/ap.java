package com.sigmob.sdk.base.common;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* JADX INFO: loaded from: classes5.dex */
public class ap extends GestureDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f79019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f79020b;

    private ap(Context context, View view, c adAlertGestureListener) {
        super(context, adAlertGestureListener);
        this.f79020b = adAlertGestureListener;
        this.f79019a = view;
        setIsLongpressEnabled(false);
    }

    void a() {
        this.f79020b.b();
    }

    public void b() {
        this.f79020b.c();
    }

    public boolean c() {
        return this.f79020b.d();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1) {
            this.f79020b.a();
        } else if (action == 2 && !a(motionEvent, this.f79019a)) {
            a();
        }
        return zOnTouchEvent;
    }

    public ap(Context context, View view, BaseAdUnit adUnit) {
        this(context, view, new c(view, adUnit));
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (motionEvent == null || view == null) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        return x10 >= 0.0f && x10 <= ((float) view.getWidth()) && y10 >= 0.0f && y10 <= ((float) view.getHeight());
    }
}
