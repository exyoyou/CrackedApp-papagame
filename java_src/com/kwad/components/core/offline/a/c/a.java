package com.kwad.components.core.offline.a.c;

import android.content.Context;
import com.kwad.components.offline.api.core.adlive.IAdLiveEndRequest;
import com.kwad.components.offline.api.core.adlive.IAdLiveOfflineView;
import com.kwad.components.offline.api.core.adlive.IAdLivePlayModule;
import com.kwad.sdk.components.b;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends b {
    IAdLiveEndRequest getAdLiveEndRequest(String str);

    IAdLivePlayModule getAdLivePlayModule(IAdLiveOfflineView iAdLiveOfflineView, String str, String str2, String str3, long j10, int i10);

    IAdLiveOfflineView getView(Context context, int i10);

    boolean tu();
}
