package com.byazt.du;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.xl.u;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.haima.hmcp.Constants;
import com.join.mgps.Util.o0;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 441, 34})
public class a {
    public static HashMap<String, String> sp;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.aq.uj f13173a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f13174c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ve f13175n;
    public JSONObject tt;
    public c uj;
    public com.byazt.aq.ve ve;

    @com.byazt.zqa.c(c = {0, 1, 441, 464})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f13176c;
        public float tt;
        public boolean ve;

        public static c c(JSONObject jSONObject) {
            c cVar = new c();
            if (jSONObject != null) {
                cVar.f13176c = (float) jSONObject.optDouble("width");
                cVar.tt = (float) jSONObject.optDouble("height");
                cVar.ve = jSONObject.optBoolean("isLandscape");
            }
            return cVar;
        }
    }

    static {
        HashMap<String, String> map = new HashMap<>();
        sp = map;
        map.put(MediaFormat.KEY_SUBTITLE, b.f89370k);
        sp.put("source", "source|app.app_name");
        sp.put("screenshot", "dynamic_creative.screenshot");
    }

    public a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.f13174c = jSONObject;
        this.tt = jSONObject2;
        this.ve = new com.byazt.aq.ve(jSONObject2);
        this.uj = c.c(jSONObject3);
        this.f13173a = com.byazt.aq.uj.c(jSONObject4);
    }

    private void tt(com.byazt.aq.x xVar) {
        com.byazt.aq.ve veVar;
        Object objC;
        Object objC2;
        Object objC3;
        Object objC4;
        if (xVar == null || (veVar = this.ve) == null || (objC = veVar.c("image.0.url")) == null) {
            return;
        }
        String strValueOf = String.valueOf(objC);
        if (TextUtils.isEmpty(strValueOf) || (objC2 = this.ve.c("title")) == null) {
            return;
        }
        String strValueOf2 = String.valueOf(objC2);
        if (TextUtils.isEmpty(strValueOf2) || (objC3 = this.ve.c(b.f89370k)) == null) {
            return;
        }
        String strValueOf3 = String.valueOf(objC3);
        if (TextUtils.isEmpty(strValueOf3) || (objC4 = this.ve.c("icon")) == null) {
            return;
        }
        String strValueOf4 = String.valueOf(objC4);
        if (TextUtils.isEmpty(strValueOf4)) {
            return;
        }
        Object objC5 = this.ve.c("app.app_name");
        Object objC6 = this.ve.c("source");
        if (objC5 == null && objC6 == null) {
            return;
        }
        if (objC5 == null) {
            objC5 = objC6;
        }
        String strValueOf5 = String.valueOf(objC5);
        if (TextUtils.isEmpty(strValueOf5)) {
            return;
        }
        xVar.c("imageUrl", strValueOf);
        xVar.c("title", strValueOf2);
        xVar.c(b.f89370k, strValueOf3);
        xVar.c("icon", strValueOf4);
        xVar.c("app_name", strValueOf5);
        xVar.c(true);
    }

    public com.byazt.aq.x c(double d10, int i10, double d11, String str, u uVar) {
        JSONObject jSONObject;
        this.ve.c();
        try {
            jSONObject = new JSONObject(this.f13173a.tt);
        } catch (JSONException e10) {
            m.c(e10);
            jSONObject = null;
        }
        com.byazt.aq.x xVarC = c(uj.c(this.f13174c, jSONObject), (com.byazt.aq.x) null);
        c(xVarC);
        n nVar = new n(d10, i10, d11, str, uVar);
        n.c cVar = new n.c();
        c cVar2 = this.uj;
        cVar.f13178c = cVar2.f13176c;
        cVar.tt = cVar2.tt;
        cVar.ve = 0.0f;
        nVar.c(cVar);
        nVar.c(xVarC, 0.0f, 0.0f);
        nVar.c();
        com.byazt.aq.tt ttVar = nVar.f13177c;
        if (ttVar.uj == 65536.0f) {
            return null;
        }
        return ttVar.f11721a;
    }

    private void c(com.byazt.aq.x xVar) {
        int iC;
        if (xVar == null) {
            return;
        }
        if (com.byazt.mf.c.c().ve() != null) {
            iC = com.byazt.mf.c.c().ve().z();
        } else {
            iC = com.byazt.or.x.c(com.byazt.sr.uj.getContext());
        }
        int iTt = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), iC);
        c cVar = this.uj;
        float fMin = cVar.ve ? cVar.f13176c : Math.min(cVar.f13176c, iTt);
        if (this.uj.tt == 0.0f) {
            xVar.n(fMin);
            xVar.da().n().da("auto");
            xVar.a(0.0f);
        } else {
            xVar.n(fMin);
            int iTt2 = com.byazt.or.x.tt(com.byazt.sr.uj.getContext(), com.byazt.or.x.ve(com.byazt.sr.uj.getContext()));
            c cVar2 = this.uj;
            xVar.a(cVar2.ve ? cVar2.tt : Math.min(cVar2.tt, iTt2));
            xVar.da().n().da("fixed");
        }
    }

    public com.byazt.aq.x c(JSONObject jSONObject, com.byazt.aq.x xVar) {
        int length;
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("type");
        if (TextUtils.equals(strOptString, "custom-component-vessel")) {
            int iOptInt = jSONObject.optInt("componentId");
            if (this.f13173a != null) {
                ve veVar = new ve();
                this.f13175n = veVar;
                JSONObject jSONObjectC = veVar.c(this.f13173a.f11727c, iOptInt, jSONObject);
                if (jSONObjectC != null) {
                    jSONObject = jSONObjectC;
                }
            }
        }
        com.byazt.aq.x xVarC = c(jSONObject);
        xVarC.c(xVar);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray == null) {
            xVarC.c((List<com.byazt.aq.x>) null);
            return xVarC;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            JSONArray jSONArrayOptJSONArray2 = jSONArrayOptJSONArray.optJSONArray(i10);
            if (jSONArrayOptJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList();
                if (TextUtils.equals(strOptString, "tag-group")) {
                    length = xVarC.da().n().s();
                } else {
                    length = jSONArrayOptJSONArray2.length();
                }
                for (int i11 = 0; i11 < length; i11++) {
                    com.byazt.aq.x xVarC2 = c(jSONArrayOptJSONArray2.optJSONObject(i11), xVarC);
                    if (com.byazt.sr.uj.c() && "skip-with-time".equals(xVarC.da().getType()) && !"transparent".equals(xVarC.gu()) && !TextUtils.isEmpty(xVarC.gu())) {
                        xVarC2.ve(xVarC.gu());
                    }
                    arrayList.add(xVarC2);
                    arrayList3.add(xVarC2);
                }
                arrayList2.add(arrayList3);
            }
        }
        if (arrayList.size() > 0) {
            xVarC.c(arrayList);
        }
        if (arrayList2.size() > 0) {
            xVarC.tt(arrayList2);
        }
        return xVarC;
    }

    public com.byazt.aq.x c(JSONObject jSONObject) {
        String strC;
        JSONObject jSONObject2;
        String strOptString = jSONObject.optString("type");
        String strOptString2 = jSONObject.optString("id");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(HmDataChannelManager.BEHAVIOR_VALUE);
        i.c(strOptString, jSONObjectOptJSONObject);
        JSONObject jSONObjectC = i.c(strOptString, i.c(jSONObject.optJSONArray("sceneValues")), jSONObjectOptJSONObject);
        com.byazt.aq.x xVar = new com.byazt.aq.x();
        if (TextUtils.isEmpty(strOptString2)) {
            xVar.tt(String.valueOf(xVar.hashCode()));
        } else {
            xVar.tt(strOptString2);
        }
        if (jSONObjectOptJSONObject != null) {
            tt(xVar);
            xVar.ve((float) jSONObjectOptJSONObject.optDouble("x"));
            xVar.uj((float) jSONObjectOptJSONObject.optDouble("y"));
            xVar.n((float) jSONObjectOptJSONObject.optDouble("width"));
            xVar.a((float) jSONObjectOptJSONObject.optDouble("height"));
            xVar.sp(jSONObjectOptJSONObject.optInt("remainWidth"));
            com.byazt.aq.n nVar = new com.byazt.aq.n();
            nVar.c(strOptString);
            nVar.tt(jSONObjectOptJSONObject.optString("data"));
            nVar.ve(jSONObjectOptJSONObject.optString("filterData"));
            nVar.uj(jSONObjectOptJSONObject.optString("dataExtraInfo"));
            com.byazt.aq.a aVarC = com.byazt.aq.a.c(jSONObjectOptJSONObject);
            nVar.c(aVarC);
            com.byazt.aq.a aVarC2 = com.byazt.aq.a.c(jSONObjectC);
            if (aVarC2 == null) {
                nVar.tt(aVarC);
            } else {
                nVar.tt(aVarC2);
            }
            c(aVarC);
            c(aVarC2);
            if (TextUtils.equals(strOptString, "video-image-budget") && (jSONObject2 = this.tt) != null) {
                c(nVar, jSONObject2.optInt("image_mode"));
            }
            String type = nVar.getType();
            com.byazt.aq.a aVarN = nVar.n();
            if (sp.containsKey(type) && !aVarN.to()) {
                aVarN.gt(sp.get(type));
            }
            if (aVarN.to()) {
                strC = nVar.tt();
            } else {
                strC = c(nVar.tt());
            }
            if (com.byazt.sr.uj.c()) {
                if (TextUtils.equals(type, "star") || TextUtils.equals(type, "text_star")) {
                    strC = c("dynamic_creative.score_exact_i18n|");
                }
                if (TextUtils.equals(type, "score-count") || TextUtils.equals(type, "score-count-type-1") || TextUtils.equals(type, "score-count-type-2")) {
                    strC = c("dynamic_creative.comment_num_i18n|");
                }
                if ("root".equals(type) && aVarC.is()) {
                    strC = c("image.0.url");
                }
            }
            if (!TextUtils.isEmpty(c()) && (TextUtils.equals("logo-union", strOptString) || TextUtils.equals("logo", strOptString))) {
                nVar.tt(strC + "adx:" + c());
            } else {
                nVar.tt(strC);
            }
            nVar.ve(c(nVar.ve()));
            xVar.c(nVar);
        }
        return xVar;
    }

    private void c(com.byazt.aq.n nVar, int i10) {
        int iLastIndexOf;
        if (i10 != 5 && i10 != 15 && i10 != 50 && i10 != 154) {
            nVar.c("image");
            String strC = i.c("image");
            com.byazt.aq.a aVarN = nVar.n();
            aVarN.gt(strC);
            nVar.sp().gt(strC);
            String strC2 = i.c("image", "clickArea");
            if (!TextUtils.isEmpty(strC2)) {
                aVarN.z(strC2);
                nVar.sp().z(strC2);
            }
            JSONObject jSONObjectJg = aVarN.jg();
            if (jSONObjectJg != null) {
                aVarN.gu(jSONObjectJg.optString("imageLottieTosPath"));
                aVarN.t(jSONObjectJg.optBoolean("animationsLoop"));
                aVarN.yv(jSONObjectJg.optInt("lottieAppNameMaxLength"));
                aVarN.md(jSONObjectJg.optInt("lottieAdDescMaxLength"));
                aVarN.p(jSONObjectJg.optInt("lottieAdTitleMaxLength"));
            }
            nVar.tt(strC);
            if (strC != null && (iLastIndexOf = strC.lastIndexOf(o0.f49827a)) > 0) {
                String strSubstring = strC.substring(0, iLastIndexOf);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("width", c(strSubstring + ".width"));
                    jSONObject.put("height", c(strSubstring + ".height"));
                } catch (JSONException e10) {
                    m.c(e10);
                }
                nVar.uj(jSONObject.toString());
            }
            aVarN.k();
            return;
        }
        nVar.c("video");
        String strC3 = i.c("video");
        nVar.n().gt(strC3);
        String strC4 = i.c("video", "clickArea");
        if (!TextUtils.isEmpty(strC4)) {
            nVar.n().z(strC4);
            nVar.sp().z(strC4);
        }
        nVar.sp().gt(strC3);
        nVar.tt(strC3);
        nVar.n().sd();
    }

    private String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : str.split(Constants.TIPS_SPECIAL_TAG)) {
            if (this.ve.tt(str2)) {
                String strValueOf = String.valueOf(this.ve.c(str2));
                if (!TextUtils.isEmpty(strValueOf)) {
                    return strValueOf;
                }
            }
        }
        return "";
    }

    private String c() {
        com.byazt.aq.ve veVar = this.ve;
        return veVar == null ? "" : String.valueOf(veVar.c("adx_name"));
    }

    private void c(com.byazt.aq.a aVar) {
        if (aVar == null) {
            return;
        }
        String strH = aVar.h();
        if (com.byazt.sr.uj.c()) {
            String strUj = com.byazt.or.x.uj(com.byazt.sr.uj.getContext());
            if ("zh".equals(strUj)) {
                strUj = "cn";
            }
            if (!TextUtils.isEmpty(strUj) && aVar.a() != null) {
                String strOptString = aVar.a().optString(strUj);
                if (!TextUtils.isEmpty(strOptString)) {
                    strH = strOptString;
                }
            }
        }
        if (TextUtils.isEmpty(strH)) {
            return;
        }
        int iIndexOf = strH.indexOf("{{");
        int iIndexOf2 = strH.indexOf("}}");
        if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf2 >= iIndexOf) {
            String strC = c(strH.substring(iIndexOf + 2, iIndexOf2));
            StringBuilder sb2 = new StringBuilder(strH.substring(0, iIndexOf));
            if (!TextUtils.isEmpty(strC)) {
                sb2.append(strC);
            }
            sb2.append(strH.substring(iIndexOf2 + 2));
            aVar.t(sb2.toString());
            return;
        }
        aVar.t(strH);
    }
}
