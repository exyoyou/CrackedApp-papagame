package com.xinzhu.overmind.server.os;

import android.net.Uri;
import android.os.Process;
import android.os.RemoteException;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import com.haima.hmcp.Constants;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.provider.FileProvider;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.io.File;

/* JADX INFO: loaded from: classes8.dex */
public class i extends d.b implements com.xinzhu.overmind.server.g {
    private static i sService = new i();
    private StorageManager mStorageManager = (StorageManager) Overmind.getContext().getSystemService(Constants.WS_MESSAGE_TYPE_STORAGE);

    public static i get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.os.d
    public Uri getUriForFile(String str) throws RemoteException {
        return FileProvider.f(Overmind.getContext(), com.xinzhu.overmind.client.g.h(), new File(str));
    }

    @Override // com.xinzhu.overmind.server.os.d
    public StorageVolume[] getVolumeList(int i10, String str, int i11, int i12) throws RemoteException {
        try {
            StorageVolume[] storageVolumeArrH = g9.c.h(MindUserHandle.x(Process.myUid()), 0);
            for (StorageVolume storageVolume : storageVolumeArrH) {
                g9.d dVar = new g9.d(storageVolume);
                dVar.f(com.xinzhu.overmind.a.F(i12));
                if (com.xinzhu.overmind.utils.e.z()) {
                    dVar.e(com.xinzhu.overmind.a.F(i12));
                }
            }
            return storageVolumeArrH;
        } catch (Exception e10) {
            e10.printStackTrace();
            return new StorageVolume[0];
        }
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }
}
