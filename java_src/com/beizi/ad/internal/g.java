package com.beizi.ad.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public class g extends com.beizi.ad.internal.e.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9089a;

    public g(String str) {
        super(false, false);
        this.f9089a = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.beizi.ad.internal.e.d, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(com.beizi.ad.internal.e.e eVar) {
        if (eVar == null || !eVar.a()) {
            return;
        }
        int iC = eVar.c();
        String strD = eVar.d();
        if (iC != 302 || TextUtils.isEmpty(strD)) {
            return;
        }
        new g(strD).b();
    }

    public void b() {
        com.beizi.ad.internal.d.b bVarA = com.beizi.ad.internal.d.b.a(c.a().c());
        if (bVarA.b(c.a().c())) {
            executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
        } else {
            bVarA.a(this.f9089a, c.a().c());
        }
    }

    @Override // com.beizi.ad.internal.e.d
    protected String a() {
        return this.f9089a;
    }
}
