package com.kwad.components.ad.reward.k;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.webview.jshandler.am;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class p extends am {
    private long Cc;
    private String Cd;

    /* JADX INFO: renamed from: ua, reason: collision with root package name */
    private WeakReference<com.kwad.components.ad.reward.g> f75194ua;

    public p(com.kwad.components.ad.reward.g gVar, String str, long j10, com.kwad.sdk.core.webview.b bVar) {
        super(bVar);
        this.Cd = str;
        this.Cc = j10;
        if (gVar != null) {
            this.f75194ua = new WeakReference<>(gVar);
        }
    }

    private static boolean ab(String str) {
        try {
            return new JSONObject(str).optInt("elementType") == 18;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.kwad.components.core.webview.jshandler.am
    public final void b(boolean z10, AdTemplate adTemplate, @Nullable JSONObject jSONObject, @Nullable com.kwad.sdk.core.adlog.c.b bVar) {
        com.kwad.components.ad.reward.j.b.a(z10, adTemplate, null, bVar);
    }

    private boolean b(am.b bVar) {
        WeakReference<com.kwad.components.ad.reward.g> weakReference;
        if (bVar.getActionType() != 140 || !com.kwad.sdk.core.config.e.FZ() || !ab(bVar.yv()) || (weakReference = this.f75194ua) == null || weakReference.get() == null) {
            return false;
        }
        final com.kwad.components.ad.reward.g gVar = this.f75194ua.get();
        by.runOnUiThreadDelay(new bi() { // from class: com.kwad.components.ad.reward.k.p.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                gVar.E(p.this.Cd);
            }
        }, 1500L);
        return true;
    }

    @Override // com.kwad.components.core.webview.jshandler.am
    public final void a(@NonNull am.b bVar) {
        if (b(bVar)) {
            return;
        }
        super.a(bVar);
    }

    @Override // com.kwad.components.core.webview.jshandler.am
    public final void a(com.kwad.sdk.core.adlog.c.b bVar) {
        super.a(bVar);
        WeakReference<com.kwad.components.ad.reward.g> weakReference = this.f75194ua;
        if (weakReference != null && weakReference.get() != null) {
            bVar.aC(this.f75194ua.get().sz.getPlayDuration());
            return;
        }
        long j10 = this.Cc;
        if (j10 > 0) {
            bVar.aC(j10);
        }
    }
}
