package com.kwad.components.offline.e.a;

import com.kwad.components.offline.api.tk.IOfflineApkLoader;
import com.kwad.components.offline.api.tk.IOfflineApkLoaderHolder;
import com.kwad.sdk.components.k;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements IOfflineApkLoaderHolder {
    private k atj;

    public e(k kVar) {
        this.atj = kVar;
    }

    @Override // com.kwad.components.offline.api.tk.IOfflineApkLoaderHolder
    public final IOfflineApkLoader getApkLoader(int i10) {
        return new d(this.atj.ch(i10));
    }

    @Override // com.kwad.components.offline.api.tk.IOfflineApkLoaderHolder
    public final IOfflineApkLoader getApkLoader(String str) {
        return new d(this.atj.bO(str));
    }
}
