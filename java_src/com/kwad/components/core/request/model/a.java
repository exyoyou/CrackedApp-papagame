package com.kwad.components.core.request.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.request.j;
import com.kwad.sdk.commercial.convert.e;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.internal.api.SceneImpl;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    @NonNull
    public final ImpInfo abn;

    @NonNull
    public final com.kwad.components.core.request.c ajK;

    @Nullable
    public j ajL;

    @Nullable
    public List<String> ajM;
    public boolean ajN;
    public boolean ajO;

    @Nullable
    public c ajP;
    private String ajQ;

    /* JADX INFO: renamed from: com.kwad.components.core.request.model.a$a, reason: collision with other inner class name */
    public static class C0881a {
        public ImpInfo abn;
        public com.kwad.components.core.request.c ajK;
        public boolean ajN;
        public boolean ajO;
        public j ajR;

        public final C0881a a(@NonNull com.kwad.components.core.request.c cVar) {
            this.ajK = cVar;
            return this;
        }

        public final C0881a aY(boolean z10) {
            this.ajN = true;
            return this;
        }

        public final C0881a aZ(boolean z10) {
            this.ajO = z10;
            return this;
        }

        public final C0881a e(ImpInfo impInfo) {
            this.abn = impInfo;
            return this;
        }

        public final a wd() {
            if (com.kwad.components.ad.f.a.pe.booleanValue() && (this.abn == null || this.ajK == null)) {
                throw new IllegalStateException("AdRequestParams build Illegal");
            }
            return new a(this, (byte) 0);
        }

        public final C0881a a(j jVar) {
            this.ajR = jVar;
            return this;
        }
    }

    /* synthetic */ a(C0881a c0881a, byte b10) {
        this(c0881a);
    }

    public static void a(@NonNull a aVar, AdResultData adResultData, boolean z10) {
        e.a(aVar.abn.adScene, aVar.wc(), adResultData.getAdSource());
        if (adResultData.isAdResultDataEmpty()) {
            aVar.ajK.a(com.kwad.sdk.core.network.e.aTe.errorCode, TextUtils.isEmpty(adResultData.testErrorMsg) ? com.kwad.sdk.core.network.e.aTe.msg : adResultData.testErrorMsg, z10);
        } else {
            aVar.ajK.a(adResultData, z10);
        }
    }

    public final void bi(String str) {
        this.ajQ = str;
    }

    public final int getAdNum() {
        SceneImpl sceneImpl = this.abn.adScene;
        if (sceneImpl != null) {
            return sceneImpl.getAdNum();
        }
        return 1;
    }

    public final int getAdStyle() {
        SceneImpl sceneImpl = this.abn.adScene;
        if (sceneImpl != null) {
            return sceneImpl.adStyle;
        }
        return 0;
    }

    public final long getPosId() {
        SceneImpl sceneImpl = this.abn.adScene;
        if (sceneImpl != null) {
            return sceneImpl.getPosId();
        }
        return -1L;
    }

    @Nullable
    public final j wb() {
        return this.ajL;
    }

    public final String wc() {
        return !TextUtils.isEmpty(this.ajQ) ? this.ajQ : "network_only";
    }

    private a(C0881a c0881a) {
        this.abn = c0881a.abn;
        this.ajK = c0881a.ajK;
        this.ajN = c0881a.ajN;
        this.ajO = c0881a.ajO;
        this.ajL = c0881a.ajR;
    }

    public static void a(@NonNull a aVar, int i10, String str, boolean z10) {
        aVar.ajK.a(i10, str, z10);
        e.a(aVar.getAdStyle(), i10, str, aVar.wc());
    }
}
