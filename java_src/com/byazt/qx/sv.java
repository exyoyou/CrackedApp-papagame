package com.byazt.qx;

import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BARRAGE_MASK})
public class sv extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.omf.d f19358c;

    public sv(com.byazt.omf.d dVar) {
        this.f19358c = dVar;
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.omf.d dVar) {
        nuVar.c("sendLog", (com.byazt.pct.n<?, ?>) new sv(dVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        long j10;
        JSONObject jSONObjectU;
        com.byazt.at.n nVar;
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (jSONObject != null) {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extJson");
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString(PointParamKey.CATEGORY);
                    String strOptString2 = jSONObjectOptJSONObject.optString(TagGameListActivity_.TAG_EXTRA);
                    String strOptString3 = jSONObjectOptJSONObject.optString(PostingActivity_.LABEL_EXTRA);
                    if (!this.f19358c.a(strOptString3)) {
                        jSONObject2.put("code", 1);
                        jSONObject2.put("msg", "is not reportclickother");
                        return jSONObject2;
                    }
                    com.byazt.ete.ic icVarX = this.f19358c.x();
                    if (com.byazt.ete.qp.tt(icVarX) && TextUtils.equals(strOptString3, "track")) {
                        jSONObject2.put("code", 1);
                        jSONObject2.put("msg", "track is not send");
                        return jSONObject2;
                    }
                    long j11 = 0;
                    try {
                        j10 = Long.parseLong(jSONObjectOptJSONObject.optString(HmInputMappingContent.FIELD_VALUE));
                    } catch (Exception unused) {
                        j10 = 0;
                    }
                    if (j10 == 0 && icVarX != null) {
                        try {
                            j10 = Long.parseLong(icVarX.uj());
                        } catch (Exception unused2) {
                        }
                    }
                    try {
                        j11 = Long.parseLong(jSONObjectOptJSONObject.optString("ext_value"));
                    } catch (Exception unused3) {
                    }
                    long j12 = j11;
                    JSONObject jSONObject3 = new JSONObject();
                    String strOptString4 = jSONObjectOptJSONObject.optString(BaseConstants.EVENT_LABEL_EXTRA);
                    if (!TextUtils.isEmpty(strOptString4)) {
                        try {
                            jSONObject3 = new JSONObject(strOptString4);
                        } catch (Exception unused4) {
                        }
                    }
                    this.f19358c.c(strOptString3, jSONObject3);
                    if ("click".equals(strOptString3)) {
                        jSONObjectU = this.f19358c.u(jSONObject3);
                        WeakReference<com.byazt.at.n> weakReferenceDa = this.f19358c.da();
                        if (weakReferenceDa != null && (nVar = weakReferenceDa.get()) != null) {
                            nVar.tt();
                        }
                    } else {
                        jSONObjectU = jSONObject3;
                    }
                    String strC = this.f19358c.c(strOptString2, strOptString3);
                    String strOptString5 = jSONObjectU.optString("log_extra");
                    if (icVarX != null && strOptString3.contains("sanfang") && TextUtils.isEmpty(strOptString5)) {
                        jSONObjectU.putOpt("log_extra", icVarX.w_());
                    }
                    com.byazt.ddx.uj.c(strOptString, strC, strOptString3, j10, j12, jSONObjectU, this.f19358c.nb());
                    jSONObject2.put("code", 0);
                } else {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("msg", "extJson is null");
                }
            } else {
                jSONObject2.put("code", 1);
                jSONObject2.put("msg", "params is null");
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            jSONObject2.put("code", 1);
            jSONObject2.put("msg", "exception: " + th.getMessage());
        }
        return jSONObject2;
    }
}
