package com.kwad.components.core.p;

import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.bv.BaseConstants;
import com.kwad.components.core.proxy.a.b;
import com.kwad.components.offline.api.BuildConfig;
import com.kwad.sdk.collector.f;
import com.kwad.sdk.components.d;
import com.kwad.sdk.components.p;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.report.g;
import com.kwad.sdk.core.report.n;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import com.kwad.sdk.utils.o;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static boolean ajy;

    /* JADX INFO: renamed from: com.kwad.components.core.p.a$a, reason: collision with other inner class name */
    static final class C0870a {
        private static final a ajA = new a();
    }

    protected a() {
    }

    public static n S(long j10) {
        return new n(j10);
    }

    private static n a(long j10, AdTemplate adTemplate, String str) {
        return new n(j10, adTemplate, str);
    }

    private static n b(long j10, AdTemplate adTemplate) {
        return new n(j10, adTemplate);
    }

    public static a vL() {
        return C0870a.ajA;
    }

    public final void aL(Context context) {
        n nVarS = S(11L);
        p pVar = (p) d.f(p.class);
        if (pVar != null) {
            JSONArray[] jSONArrayArrB = pVar.b(context, e.FL());
            nVarS.aVE = jSONArrayArrB[0];
            nVarS.aVF = jSONArrayArrB[1];
            g.a(nVarS);
        }
    }

    public final void bQ(int i10) {
        n nVarS = S(10104L);
        nVarS.aVM = i10;
        g.a(nVarS);
    }

    public final void bR(int i10) {
        n nVarS = S(10107L);
        nVarS.aVN = i10;
        g.a(nVarS);
    }

    public final void bd(@NonNull AdTemplate adTemplate) {
        g.a(b(10007L, adTemplate));
    }

    public final void be(@NonNull AdTemplate adTemplate) {
        g.a(b(10208L, adTemplate));
    }

    public final void bf(@NonNull AdTemplate adTemplate) {
        g.a(b(10209L, adTemplate));
    }

    public final void c(@NonNull JSONArray jSONArray) {
        n nVarS = S(10200L);
        nVarS.aVQ = jSONArray;
        g.a(nVarS);
    }

    public final void e(@NonNull JSONObject jSONObject, int i10) {
        n nVarS = S(10201L);
        ac.putValue(jSONObject, "appChangeType", i10);
        nVarS.aVP = jSONObject;
        g.a(nVarS);
    }

    public final void g(AdTemplate adTemplate, int i10, String str) {
        n nVarB = b(10109L, adTemplate);
        nVarB.aVN = 1;
        nVarB.aVO = str;
        g.a(nVarB);
    }

    public final void h(@NonNull AdTemplate adTemplate, long j10) {
        n nVarB = b(10202L, adTemplate);
        nVarB.aVU = j10;
        g.a(nVarB);
    }

    public final void i(AdTemplate adTemplate, int i10) {
        n nVarB = b(10108L, adTemplate);
        nVarB.aVN = i10;
        g.a(nVarB);
    }

    public final void j(AdTemplate adTemplate, long j10) {
        n nVarB = b(10207L, adTemplate);
        nVarB.aWl = j10;
        g.a(nVarB);
    }

    public final void l(@NonNull AdTemplate adTemplate, int i10, int i11) {
        n nVarB = b(12006L, adTemplate);
        nVarB.aqR = i10;
        nVarB.aMA = i11;
        g.a(nVarB);
    }

    public final void m(@NonNull AdTemplate adTemplate, int i10, int i11) {
        n nVarB = b(10002L, adTemplate);
        nVarB.Nd();
        if (com.kwad.sdk.core.response.helper.e.eG(adTemplate)) {
            nVarB.aVL = com.kwad.sdk.core.response.helper.a.M(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        } else {
            nVarB.aVL = com.kwad.sdk.core.response.helper.e.eQ(adTemplate);
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("what", i10);
            jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, i11);
            nVarB.errorMsg = jSONObject.toString();
        } catch (JSONException e10) {
            c.printStackTraceOnly(e10);
        }
        g.a(nVarB);
    }

    public final n o(String str, String str2) {
        n nVarS = S(12200L);
        nVarS.aWt = str;
        nVarS.aWu = str2;
        return nVarS;
    }

    public final void vM() {
        if (ajy) {
            return;
        }
        ajy = true;
        i.execute(new bi() { // from class: com.kwad.components.core.p.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                n nVarS = a.S(8L);
                nVarS.aWm = f.Ia();
                g.a(nVarS);
            }
        });
    }

    public final void vN() {
        g.a(S(10101L));
    }

    public final void vO() {
        g.a(S(10106L));
    }

    public final void a(@NonNull AdTemplate adTemplate, String str, String str2) {
        n nVarB = b(10003L, adTemplate);
        nVarB.aVL = str;
        nVarB.errorMsg = str2;
        g.a(nVarB);
    }

    public final void b(@NonNull AdTemplate adTemplate, String str, String str2) {
        n nVarB = b(10005L, adTemplate);
        if (com.kwad.sdk.core.response.helper.e.eG(adTemplate)) {
            nVarB.aVL = com.kwad.sdk.core.response.helper.a.M(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        } else {
            nVarB.aVL = com.kwad.sdk.core.response.helper.e.eQ(adTemplate);
        }
        nVarB.aVL = str;
        nVarB.errorMsg = str2;
        g.a(nVarB);
    }

    public final void c(long j10, int i10) {
        if (e.Kq()) {
            n nVarS = S(20000L);
            nVarS.timestamp = System.currentTimeMillis();
            nVarS.aWv = i10;
            nVarS.posId = j10;
            nVarS.aWw = BuildConfig.VERSION_CODE;
            g.a(nVarS);
        }
    }

    public final void h(@NonNull AdTemplate adTemplate, int i10, String str) {
        n nVarB = b(107L, adTemplate);
        nVarB.errorCode = i10;
        nVarB.errorMsg = str;
        g.a(nVarB);
    }

    public final void i(AdTemplate adTemplate, long j10) {
        n nVarB = b(10206L, adTemplate);
        nVarB.aWk = j10;
        g.a(nVarB);
    }

    public final void j(@NonNull AdTemplate adTemplate, int i10) {
        if (e.Kq()) {
            AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
            n nVarS = S(20000L);
            nVarS.timestamp = System.currentTimeMillis();
            nVarS.aWv = i10;
            nVarS.trace = adInfoEO.trace;
            nVarS.aWw = BuildConfig.VERSION_CODE;
            nVarS.posId = com.kwad.sdk.core.response.helper.e.eH(adTemplate);
            g.a(nVarS);
        }
    }

    public final void e(String str, String str2, boolean z10) {
        g.a(o(str, str2), z10);
    }

    public final void a(int i10, @NonNull AdTemplate adTemplate, String str) {
        g.a(a(i10, adTemplate, str));
    }

    public final void a(@NonNull AdTemplate adTemplate, long j10, long j11, int i10) {
        n nVarB = b(10203L, adTemplate);
        nVarB.apv = j10;
        nVarB.blockDuration = j11;
        nVarB.aVB = i10;
        g.a(nVarB);
    }

    public final void a(boolean z10, List<Integer> list) {
        n nVarS = S(10204L);
        nVarS.aVW = z10;
        if (list.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it2 = list.iterator();
            while (it2.hasNext()) {
                jSONArray.put(it2.next());
            }
            nVarS.aVV = jSONArray;
        }
        g.a(nVarS);
    }

    public final void a(SceneImpl sceneImpl, boolean z10, String str) {
        n nVarS = S(10216L);
        nVarS.aVW = z10;
        nVarS.aVX = str;
        nVarS.adScene = sceneImpl;
        g.a(nVarS);
    }

    public final void a(@NonNull AdTemplate adTemplate, long j10, int i10) {
        n nVarB = b(104L, adTemplate);
        nVarB.clickTime = o.fs(adTemplate);
        nVarB.aWa = j10;
        nVarB.aWb = i10;
        g.a(nVarB);
    }

    public final void a(b bVar) {
        n nVarS = S(10215L);
        nVarS.ajo = bVar.ajo;
        nVarS.ajv = bVar.ajv;
        nVarS.ajw = bVar.ajw;
        nVarS.ajx = bVar.ajx;
        g.a(nVarS);
    }
}
