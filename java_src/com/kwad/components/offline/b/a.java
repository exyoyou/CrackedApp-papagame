package com.kwad.components.offline.b;

import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.components.offline.api.adLive.IAdLiveOfflineCompo;
import com.kwad.components.offline.api.core.adlive.IAdLiveEndRequest;
import com.kwad.components.offline.api.core.adlive.IAdLiveOfflineView;
import com.kwad.components.offline.api.core.adlive.IAdLivePlayModule;

/* JADX INFO: loaded from: classes2.dex */
public class a implements com.kwad.components.core.offline.a.c.a {
    private final IAdLiveOfflineCompo axn;

    public a(@NonNull IAdLiveOfflineCompo iAdLiveOfflineCompo) {
        this.axn = iAdLiveOfflineCompo;
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final IAdLiveEndRequest getAdLiveEndRequest(String str) {
        return this.axn.getAdLiveEndRequest(str);
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final IAdLivePlayModule getAdLivePlayModule(IAdLiveOfflineView iAdLiveOfflineView, String str, String str2, String str3, long j10, int i10) {
        return this.axn.getAdLivePlayModule(iAdLiveOfflineView, str, str2, str3, j10, i10);
    }

    @Override // com.kwad.sdk.components.b
    public final Class<a> getComponentsType() {
        return a.class;
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final IAdLiveOfflineView getView(Context context, int i10) {
        return this.axn.getView(context, i10);
    }

    @Override // com.kwad.sdk.components.b
    public final void init(Context context) {
    }

    @Override // com.kwad.sdk.components.b
    public final int priority() {
        return this.axn.priority();
    }

    @Override // com.kwad.components.core.offline.a.c.a
    public final boolean tu() {
        return this.axn.getState() == IAdLiveOfflineCompo.AdLiveState.READY;
    }
}
