package com.byazt.mb;

import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.nr.m;
import com.byazt.omf.u;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1662, 46})
public class n extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, RemoteCallbackList<u>> f16841c = Collections.synchronizedMap(new HashMap());
    public static volatile n tt;

    public static n tt() {
        if (tt == null) {
            synchronized (n.class) {
                if (tt == null) {
                    tt = new n();
                }
            }
        }
        return tt;
    }

    private synchronized void uj(String str, String str2, Bundle bundle) {
        try {
            if (f16841c != null) {
                RemoteCallbackList<u> remoteCallbackListRemove = "recycleRes".equals(str2) ? f16841c.remove(str) : f16841c.get(str);
                if (remoteCallbackListRemove != null) {
                    int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
                    for (int i10 = 0; i10 < iBeginBroadcast; i10++) {
                        try {
                            u uVar = (u) remoteCallbackListRemove.getBroadcastItem(i10);
                            if (uVar != null) {
                                if ("onAdShow".equals(str2)) {
                                    uVar.c(bundle);
                                } else if ("onAdClose".equals(str2)) {
                                    uVar.ve();
                                } else if ("onVideoComplete".equals(str2)) {
                                    uVar.uj();
                                } else if ("onSkippedVideo".equals(str2)) {
                                    uVar.n();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    uVar.tt();
                                } else if ("recycleRes".equals(str2)) {
                                    uVar.c();
                                }
                            }
                        } catch (Throwable th) {
                            m.ve("MultiProcess", "fullScreen2 method " + str2 + " throws Exception :", th);
                        }
                    }
                    remoteCallbackListRemove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            m.ve("MultiProcess", "fullScreen1 method " + str2 + " throws Exception :", th2);
        }
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public synchronized void c(String str, u uVar) throws RemoteException {
        RemoteCallbackList<u> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(uVar);
        f16841c.put(str, remoteCallbackList);
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void tt(String str, String str2, Bundle bundle) throws RemoteException {
        uj(str, str2, bundle);
    }
}
