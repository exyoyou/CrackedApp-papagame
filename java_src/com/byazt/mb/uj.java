package com.byazt.mb;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.omf.t;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1662, 15})
public class uj extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashMap<String, RemoteCallbackList<t>> f16844c = new HashMap<>();
    public static volatile uj tt;

    public static uj tt() {
        if (tt == null) {
            synchronized (uj.class) {
                if (tt == null) {
                    tt = new uj();
                }
            }
        }
        return tt;
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void c(String str, t tVar) throws RemoteException {
        if (tVar == null) {
            return;
        }
        RemoteCallbackList<t> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(tVar);
        f16844c.put(str, remoteCallbackList);
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void c(String str, String str2) throws RemoteException {
        RemoteCallbackList<t> remoteCallbackListRemove = f16844c.remove(str);
        if (remoteCallbackListRemove == null) {
            return;
        }
        int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
        for (int i10 = 0; i10 < iBeginBroadcast; i10++) {
            t tVar = (t) remoteCallbackListRemove.getBroadcastItem(i10);
            if (tVar != null) {
                if (str2 == null) {
                    tVar.c();
                } else {
                    tVar.c(str2);
                }
            }
        }
        remoteCallbackListRemove.finishBroadcast();
        remoteCallbackListRemove.kill();
    }
}
