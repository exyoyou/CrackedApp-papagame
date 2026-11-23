package com.kwad.sdk.monitor;

import androidx.annotation.Nullable;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.offline.api.core.api.ILoggerReporter;
import com.kwad.sdk.commercial.c;
import com.kwad.sdk.commercial.d;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ab;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @KsJson
    public static class a extends com.kwad.sdk.commercial.c.a {
        public String bdL;
        public int bjg;
        public String sdkVersion;
    }

    /* JADX INFO: renamed from: com.kwad.sdk.monitor.b$b, reason: collision with other inner class name */
    @KsJson
    public static class C0956b extends com.kwad.sdk.commercial.c.a {
        public int bjh;
        public String bji;
        public String bjj;
        public String bjk;
        public String bjl;
        public String bjm;
    }

    public static void Sx() {
        i.execute(new bi() { // from class: com.kwad.sdk.monitor.b.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                b.Sy();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Sy() {
        a aVarA;
        JSONObject jSONObject = (JSONObject) e.JS().getAppConfigData(null, new com.kwad.sdk.g.b<JSONObject, JSONObject>() { // from class: com.kwad.sdk.monitor.b.2
            private static JSONObject p(JSONObject jSONObject2) {
                return jSONObject2.optJSONObject("sdkTTPerfMonitor");
            }

            @Override // com.kwad.sdk.g.b
            public final /* synthetic */ JSONObject apply(JSONObject jSONObject2) {
                return p(jSONObject2);
            }
        });
        if (jSONObject == null) {
            return;
        }
        C0956b c0956b = new C0956b();
        try {
            c0956b.parseJson(jSONObject);
            if (c0956b.bjh == 1 && (aVarA = a(ServiceProvider.getContext().getClassLoader(), c0956b)) != null) {
                c.d(d.In().m34do(ILoggerReporter.Category.APM_LOG).g(0.01d).Q("ad_sdk_tt_sdk_info", x.a.f97582j).A(aVarA).a(com.kwai.adclient.kscommerciallogger.model.a.buA));
            }
        } catch (Throwable unused) {
        }
    }

    @Nullable
    private static a a(ClassLoader classLoader, C0956b c0956b) {
        Class<?> clsA = ab.a(c0956b.bji, classLoader);
        if (clsA == null) {
            return null;
        }
        a aVar = new a();
        aVar.bjg = ab.classExists(c0956b.bjj) ? 1 : 0;
        Object objCallStaticMethod = ab.callStaticMethod(clsA, c0956b.bjk, new Object[0]);
        aVar.sdkVersion = (String) ab.callMethod(objCallStaticMethod, c0956b.bjl, new Object[0]);
        aVar.bdL = (String) ab.callMethod(objCallStaticMethod, c0956b.bjm, new Object[0]);
        return aVar;
    }
}
