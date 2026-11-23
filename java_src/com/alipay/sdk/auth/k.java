package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
final class k implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Activity f7119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ StringBuilder f7120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ a f7121d;

    k(Activity activity, StringBuilder sb2, a aVar) {
        this.f7119b = activity;
        this.f7120c = sb2;
        this.f7121d = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.widget.a aVar;
        com.alipay.sdk.packet.b bVarB;
        try {
            try {
                bVarB = new com.alipay.sdk.packet.impl.a().b(this.f7119b, this.f7120c.toString());
            } catch (Throwable unused) {
                bVarB = null;
            }
            if (j.f7117c != null) {
                j.f7117c.f();
                j.f();
            }
            if (bVarB == null) {
                String unused2 = j.f7118d = this.f7121d.d() + "?resultCode=202";
                j.d(this.f7119b, j.f7118d);
                if (aVar != null) {
                    return;
                } else {
                    return;
                }
            }
            List<w.a> listB = w.a.b(bVarB.a().optJSONObject(u.c.f97427c).optJSONObject(u.c.f97428d));
            for (int i10 = 0; i10 < listB.size(); i10++) {
                if (listB.get(i10).f97543a == com.alipay.sdk.protocol.a.WapPay) {
                    String unused3 = j.f7118d = listB.get(i10).f97545c[0];
                    break;
                }
            }
            if (!TextUtils.isEmpty(j.f7118d)) {
                Intent intent = new Intent(this.f7119b, (Class<?>) AuthActivity.class);
                intent.putExtra("params", j.f7118d);
                intent.putExtra("redirectUri", this.f7121d.d());
                this.f7119b.startActivity(intent);
                if (aVar == null) {
                    return;
                }
                return;
            }
            String unused4 = j.f7118d = this.f7121d.d() + "?resultCode=202";
            j.d(this.f7119b, j.f7118d);
        } catch (Exception unused5) {
        } finally {
            if (j.f7117c != null) {
                j.f7117c.f();
            }
        }
    }
}
