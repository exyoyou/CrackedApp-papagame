package com.kwad.sdk.core.network;

import androidx.annotation.Nullable;
import com.join.mgps.cloud.bean.HMMessage;
import com.kwad.components.offline.api.BuildConfig;
import com.kwad.sdk.components.DevelopMangerComponents;
import com.kwad.sdk.core.request.model.StatusInfo;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.be;
import com.umeng.umcrash.UMCrash;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends b {
    public static final String TRACK_ID_KEY = "kuaishou-tracing-token";
    public static boolean hadCreateInstance;

    public d() {
        this(0, null);
    }

    private void appendKUAHeader() {
        com.kwad.sdk.service.a.f fVar;
        com.kwad.sdk.core.i.c cVarK = com.kwad.sdk.core.i.a.k(true, false);
        if (cVarK == null || (fVar = (com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)) == null) {
            return;
        }
        addHeader("KUA", cVarK.cd(fVar.getContext()));
    }

    @Override // com.kwad.sdk.core.network.b
    protected void buildBaseBody() {
        try {
            putBody("protocolVersion", "2.0");
            putBody("SDKVersion", BuildConfig.VERSION_NAME);
            putBody("SDKVersionCode", BuildConfig.VERSION_CODE);
            putBody("sdkApiVersion", ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getApiVersion());
            putBody("sdkApiVersionCode", ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).getApiVersionCode());
            int i10 = 1;
            putBody("sdkType", 1);
            putBody("appInfo", com.kwad.sdk.core.request.model.a.Np());
            putBody("tkVersion", "6.2.3");
            putBody("adSdkVersion", BuildConfig.VERSION_NAME);
            putBody("networkInfo", com.kwad.sdk.core.request.model.d.Nt());
            putBody("liveSupportMode", ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).tu() ? 1 : 0);
            putBody("waynePlayerSupportMode", ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).tt() ? 1 : 0);
            if (!((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).tr()) {
                i10 = 0;
            }
            putBody("closureSupportMode", i10);
            putBody(HMMessage.ACTION_USER_INFO, com.kwad.sdk.core.request.model.g.Nw());
            putBody("requestSessionData", q.Mj().eL(getUrl()));
            putBody(UMCrash.SP_KEY_TIMESTAMP, System.currentTimeMillis());
            if (enablePrivateInfoObtain()) {
                buildBaseBodyWithPrivateInfo();
            }
        } catch (Throwable th) {
            reportSdkCaughtException(th);
        }
        putBody("mediumDisableSensor", be.useSensorManagerDisable());
        putBody("kwaiMerchantSdkVersion", "1.1.0");
    }

    protected void buildBaseBodyWithPrivateInfo() {
        try {
            putBody("geoInfo", com.kwad.sdk.core.request.model.c.Ns());
            putBody("kGeoInfo", ((com.kwad.sdk.service.a.f) ServiceProvider.get(com.kwad.sdk.service.a.f.class)).Fz());
            putBody("ext", com.kwad.sdk.core.request.model.e.Nv());
        } catch (Throwable th) {
            reportSdkCaughtException(th);
        }
    }

    @Override // com.kwad.sdk.core.network.b
    protected void buildBaseHeader() {
        if (com.kwad.framework.b.a.pe.booleanValue()) {
            com.kwad.sdk.components.d.f(DevelopMangerComponents.class);
            addHeader("trace-context", "{\"laneId\":\"STAGING.online.u\"}");
            com.kwad.sdk.components.d.f(DevelopMangerComponents.class);
        }
    }

    protected boolean enablePrivateInfoObtain() {
        return true;
    }

    protected boolean needAppList() {
        return false;
    }

    protected boolean needAppendKuaHeader() {
        return true;
    }

    protected boolean needDeviceInfoBody() {
        return true;
    }

    public d(int i10, @Nullable SceneImpl sceneImpl) {
        hadCreateInstance = true;
        if (needAppendKuaHeader()) {
            appendKUAHeader();
        }
        if (needDeviceInfoBody()) {
            putBody("deviceInfo", com.kwad.sdk.utils.c.d.k(needAppList(), i10));
        }
        if (sceneImpl != null) {
            putBody("statusInfo", StatusInfo.e(sceneImpl));
        }
    }
}
