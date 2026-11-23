package com.byazt.sz;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.coremedia.iso.boxes.g0;
import com.umeng.analytics.pro.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 42})
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONObject f20022a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f20023c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f20024da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f20025i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f20026n;
    public boolean sp;
    public JSONObject tt;
    public JSONObject uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f20027x;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 64})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c f20028a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f20029c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public boolean f20030da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f20031i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public LinkedList<c> f20032n;
        public boolean sl;
        public String sp;
        public String tt;
        public JSONObject uj;
        public JSONObject ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f20033x;

        public List<c> a() {
            return this.f20032n;
        }

        public JSONObject n() {
            return this.ve;
        }

        public JSONObject sp() {
            return this.uj;
        }

        public String toString() {
            return "UGNode{id='" + this.f20029c + "', name='" + this.tt + "'}";
        }

        public String uj() {
            return this.tt;
        }

        public String tt() {
            return this.sp;
        }

        public boolean ve() {
            return this.f20031i;
        }

        public void tt(boolean z10) {
            this.sl = z10;
        }

        public String c() {
            return this.f20029c;
        }

        public void tt(c cVar) {
            if (this.f20032n == null) {
                this.f20032n = new LinkedList<>();
            }
            this.f20032n.addLast(cVar);
        }

        public void c(String str) {
            this.tt = str;
        }

        public void c(boolean z10) {
            this.f20030da = z10;
        }

        public void c(c cVar) {
            if (this.f20032n == null) {
                this.f20032n = new LinkedList<>();
            }
            this.f20032n.add(cVar);
        }

        public void c(int i10, c cVar) {
            if (this.f20032n == null) {
                this.f20032n = new LinkedList<>();
            }
            this.f20032n.add(i10, cVar);
        }
    }

    public i(JSONObject jSONObject, JSONObject jSONObject2) {
        this(jSONObject, jSONObject2, null);
    }

    private c n() {
        if (!uj()) {
            return c(this.f20023c, (c) null);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("flexDirection", "row");
            jSONObject.put("justifyContent", "flex_start");
            jSONObject.put("alignItems", "flex_start");
            jSONObject.put("clickable", false);
            jSONObject.put("width", "match_parent");
            jSONObject.put("height", "wrap_content");
            float f10 = this.f20027x;
            if (f10 > 0.0f) {
                jSONObject.put("width", f10);
            }
            float f11 = this.f20025i;
            if (f11 > 0.0f) {
                jSONObject.put("height", f11);
            }
            JSONObject jSONObject2 = this.uj;
            if (jSONObject2 != null) {
                String strOptString = jSONObject2.optString("xSize");
                if (!TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject3 = new JSONObject(strOptString);
                    if (jSONObject3.optInt("width") > 0) {
                        jSONObject.put("width", jSONObject3.optInt("width"));
                    }
                    if (jSONObject3.optInt("height") > 0) {
                        jSONObject.put("height", jSONObject3.optInt("height"));
                    }
                }
            }
        } catch (JSONException unused) {
        }
        c cVar = new c();
        cVar.tt = "View";
        cVar.f20029c = "virtualNode";
        cVar.ve = jSONObject;
        cVar.f20028a = null;
        cVar.sp = this.ve;
        cVar.f20031i = this.f20024da;
        cVar.f20033x = this.f20026n;
        cVar.c(c(this.f20023c, cVar));
        return cVar;
    }

    public c c() {
        return n();
    }

    public String tt() {
        return this.ve;
    }

    public boolean uj() {
        return this.sp;
    }

    public List<c> ve() {
        if (this.tt == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = this.tt.keys();
        while (itKeys.hasNext()) {
            c cVarC = c(this.tt.optJSONObject(itKeys.next()), (c) null);
            if (cVarC != null) {
                arrayList.add(cVarC);
            }
        }
        return arrayList;
    }

    public i(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        this.f20024da = true;
        if (jSONObject != null) {
            if (jSONObject.has("body")) {
                this.f20023c = jSONObject.optJSONObject("body");
            } else {
                this.f20023c = jSONObject.optJSONObject("main_template");
            }
            this.tt = jSONObject.optJSONObject("sub_templates");
            JSONObject jSONObjectOptJSONObject = jSONObject.has(g0.f24873q) ? jSONObject.optJSONObject(g0.f24873q) : jSONObject.optJSONObject("template_info");
            if (jSONObjectOptJSONObject != null) {
                if (jSONObject.has("body")) {
                    this.sp = true;
                    String strOptString = jSONObjectOptJSONObject.optString("version");
                    this.ve = strOptString;
                    if (TextUtils.isEmpty(strOptString)) {
                        this.ve = "3.0";
                    }
                } else {
                    this.ve = jSONObjectOptJSONObject.optString("sdk_version");
                }
                if (jSONObjectOptJSONObject.has("adType")) {
                    this.f20026n = jSONObjectOptJSONObject.optString("adType");
                }
                if (jSONObjectOptJSONObject.has("gestureThrough")) {
                    this.f20024da = com.byazt.cd.ve.c(jSONObjectOptJSONObject.optString("gestureThrough"), true);
                }
            } else if (jSONObject.has("body")) {
                this.ve = "3.0";
                this.sp = true;
            }
            this.uj = jSONObject2;
            this.f20022a = jSONObject3;
        }
    }

    public static boolean uj(c cVar) {
        return (cVar == null || cVar.ve == null) ? false : true;
    }

    public void c(float f10, float f11) {
        this.f20027x = f10;
        this.f20025i = f11;
    }

    public boolean tt(c cVar) {
        JSONObject jSONObjectN;
        if (cVar == null || (jSONObjectN = cVar.n()) == null) {
            return false;
        }
        return TextUtils.equals(jSONObjectN.optString("height"), "match_parent");
    }

    private c c(JSONObject jSONObject, c cVar) {
        String strOptString;
        String strOptString2;
        c cVarC;
        if (jSONObject == null) {
            return null;
        }
        if (jSONObject.has("type")) {
            strOptString = jSONObject.optString("type");
        } else {
            strOptString = jSONObject.optString("name");
        }
        String strOptString3 = jSONObject.optString("id");
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.equals(next, "children")) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        }
        c cVar2 = new c();
        cVar2.f20029c = strOptString3;
        if (!this.sp || !TextUtils.equals("Video", strOptString)) {
            cVar2.tt = strOptString;
        } else {
            cVar2.tt = strOptString + "V3";
        }
        cVar2.ve = jSONObject2;
        cVar2.f20028a = cVar;
        cVar2.sp = this.ve;
        cVar2.f20031i = this.f20024da;
        cVar2.f20033x = this.f20026n;
        if (jSONObject2.has("i18n")) {
            cVar2.uj = jSONObject2.optJSONObject("i18n");
        }
        if (TextUtils.equals(strOptString, "CustomComponent")) {
            c(jSONObject, cVar2.ve);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            int i10 = 0;
            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i11);
                if (jSONObject.has("type")) {
                    strOptString2 = jSONObject.optString("type");
                } else {
                    strOptString2 = jSONObject.optString("name");
                }
                String strC = com.byazt.wj.tt.c(jSONObjectOptJSONObject.optString("id"), this.uj);
                if (TextUtils.equals(strOptString2, "Template")) {
                    JSONObject jSONObject3 = this.tt;
                    if (jSONObject3 != null) {
                        jSONObjectOptJSONObject = jSONObject3.optJSONObject(strC);
                        cVarC = c(jSONObjectOptJSONObject, cVar2);
                    } else {
                        cVarC = null;
                    }
                } else {
                    cVarC = c(jSONObjectOptJSONObject, cVar2);
                }
                if (cVarC != null) {
                    cVarC.tt(tt(cVarC));
                    cVarC.c(c(cVarC));
                }
                if (ve(cVarC)) {
                    i10++;
                    cVar2.tt(cVarC);
                } else if (cVarC != null) {
                    cVar2.c(i11 - i10, cVarC);
                }
            }
        }
        return cVar2;
    }

    public boolean ve(c cVar) {
        JSONObject jSONObjectN;
        if (cVar == null || (jSONObjectN = cVar.n()) == null) {
            return false;
        }
        return TextUtils.equals(jSONObjectN.optString("position"), "absolute");
    }

    public boolean c(c cVar) {
        JSONObject jSONObjectN;
        if (cVar == null || (jSONObjectN = cVar.n()) == null) {
            return false;
        }
        return TextUtils.equals(jSONObjectN.optString("width"), "match_parent");
    }

    private void c(JSONObject jSONObject, JSONObject jSONObject2) {
        if (this.f20022a == null || jSONObject2 == null) {
            return;
        }
        try {
            String strOptString = this.f20022a.optString(jSONObject2.optString("targetId"));
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject(strOptString);
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("targetProps");
            if (jSONObjectOptJSONObject != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object objOpt = jSONObjectOptJSONObject.opt(next);
                    if (TextUtils.equals(next, f.ax) && jSONObject3.has(f.ax)) {
                        if (objOpt instanceof JSONArray) {
                            com.byazt.cd.tt.c(jSONObject3.optJSONArray(f.ax), (JSONArray) objOpt);
                        }
                    } else {
                        jSONObject3.put(next, objOpt);
                    }
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                jSONArrayOptJSONArray.put(jSONObject3);
                if (jSONObject.has("children")) {
                    return;
                }
                jSONObject.put("children", jSONArrayOptJSONArray);
            }
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }
}
