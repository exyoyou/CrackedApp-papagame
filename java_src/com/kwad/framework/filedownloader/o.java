package com.kwad.framework.filedownloader;

import android.content.Context;
import android.content.Intent;
import com.kwad.framework.filedownloader.event.DownloadServiceConnectChangedEvent;
import com.kwad.sdk.api.proxy.app.FileDownloadService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class o implements com.kwad.framework.filedownloader.services.e.a, u {
    private static Class<?> aAa;
    private final ArrayList<Runnable> aAb = new ArrayList<>();
    private com.kwad.framework.filedownloader.services.e aAc;

    o() {
    }

    private static Class<?> BB() {
        if (aAa == null) {
            aAa = FileDownloadService.SharedMainProcessService.class;
        }
        return aAa;
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean a(String str, String str2, boolean z10, int i10, int i11, int i12, boolean z11, com.kwad.framework.filedownloader.d.b bVar, boolean z12) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.h(str, str2, z10);
        }
        this.aAc.b(str, str2, z10, i10, i11, i12, z11, bVar, z12);
        return true;
    }

    @Override // com.kwad.framework.filedownloader.u
    public final void aW(Context context) {
        a(context, null);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cv(int i10) {
        return !isConnected() ? com.kwad.framework.filedownloader.f.a.cv(i10) : this.aAc.cv(i10);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final byte cw(int i10) {
        return !isConnected() ? com.kwad.framework.filedownloader.f.a.cw(i10) : this.aAc.cw(i10);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cx(int i10) {
        return !isConnected() ? com.kwad.framework.filedownloader.f.a.cx(i10) : this.aAc.cx(i10);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean isConnected() {
        return this.aAc != null;
    }

    @Override // com.kwad.framework.filedownloader.services.e.a
    public final void onDisconnected() {
        this.aAc = null;
        f.Bl().c(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.disconnected, BB()));
    }

    private void a(Context context, Runnable runnable) {
        context.startService(new Intent(context, BB()));
    }

    @Override // com.kwad.framework.filedownloader.services.e.a
    public final void a(com.kwad.framework.filedownloader.services.e eVar) {
        this.aAc = eVar;
        List list = (List) this.aAb.clone();
        this.aAb.clear();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        f.Bl().c(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.connected, BB()));
    }
}
