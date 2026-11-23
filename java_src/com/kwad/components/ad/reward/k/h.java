package com.kwad.components.ad.reward.k;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements com.kwad.sdk.core.webview.c.a {
    private a Ca;

    public interface a {
        void ap(int i10);
    }

    public h(a aVar) {
        this.Ca = aVar;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        int iOptInt;
        if (this.Ca != null) {
            try {
                iOptInt = new JSONObject(str).optInt("severCheckResult");
            } catch (JSONException e10) {
                e10.printStackTrace();
                iOptInt = 0;
            }
            this.Ca.ap(iOptInt);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "hasReward";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.Ca = null;
    }
}
