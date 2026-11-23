package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLogger;

/* JADX INFO: loaded from: classes5.dex */
public class ai extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79905a = "ai";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ah f79906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f79907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f79908d;

    public ai(Context context) {
        super(context);
        this.f79908d = false;
        View eVar = new e(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(eVar, layoutParams);
        this.f79907c = new d(context);
        this.f79906b = new ah(context);
        this.f79907c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f79907c);
        addView(this.f79906b);
        c();
    }

    private void c() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.ai.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ai.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ai.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int width = (int) (getWidth() * 0.25f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, (int) (width * 1.62f));
        layoutParams.setMargins(0, (int) (getHeight() * 0.38f), 0, 0);
        layoutParams.addRule(14);
        this.f79906b.setLayoutParams(layoutParams);
    }

    @Override // com.sigmob.sdk.base.views.r
    public void a() {
        this.f79908d = true;
        ah ahVar = this.f79906b;
        if (ahVar != null) {
            ahVar.a();
        }
    }

    @Override // com.sigmob.sdk.base.views.r
    public void b() {
        this.f79908d = false;
        d dVar = this.f79907c;
        if (dVar != null) {
            dVar.a(0.0f);
        }
        ah ahVar = this.f79906b;
        if (ahVar != null) {
            ahVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f79908d) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        c();
    }

    public ai(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f79908d = false;
        c();
    }

    public void a(float process) {
        d dVar = this.f79907c;
        if (dVar == null || !this.f79908d) {
            return;
        }
        dVar.a(process);
        SigmobLogger.d(f79905a, "updateProcess: process = " + process, new Object[0]);
    }

    public ai(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79908d = false;
        c();
    }
}
