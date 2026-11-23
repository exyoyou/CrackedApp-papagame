package com.kwad.components.core.request;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdResultData;

/* JADX INFO: loaded from: classes2.dex */
public class d extends c {
    @Override // com.kwad.components.core.request.c
    public void a(@NonNull AdResultData adResultData, boolean z10) {
        b(adResultData);
    }

    @Override // com.kwad.components.core.request.l
    public void b(@NonNull AdResultData adResultData) {
    }

    @Override // com.kwad.components.core.request.l
    public void onError(int i10, String str) {
    }

    @Override // com.kwad.components.core.request.c
    public void a(int i10, String str, boolean z10) {
        onError(i10, str);
    }
}
