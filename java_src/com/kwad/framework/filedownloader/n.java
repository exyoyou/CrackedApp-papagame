package com.kwad.framework.filedownloader;

import android.content.Context;
import com.kwad.sdk.api.proxy.app.FileDownloadService;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements u {
    private final u azY;

    static final class a {
        private static final n azZ = new n(0);
    }

    /* synthetic */ n(byte b10) {
        this();
    }

    public static n By() {
        return a.azZ;
    }

    public static com.kwad.framework.filedownloader.services.e.a Bz() {
        if (By().azY instanceof o) {
            return (com.kwad.framework.filedownloader.services.e.a) By().azY;
        }
        return null;
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean a(String str, String str2, boolean z10, int i10, int i11, int i12, boolean z11, com.kwad.framework.filedownloader.d.b bVar, boolean z12) {
        return this.azY.a(str, str2, z10, i10, i11, i12, z11, bVar, z12);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final void aW(Context context) {
        this.azY.aW(context);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cv(int i10) {
        return this.azY.cv(i10);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final byte cw(int i10) {
        return this.azY.cw(i10);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cx(int i10) {
        return this.azY.cx(i10);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean isConnected() {
        return this.azY.isConnected();
    }

    private n() {
        this.azY = com.kwad.framework.filedownloader.f.e.Dz().aDv ? new o() : new p(FileDownloadService.SeparateProcessService.class);
    }
}
