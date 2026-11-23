package com.byazt.mb;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.omf.sl;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1662, 54})
public class ve extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashMap<String, RemoteCallbackList<sl>> f16845c = new HashMap<>();
    public static volatile ve tt;

    public static ve tt() {
        if (tt == null) {
            synchronized (ve.class) {
                if (tt == null) {
                    tt = new ve();
                }
            }
        }
        return tt;
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void c(String str, sl slVar) throws RemoteException {
        if (slVar == null) {
            return;
        }
        RemoteCallbackList<sl> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(slVar);
        f16845c.put(str, remoteCallbackList);
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void c(String str, int i10) throws RemoteException {
        RemoteCallbackList<sl> remoteCallbackListRemove = f16845c.remove(str);
        if (remoteCallbackListRemove == null) {
            return;
        }
        int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
        for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
            sl slVar = (sl) remoteCallbackListRemove.getBroadcastItem(i11);
            if (slVar != null) {
                if (i10 == 1) {
                    slVar.c();
                } else if (i10 == 2) {
                    slVar.tt();
                } else if (i10 != 3) {
                    slVar.ve();
                } else {
                    slVar.ve();
                }
            }
        }
        remoteCallbackListRemove.finishBroadcast();
        remoteCallbackListRemove.kill();
    }
}
