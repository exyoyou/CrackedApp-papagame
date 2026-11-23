package com.kwad.components.ad.reward.k;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f implements com.kwad.sdk.core.webview.c.a {

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public boolean BY;
    }

    public void W(boolean z10) {
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(final String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        by.postOnUiThread(new bi() { // from class: com.kwad.components.ad.reward.k.f.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                boolean z10;
                try {
                    a aVar = new a();
                    aVar.parseJson(new JSONObject(str));
                    z10 = aVar.BY;
                } catch (Exception unused) {
                    z10 = false;
                }
                f.this.W(z10);
            }
        });
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "closeVideo";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
