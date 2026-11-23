package ma;

import android.net.Uri;
import android.os.RemoteException;
import android.os.storage.StorageVolume;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.l;

/* JADX INFO: loaded from: classes8.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f94227b = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.os.d f94228a;

    public static h a() {
        return f94227b;
    }

    private com.xinzhu.overmind.server.os.d b() {
        com.xinzhu.overmind.server.os.d dVar = this.f94228a;
        if (dVar != null && dVar.asBinder().isBinderAlive()) {
            return this.f94228a;
        }
        this.f94228a = com.xinzhu.overmind.server.os.d.b.asInterface(Overmind.get().getService(l.f89693g));
        return b();
    }

    public Uri c(String str) {
        try {
            return b().getUriForFile(str);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public StorageVolume[] d(int i10, String str, int i11, int i12) {
        try {
            return b().getVolumeList(i10, str, i11, i12);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return new StorageVolume[0];
        }
    }
}
