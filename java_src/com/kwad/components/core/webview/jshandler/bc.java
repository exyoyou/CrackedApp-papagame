package com.kwad.components.core.webview.jshandler;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.api.KsAppDownloadListener;
import com.kwad.sdk.core.NetworkMonitor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bc implements com.kwad.sdk.core.webview.c.a {

    @Nullable
    private KsAppDownloadListener aph;

    @Nullable
    private com.kwad.sdk.core.webview.c.c apx;

    @Nullable
    private KsAppDownloadListener arC;
    private final com.kwad.sdk.core.webview.b fi;
    private com.kwad.components.core.e.d.d mApkDownloadHelper;

    public static final class a implements com.kwad.sdk.core.b {
        public float arE;
        public float arF;
        public long creativeId;
        public long soFarBytes;
        public int status;
        public long totalBytes;

        @Override // com.kwad.sdk.core.b
        public final void parseJson(@Nullable JSONObject jSONObject) {
        }

        @Override // com.kwad.sdk.core.b
        public final JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            com.kwad.sdk.utils.ac.putValue(jSONObject, "progress", this.arE);
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", this.status);
            com.kwad.sdk.utils.ac.putValue(jSONObject, "totalBytes", this.totalBytes);
            com.kwad.sdk.utils.ac.putValue(jSONObject, "soFarBytes", this.soFarBytes);
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realProgress", this.arF);
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creativeId", this.creativeId);
            return jSONObject;
        }
    }

    public bc(com.kwad.sdk.core.webview.b bVar, @Nullable com.kwad.components.core.e.d.d dVar) {
        this.fi = bVar;
        this.mApkDownloadHelper = dVar;
    }

    private KsAppDownloadListener yr() {
        return new com.kwad.sdk.core.download.a.a() { // from class: com.kwad.components.core.webview.jshandler.bc.1
            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFailed() {
                bc.this.a(1, 0.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onDownloadFinished() {
                bc.this.a(5, 1.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onIdle() {
                bc.this.a(1, 0.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onInstalled() {
                bc.this.a(6, 1.0f);
                if (bc.this.arC != null) {
                    bc.this.arC.onInstalled();
                }
            }

            @Override // com.kwad.sdk.core.download.a.a
            public final void onPaused(int i10) {
                bc.this.a(3, (i10 * 1.0f) / 100.0f);
            }

            @Override // com.kwad.sdk.api.KsAppDownloadListener
            public final void onProgressUpdate(int i10) {
                bc.this.a(2, (i10 * 1.0f) / 100.0f);
            }
        };
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerProgressListener";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        KsAppDownloadListener ksAppDownloadListener;
        this.apx = null;
        com.kwad.components.core.e.d.d dVar = this.mApkDownloadHelper;
        if (dVar == null || (ksAppDownloadListener = this.aph) == null) {
            return;
        }
        dVar.c(ksAppDownloadListener);
        this.aph = null;
    }

    public final void setApkDownloadHelper(com.kwad.components.core.e.d.d dVar) {
        this.mApkDownloadHelper.qC();
        com.kwad.sdk.core.download.b.Lz().a(this.mApkDownloadHelper);
        if (com.kwad.sdk.core.config.e.Kc()) {
            NetworkMonitor.getInstance().a(this.mApkDownloadHelper);
        }
        this.mApkDownloadHelper = dVar;
        KsAppDownloadListener ksAppDownloadListenerYr = yr();
        this.aph = ksAppDownloadListenerYr;
        this.mApkDownloadHelper.b(ksAppDownloadListenerYr);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        if (this.fi.Pv()) {
            cVar.onError(-1, "native photo is null");
            return;
        }
        this.apx = cVar;
        com.kwad.components.core.e.d.d dVar = this.mApkDownloadHelper;
        if (dVar != null) {
            KsAppDownloadListener ksAppDownloadListener = this.aph;
            if (ksAppDownloadListener == null) {
                KsAppDownloadListener ksAppDownloadListenerYr = yr();
                this.aph = ksAppDownloadListenerYr;
                this.mApkDownloadHelper.b(ksAppDownloadListenerYr);
                return;
            }
            dVar.d(ksAppDownloadListener);
        }
    }

    public bc(com.kwad.sdk.core.webview.b bVar, @Nullable com.kwad.components.core.e.d.d dVar, @Nullable KsAppDownloadListener ksAppDownloadListener) {
        this.fi = bVar;
        this.mApkDownloadHelper = dVar;
        this.arC = ksAppDownloadListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, float f10) {
        if (this.apx != null) {
            a aVar = new a();
            aVar.arE = f10;
            aVar.status = i10;
            aVar.totalBytes = com.kwad.sdk.core.response.helper.e.eO(this.fi.getAdTemplate()).totalBytes;
            long j10 = com.kwad.sdk.core.response.helper.e.eO(this.fi.getAdTemplate()).soFarBytes;
            aVar.soFarBytes = j10;
            long j11 = aVar.totalBytes;
            if (j11 > 0) {
                aVar.arF = (j10 * 1.0f) / j11;
            } else {
                aVar.arF = 0.0f;
            }
            this.apx.b(aVar);
        }
    }
}
