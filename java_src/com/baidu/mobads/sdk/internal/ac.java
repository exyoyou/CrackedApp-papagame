package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class ac implements cb.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aa f7391a;

    ac(aa aaVar) {
        this.f7391a = aaVar;
    }

    @Override // com.baidu.mobads.sdk.internal.cb.c
    public void a(boolean z10) {
        if (z10) {
            try {
                cb cbVar = h.f7879a;
                if (cbVar != null) {
                    this.f7391a.f7379b = cbVar.i();
                    if (this.f7391a.f7379b != null) {
                        this.f7391a.k();
                        return;
                    }
                }
            } catch (Exception unused) {
                this.f7391a.a("加载dex异常");
                return;
            }
        }
        h.f7879a = null;
        this.f7391a.a("加载dex失败");
    }
}
