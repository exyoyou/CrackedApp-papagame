package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
class cq extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ cp f7803b;

    cq(cp cpVar) {
        this.f7803b = cpVar;
    }

    @Override // com.baidu.mobads.sdk.internal.j
    protected Object i() {
        try {
            String strA = this.f7803b.a("key_crash_trace");
            String strA2 = this.f7803b.a("key_crash_ad");
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            cm cmVarA = cm.a();
            cmVarA.a(this.f7803b.f7801n);
            cmVarA.a(this.f7803b.a("key_crash_source"), strA, strA2);
            this.f7803b.g();
            return null;
        } catch (Exception e10) {
            bv.a().a(e10);
            return null;
        }
    }
}
