package com.byazt.ydv;

import android.text.TextUtils;
import com.byazt.gqp.m;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 842, 15})
public class uj implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t f22169c;

    public uj() {
        this.f22169c = null;
        this.f22169c = com.byazt.oy.tt.ve();
    }

    @Override // com.byazt.ydv.tt
    public c c(n nVar) throws IOException {
        yp.c cVar = new yp.c();
        try {
            Map<String, String> map = nVar.f22168n;
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        String value = entry.getValue();
                        if (value == null) {
                            value = "";
                        }
                        cVar.tt(key, value);
                    }
                }
            }
            m mVarTt = this.f22169c.c(cVar.c(nVar.tt).c().tt()).tt();
            com.byazt.lt.tt.c("NetworkSoureVolleyImpl", "response code = ", Integer.valueOf(mVarTt.ve()));
            return new a(mVarTt, nVar);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            return null;
        }
    }
}
