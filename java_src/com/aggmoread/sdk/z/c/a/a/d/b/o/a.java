package com.aggmoread.sdk.z.c.a.a.d.b.o;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public class a extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f5192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f5193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5196f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b f5197g;

    public a(@NonNull Context context) {
        super(context);
        this.f5194d = com.aggmoread.sdk.z.c.a.a.e.c.D();
        this.f5195e = false;
        this.f5196f = false;
        this.f5197g = null;
    }

    public void a() {
        this.f5196f = false;
        b bVar = this.f5197g;
        if (bVar != null) {
            bVar.f5198a = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0048 A[RETURN] */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        int x10;
        int y10;
        if (this.f5195e) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("xxxx", "onInterceptTouchEvent return false ");
            z10 = false;
        } else {
            z10 = true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f5191a = motionEvent.getX();
            this.f5192b = motionEvent.getY();
            this.f5193c = System.currentTimeMillis();
        } else if (action != 1) {
            if (action == 2) {
                if (z10) {
                    x10 = (int) (motionEvent.getX() - this.f5191a);
                    y10 = (int) (motionEvent.getY() - this.f5192b);
                    if ((x10 * x10) + (y10 * y10) >= this.f5194d) {
                        return z10;
                    }
                }
            }
        } else if (z10) {
            if (System.currentTimeMillis() - this.f5193c < 2) {
                return z10;
            }
            if (z10) {
                x10 = (int) (motionEvent.getX() - this.f5191a);
                y10 = (int) (motionEvent.getY() - this.f5192b);
                if ((x10 * x10) + (y10 * y10) >= this.f5194d) {
                    return z10;
                }
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("xxxx", "rdi   " + this.f5196f + ", false");
        super.requestDisallowInterceptTouchEvent(z10);
    }
}
