package ma;

import android.database.IContentObserver;
import android.net.Uri;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.l;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f94213b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.content.a f94214a;

    public static b a() {
        return f94213b;
    }

    private com.xinzhu.overmind.server.content.a b() {
        com.xinzhu.overmind.server.content.a aVar = this.f94214a;
        if (aVar != null && aVar.asBinder().isBinderAlive()) {
            return this.f94214a;
        }
        this.f94214a = com.xinzhu.overmind.server.content.a.b.asInterface(Overmind.get().getService(l.f89700n));
        return b();
    }

    public void c(Uri uri, IContentObserver iContentObserver, boolean z10, boolean z11, int i10, int i11) throws RemoteException {
        b().notifyChange(uri, iContentObserver, z10, z11, i10, i11);
    }

    public void d(Uri uri, boolean z10, IContentObserver iContentObserver, int i10, int i11) throws RemoteException {
        b().registerContentObserver(uri, z10, iContentObserver, i10, i11);
    }

    public void e(IContentObserver iContentObserver) throws RemoteException {
        b().unregisterContentObserver(iContentObserver);
    }
}
