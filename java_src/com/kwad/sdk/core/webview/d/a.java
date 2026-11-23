package com.kwad.sdk.core.webview.d;

import android.content.Context;
import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.offline.api.BuildConfig;
import com.kwad.sdk.components.d;
import com.kwad.sdk.components.h;
import com.kwad.sdk.core.webview.c.c;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.f;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.bf;
import com.kwad.sdk.utils.bt;
import com.kwad.sdk.utils.n;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements com.kwad.sdk.core.webview.c.a {

    /* JADX INFO: renamed from: com.kwad.sdk.core.webview.d.a$a, reason: collision with other inner class name */
    @KsJson
    public static final class C0943a extends com.kwad.sdk.core.response.a.a {
        public String Nq;
        public String SDKVersion;
        public int SDKVersionCode;
        public int Sp;
        public int Sq;
        public String Un;
        public String aQZ;
        public String aRa;
        public String aWY;
        public String aWn;
        public String aXa;
        public String aXb;
        public String aXo;
        public String appId;
        public String appName;
        public String appVersion;
        public int aqA;
        public int aqB;
        public String aqu;
        public String aqv;
        public int aqw;
        public String aqx;
        public int aqy;
        public String aqz;
        public String bda;
        public String bdb;
        public boolean bdc;
        public String bdd;
        public String model;
        public String sdkApiVersion;
        public int sdkApiVersionCode;
        public int sdkType;

        public static C0943a PL() {
            C0943a c0943a = new C0943a();
            c0943a.SDKVersion = BuildConfig.VERSION_NAME;
            c0943a.SDKVersionCode = BuildConfig.VERSION_CODE;
            c0943a.aWn = "6.2.3";
            c0943a.bdd = "1.3";
            c0943a.sdkApiVersion = ((f) ServiceProvider.get(f.class)).getApiVersion();
            c0943a.sdkApiVersionCode = ((f) ServiceProvider.get(f.class)).getApiVersionCode();
            c0943a.sdkType = 1;
            Context context = ((f) ServiceProvider.get(f.class)).getContext();
            c0943a.appVersion = n.cZ(context);
            c0943a.appName = ((f) ServiceProvider.get(f.class)).getAppName();
            c0943a.appId = ((f) ServiceProvider.get(f.class)).getAppId();
            c0943a.bda = "";
            c0943a.aXb = ai.getEGid();
            h hVar = (h) d.f(h.class);
            if (hVar != null) {
                c0943a.aXa = hVar.qQ();
            }
            c0943a.aqu = String.valueOf(aq.dB(context));
            c0943a.aqv = bt.WU();
            c0943a.model = bt.WK();
            c0943a.Nq = bt.WM();
            c0943a.aqw = 1;
            c0943a.aqx = bt.getOsVersion();
            c0943a.aqy = bt.WX();
            c0943a.aqz = bt.getLanguage();
            c0943a.Un = bt.getLocale();
            c0943a.bdc = ((f) ServiceProvider.get(f.class)).Fu();
            c0943a.bdb = bf.getDeviceId();
            c0943a.Sq = bt.getScreenWidth(context);
            c0943a.Sp = bt.getScreenHeight(context);
            c0943a.aQZ = bf.dO(context);
            c0943a.aRa = bf.getOaid();
            c0943a.aWY = bf.dP(context);
            c0943a.aXo = bf.dQ(context);
            c0943a.aqA = com.kwad.sdk.c.a.a.getStatusBarHeight(context);
            c0943a.aqB = com.kwad.sdk.c.a.a.a(context, 50.0f);
            return c0943a;
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull c cVar) {
        cVar.b(C0943a.PL());
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "getDeviceInfo";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
