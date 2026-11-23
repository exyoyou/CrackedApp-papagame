package com.byazt.ete;

import android.text.TextUtils;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, TcMouseManager.MOUSE_STARY})
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13842a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13843c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13844n;
    public ir tt;
    public int uj;
    public c ve;

    @com.byazt.zqa.c(c = {0, 1, 8, 2191})
    public static class c extends u {
        public C0303c tt;
        public C0303c ve;

        /* JADX INFO: renamed from: com.byazt.ete.p$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, 8, 2291})
        public static class C0303c {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f13845c;
            public int tt;

            public C0303c(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                this.f13845c = jSONObject.optString("entry");
                this.tt = jSONObject.optInt("displayAreaAndroid");
            }

            public boolean c() {
                return !TextUtils.isEmpty(this.f13845c);
            }
        }

        public c(JSONObject jSONObject, int i10) {
            if (jSONObject == null) {
                return;
            }
            this.tt = new C0303c(jSONObject.optJSONObject("vertical"));
            this.ve = new C0303c(jSONObject.optJSONObject("horizontal"));
            this.f13899c = i10;
        }

        public boolean a() {
            C0303c c0303c = this.ve;
            if (c0303c != null && c0303c.c()) {
                return true;
            }
            C0303c c0303c2 = this.tt;
            return c0303c2 != null && c0303c2.c();
        }

        public String c(boolean z10) {
            C0303c c0303c;
            if (z10 && (c0303c = this.tt) != null && c0303c.c()) {
                return this.tt.f13845c;
            }
            C0303c c0303c2 = this.ve;
            if (c0303c2 != null && c0303c2.c()) {
                return this.ve.f13845c;
            }
            C0303c c0303c3 = this.tt;
            return (c0303c3 == null || !c0303c3.c()) ? "" : this.tt.f13845c;
        }

        @Override // com.byazt.ete.u
        public String n() {
            return "";
        }

        @Override // com.byazt.ete.u
        public int uj() {
            C0303c c0303c = this.tt;
            if (c0303c != null) {
                return c0303c.tt;
            }
            C0303c c0303c2 = this.ve;
            if (c0303c2 != null) {
                return c0303c2.tt;
            }
            return 0;
        }

        @Override // com.byazt.ete.u
        public int ve() {
            return 0;
        }
    }

    public p(JSONObject jSONObject) {
        this.f13843c = false;
        if (jSONObject == null) {
            return;
        }
        this.f13843c = jSONObject.optBoolean("use_interact_webview", false);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("easy_playable_client");
        if (jSONObjectOptJSONObject != null) {
            this.tt = new ir(jSONObjectOptJSONObject.optJSONObject("components"), 1);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("easy_playable");
        if (jSONObjectOptJSONObject2 != null) {
            this.ve = new c(jSONObjectOptJSONObject2.optJSONObject("components"), 2);
        }
        this.uj = jSONObject.optInt("style_category");
        this.f13844n = jSONObject.optString("exp_id");
        this.f13842a = jSONObject.optString("group_id");
    }

    public static String a(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.vt().f13842a;
    }

    public static boolean c(ic icVar) {
        return tt(icVar) || ve(icVar);
    }

    public static String n(ic icVar) {
        if (icVar == null) {
            return null;
        }
        return icVar.vt().f13844n;
    }

    public static c sp(ic icVar) {
        p pVarVt;
        if (icVar == null || (pVarVt = icVar.vt()) == null) {
            return null;
        }
        return pVarVt.ve;
    }

    public static boolean tt(ic icVar) {
        p pVarVt;
        ir irVar;
        return (icVar == null || (pVarVt = icVar.vt()) == null || (irVar = pVarVt.tt) == null || !irVar.t()) ? false : true;
    }

    public static int uj(ic icVar) {
        if (icVar == null) {
            return 0;
        }
        return icVar.vt().uj;
    }

    public static boolean ve(ic icVar) {
        p pVarVt;
        c cVar;
        return (icVar == null || (pVarVt = icVar.vt()) == null || !pVarVt.f13843c || (cVar = pVarVt.ve) == null || !cVar.a()) ? false : true;
    }

    public static ir x(ic icVar) {
        p pVarVt;
        if (icVar == null || (pVarVt = icVar.vt()) == null) {
            return null;
        }
        return pVarVt.tt;
    }

    public static boolean c() {
        int i10 = com.byazt.omf.p.uj;
        return (i10 >= 6322 && i10 < 6400) || i10 >= 6406;
    }
}
