package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes7.dex */
public class m extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.f f4163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.a f4164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4167e;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m.this.e();
        }
    }

    public m(Context context) {
        super(context);
        this.f4167e = -1;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        boolean z10;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            new Exception("test").printStackTrace();
            return;
        }
        boolean z11 = true;
        if (layoutParams.height == -2) {
            layoutParams.height = this.f4166d;
            z10 = true;
        } else {
            z10 = false;
        }
        if (layoutParams.width == -2) {
            layoutParams.width = this.f4165c;
        } else {
            z11 = z10;
        }
        if (z11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("updateLayoutParams width ");
            sb2.append(layoutParams.width);
            sb2.append(", height ");
            sb2.append(layoutParams.height);
            postInvalidate();
        }
    }

    public com.aggmoread.sdk.z.a.t.a a() {
        return this.f4164b;
    }

    public com.aggmoread.sdk.z.a.t.f b() {
        return this.f4163a;
    }

    public void c() {
        com.aggmoread.sdk.z.a.t.f fVar = this.f4163a;
        if (fVar != null) {
            fVar.b();
        }
    }

    public void d() {
        com.aggmoread.sdk.z.a.t.f fVar = this.f4163a;
        if (fVar != null) {
            fVar.p();
            this.f4163a.d();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (this.f4163a != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onWindowVisibilityChanged visibility ");
            sb2.append(i10);
            if (i10 != 0) {
                this.f4167e = !this.f4163a.a() ? 1 : 0;
                c();
            } else if (this.f4167e == 0) {
                d();
                this.f4167e = -1;
            }
        }
    }

    private void a(Context context) {
        this.f4165c = com.aggmoread.sdk.z.a.m.b.a(context);
        this.f4166d = com.aggmoread.sdk.z.a.m.b.a(context, 200.0d);
        this.f4163a = new com.aggmoread.sdk.z.a.t.f(context);
        this.f4164b = new com.aggmoread.sdk.z.a.t.b(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.f4163a, layoutParams);
        this.f4163a.d(true);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        this.f4164b.setVisibility(8);
        addView(this.f4164b, layoutParams2);
        this.f4163a.a(this.f4164b);
        post(new a());
    }
}
