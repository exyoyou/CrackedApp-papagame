package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes5.dex */
public class ag extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private af f79885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f79886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f79887c;

    public ag(Context context) {
        super(context);
        this.f79887c = false;
        c();
    }

    private void c() {
        e eVar = new e(getContext());
        this.f79886b = eVar;
        addView(eVar, new RelativeLayout.LayoutParams(-1, -1));
        this.f79885a = new af(getContext());
        addView(this.f79885a, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.sigmob.sdk.base.views.r
    public void a() {
        this.f79887c = true;
    }

    @Override // com.sigmob.sdk.base.views.r
    public void b() {
        this.f79887c = false;
        af afVar = this.f79885a;
        if (afVar == null) {
            return;
        }
        afVar.a(0.0f);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
    }

    public ag(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f79887c = false;
        c();
    }

    public void a(float progress) {
        af afVar = this.f79885a;
        if (afVar == null || !this.f79887c) {
            return;
        }
        afVar.a(progress);
    }

    public ag(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79887c = false;
        c();
    }
}
