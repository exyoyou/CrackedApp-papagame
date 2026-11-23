package com.join.mgps.wrapper.SystemUiHider;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.View;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes3.dex */
@TargetApi(11)
class c extends com.join.mgps.wrapper.SystemUiHider.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73384j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f73385k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f73386l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f73387m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View.OnSystemUiVisibilityChangeListener f73388n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View.OnSystemUiVisibilityChangeListener f73389o;

    class a implements View.OnSystemUiVisibilityChangeListener {
        a() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int visibility) {
            if (visibility == 0) {
                c.this.f73382d.onVisibilityChange(false);
                c.this.f73387m = false;
            } else {
                c.this.f73382d.onVisibilityChange(true);
                c.this.f73387m = true;
            }
        }
    }

    class b implements View.OnSystemUiVisibilityChangeListener {
        b() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int vis) {
            if ((vis & c.this.f73386l) != 0) {
                c.this.f73382d.onVisibilityChange(false);
                c.this.f73387m = false;
            } else {
                c cVar = c.this;
                cVar.f73380b.setSystemUiVisibility(cVar.f73384j);
                c.this.f73382d.onVisibilityChange(true);
                c.this.f73387m = true;
            }
        }
    }

    protected c(Activity activity, View anchorView, int flags) {
        super(activity, anchorView, flags);
        this.f73387m = true;
        this.f73388n = new a();
        this.f73389o = new b();
        this.f73384j = 0;
        this.f73385k = 1;
        this.f73386l = 1;
        int i10 = this.f73381c;
        if ((i10 & 2) != 0) {
            this.f73385k = 1 | GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY_VALUE;
        }
        if ((i10 & 6) != 0) {
            this.f73386l = 2;
        }
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public void b() {
        this.f73380b.setSystemUiVisibility(this.f73385k);
        this.f73380b.setSystemUiVisibility(this.f73385k | 2 | 512 | 4096);
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public boolean c() {
        return this.f73387m;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public void e() {
        this.f73380b.setOnSystemUiVisibilityChangeListener(this.f73388n);
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.b, com.join.mgps.wrapper.SystemUiHider.a
    public void f() {
        this.f73380b.setSystemUiVisibility(this.f73384j);
    }
}
