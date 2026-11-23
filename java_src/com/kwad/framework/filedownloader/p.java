package com.kwad.framework.filedownloader;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.kwad.framework.filedownloader.message.MessageSnapshot;

/* JADX INFO: loaded from: classes2.dex */
final class p extends com.kwad.framework.filedownloader.services.a<a, com.kwad.framework.filedownloader.c.b> {

    protected static class a extends com.kwad.framework.filedownloader.c.a.AbstractBinderC0906a {
        protected a() {
        }

        @Override // com.kwad.framework.filedownloader.c.a
        public final void q(MessageSnapshot messageSnapshot) {
            com.kwad.framework.filedownloader.message.e.CR().s(messageSnapshot);
        }
    }

    p(Class<?> cls) {
        super(cls);
    }

    private static a BC() {
        return new a();
    }

    @Override // com.kwad.framework.filedownloader.services.a
    public final /* synthetic */ Binder BD() {
        return BC();
    }

    @Override // com.kwad.framework.filedownloader.services.a
    public final /* bridge */ /* synthetic */ void a(IInterface iInterface, Binder binder) {
        a((com.kwad.framework.filedownloader.c.b) iInterface, (a) binder);
    }

    @Override // com.kwad.framework.filedownloader.services.a
    public final /* synthetic */ IInterface b(IBinder iBinder) {
        return a(iBinder);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cv(int i10) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.cv(i10);
        }
        try {
            return Dc().cv(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override // com.kwad.framework.filedownloader.u
    public final byte cw(int i10) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.cw(i10);
        }
        try {
            return Dc().cw(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return (byte) 0;
        }
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean cx(int i10) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.cx(i10);
        }
        try {
            return Dc().cx(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private static com.kwad.framework.filedownloader.c.b a(IBinder iBinder) {
        return com.kwad.framework.filedownloader.c.b.a.a(iBinder);
    }

    private static void a(com.kwad.framework.filedownloader.c.b bVar, a aVar) {
        bVar.a(aVar);
    }

    @Override // com.kwad.framework.filedownloader.u
    public final boolean a(String str, String str2, boolean z10, int i10, int i11, int i12, boolean z11, com.kwad.framework.filedownloader.d.b bVar, boolean z12) {
        if (!isConnected()) {
            return com.kwad.framework.filedownloader.f.a.h(str, str2, z10);
        }
        try {
            Dc().b(str, str2, z10, i10, i11, i12, z11, bVar, z12);
            return true;
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
