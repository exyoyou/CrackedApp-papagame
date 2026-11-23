package com.byazt.xs;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.byazt.aas.nb;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.omf.d;
import com.byazt.sz.m;
import com.byazt.sz.rh;
import com.byazt.sz.yp;
import com.byazt.sz.z;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 468, 20})
public class c implements rh, qp.c, tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.xj.ve<View> f22017c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ic f22018n;
    public com.byazt.ux.sp sp;
    public Context tt;
    public d uj;
    public com.byazt.sgn.sp.c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AtomicBoolean f22019x = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.nr.d f22016a = new com.byazt.nr.d(Looper.getMainLooper(), this);

    public c(Context context, ic icVar) {
        this.tt = context;
        this.f22018n = icVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(JSONObject jSONObject, JSONObject jSONObject2, com.byazt.ux.sp spVar) {
        this.sp = spVar;
        z zVar = new z(this.tt);
        yp ypVar = new yp();
        ypVar.c(this.tt);
        HashMap map = new HashMap();
        d dVar = new d(this.tt);
        this.uj = dVar;
        dVar.c(this.ve);
        this.uj.c(this);
        this.uj.tt(c(jSONObject2));
        String strTt = nb.tt(this.f22018n);
        this.uj.ve(nb.uj(strTt));
        this.uj.c(strTt);
        map.put("key_js_object", this.uj);
        map.put("key_material", this.f22018n);
        ypVar.tt(jSONObject2);
        ypVar.c(map);
        zVar.c("easy_dl_dialog", ypVar);
        com.byazt.xj.ve<View> veVarC = zVar.c(jSONObject);
        this.f22017c = veVarC;
        if (veVarC == null) {
            com.byazt.ux.sp spVar2 = this.sp;
            if (spVar2 != null) {
                spVar2.c(-1, "UGenWidget is null");
                return;
            }
            return;
        }
        zVar.c(this);
        zVar.tt(jSONObject2);
        com.byazt.nr.d dVar2 = this.f22016a;
        if (dVar2 != null) {
            dVar2.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    @Override // com.byazt.sz.rh
    public void c(com.byazt.xj.ve veVar, String str, com.byazt.pm.a.c cVar) {
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message == null || message.what != 1 || this.f22019x.get()) {
            return;
        }
        if (this.sp != null) {
            this.f22019x.set(true);
            this.sp.c(10, "load time out");
        }
        tt();
    }

    public void c(com.byazt.sgn.sp.c cVar) {
        this.ve = cVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    @Override // com.byazt.sz.rh
    public void c(m mVar, rh.tt ttVar, rh.c cVar) {
        JSONObject jSONObjectVe;
        if (mVar == null || this.ve == null) {
            return;
        }
        if (mVar.tt() != 1 || (jSONObjectVe = mVar.ve()) == null) {
        }
        String strOptString = jSONObjectVe.optString("type");
        strOptString.hashCode();
        switch (strOptString) {
            case "openAppPermission":
                this.ve.tt(null);
                break;
            case "openAppFunctionDesc":
                this.ve.c();
                break;
            case "closeDialog":
                this.ve.ve(null);
                break;
            case "downloadEvent":
                this.ve.c(null);
                break;
            case "openAppPolicy":
                this.ve.uj(null);
                break;
        }
    }

    public void c(final JSONObject jSONObject, final JSONObject jSONObject2, final com.byazt.ux.sp spVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            tt(jSONObject, jSONObject2, spVar);
        } else {
            com.byazt.omf.rh.a().post(new Runnable() { // from class: com.byazt.xs.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.tt(jSONObject, jSONObject2, spVar);
                }
            });
        }
    }

    private JSONObject c(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("easy_dl_dialog")) == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put("app_name", jSONObjectOptJSONObject.opt("app_name"));
            jSONObject2.put("app_version", jSONObjectOptJSONObject.opt("app_version"));
            jSONObject2.put("developer_name", jSONObjectOptJSONObject.opt("developer_name"));
            jSONObject2.put("package_name", jSONObjectOptJSONObject.opt("package_name"));
            jSONObject2.put("score", jSONObjectOptJSONObject.opt("score"));
            jSONObject2.put("icon_url", jSONObjectOptJSONObject.opt("icon_url"));
            jSONObject2.put(b.f89370k, jSONObjectOptJSONObject.opt(b.f89370k));
            jSONObject2.put("creative_tags", jSONObjectOptJSONObject.opt("creative_tags"));
            jSONObject2.put("easy_pl_material", jSONObjectOptJSONObject.opt("easy_pl_material"));
            jSONObject3.put("ugen_download_dialog", jSONObject2);
            return jSONObject3;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    private void tt() {
        com.byazt.nr.d dVar = this.f22016a;
        if (dVar == null) {
            return;
        }
        dVar.removeMessages(1);
    }

    @Override // com.byazt.xs.tt
    public void c() {
        tt();
        if (this.f22019x.get() || this.sp == null) {
            return;
        }
        this.f22019x.set(true);
        this.sp.c(this.f22017c);
    }

    @Override // com.byazt.xs.tt
    public void c(int i10, String str) {
        tt();
        if (this.f22019x.get() || this.sp == null) {
            return;
        }
        this.f22019x.set(true);
        this.sp.c(i10, str);
    }
}
