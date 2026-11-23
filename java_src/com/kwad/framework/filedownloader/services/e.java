package com.kwad.framework.filedownloader.services;

import android.app.Notification;
import android.os.IBinder;
import com.kwad.framework.filedownloader.n;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends com.kwad.framework.filedownloader.c.b.a implements i {
    private final g aDe;
    private final WeakReference<FileDownloadServiceProxy> aDf;

    public interface a {
        void a(e eVar);

        void onDisconnected();
    }

    e(WeakReference<FileDownloadServiceProxy> weakReference, g gVar) {
        this.aDf = weakReference;
        this.aDe = gVar;
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void CH() {
        this.aDe.CH();
    }

    @Override // com.kwad.framework.filedownloader.services.i
    public final void Dn() {
        n.Bz().a(this);
    }

    @Override // com.kwad.framework.filedownloader.services.i
    public final IBinder Do() {
        return null;
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void a(com.kwad.framework.filedownloader.c.a aVar) {
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void b(com.kwad.framework.filedownloader.c.a aVar) {
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean cP(int i10) {
        return this.aDe.cP(i10);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final long cQ(int i10) {
        return this.aDe.db(i10);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final long cR(int i10) {
        return this.aDe.cR(i10);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean cv(int i10) {
        return this.aDe.cv(i10);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final byte cw(int i10) {
        return this.aDe.cw(i10);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean cx(int i10) {
        return this.aDe.cx(i10);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean isIdle() {
        return this.aDe.isIdle();
    }

    @Override // com.kwad.framework.filedownloader.services.i
    public final void onDestroy() {
        n.Bz().onDisconnected();
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void pauseAllTasks() {
        this.aDe.Dq();
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void startForeground(int i10, Notification notification) {
        WeakReference<FileDownloadServiceProxy> weakReference = this.aDf;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.aDf.get().context.startForeground(i10, notification);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void stopForeground(boolean z10) {
        WeakReference<FileDownloadServiceProxy> weakReference = this.aDf;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.aDf.get().context.stopForeground(z10);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final boolean z(String str, String str2) {
        return this.aDe.B(str, str2);
    }

    @Override // com.kwad.framework.filedownloader.c.b
    public final void b(String str, String str2, boolean z10, int i10, int i11, int i12, boolean z11, com.kwad.framework.filedownloader.d.b bVar, boolean z12) {
        this.aDe.b(str, str2, z10, i10, i11, i12, z11, bVar, z12);
    }
}
