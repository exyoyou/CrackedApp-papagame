package com.byazt.wz;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.nu;
import com.byazt.omf.p;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 65, 54})
public class ve extends n implements com.byazt.pop.ve {
    public ve(Context context, ic icVar, String str) {
        super(context, icVar, str);
    }

    @Override // com.byazt.wz.c
    public boolean sl() {
        if (this.ve.yp() != null) {
            String strTt = this.ve.yp().tt();
            if (TextUtils.isEmpty(strTt)) {
                t();
            } else {
                nu.c((String) null);
                Uri uri = Uri.parse(strTt);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                nb.ve(intent);
                HashMap map = new HashMap();
                map.put("source", "AndroidRDMLicManager");
                map.put("scheme", nb.c(strTt));
                com.byazt.ddx.uj.c(this.ve, this.uj, map, this.f21712u);
                try {
                    Context context = getContext();
                    nb.c(this.f21712u, this.ve, this.uj, sp());
                    com.byazt.nr.tt.startActivity(context, intent, TextUtils.equals(p.f18095x, UMModuleRegister.INNER));
                    com.byazt.ddx.uj.c(this.ve, this.uj, (Throwable) null, this.f21712u, true);
                    com.byazt.ddx.x.c().c(this.ve, this.uj, this.f21712u, sp(), null);
                    return true;
                } catch (Throwable th) {
                    com.byazt.ddx.uj.ve(this.ve, this.uj, "open_fallback_download");
                    com.byazt.ddx.uj.c(this.ve, this.uj, th, this.f21712u, false);
                }
            }
        }
        return false;
    }
}
