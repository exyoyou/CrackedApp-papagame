package com.sigmob.sdk.nativead;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes3.dex */
public class LongClickLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Runnable f81327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f81328b;

    public LongClickLayout(Context context) {
        super(context);
        this.f81328b = false;
        a(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0) {
            this.f81328b = false;
            postDelayed(this.f81327a, 2000);
        } else if (ev.getAction() == 1 || ev.getAction() == 3) {
            removeCallbacks(this.f81327a);
            if (this.f81328b) {
                return true;
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    public LongClickLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f81328b = false;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.f81328b = true;
        performLongClick();
    }

    public LongClickLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f81328b = false;
        a(context);
    }

    private void a(final Context context) {
        this.f81327a = new Runnable() { // from class: com.sigmob.sdk.nativead.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81331b.a();
            }
        };
    }
}
