package com.join.mgps.wrapper.SystemUiHider;

import android.app.Activity;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
class b extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f73383i;

    protected b(Activity activity, View anchorView, int flags) {
        super(activity, anchorView, flags);
        this.f73383i = true;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public void b() {
        if ((this.f73381c & 2) != 0) {
            this.f73379a.getWindow().setFlags(1024, 1024);
        }
        this.f73382d.onVisibilityChange(false);
        this.f73383i = false;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public boolean c() {
        return this.f73383i;
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public void e() {
        if ((this.f73381c & 1) == 0) {
            this.f73379a.getWindow().setFlags(768, 768);
        }
    }

    @Override // com.join.mgps.wrapper.SystemUiHider.a
    public void f() {
        if ((this.f73381c & 2) != 0) {
            this.f73379a.getWindow().setFlags(0, 1024);
        }
        this.f73382d.onVisibilityChange(true);
        this.f73383i = true;
    }
}
