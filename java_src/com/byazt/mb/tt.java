package com.byazt.mb;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.nr.m;
import com.byazt.omf.nu;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1662, 13})
public class tt extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, RemoteCallbackList<nu>> f16843c = Collections.synchronizedMap(new HashMap());
    public static volatile tt tt;

    public static tt tt() {
        if (tt == null) {
            synchronized (tt.class) {
                if (tt == null) {
                    tt = new tt();
                }
            }
        }
        return tt;
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void c(String str, nu nuVar) throws RemoteException {
        RemoteCallbackList<nu> remoteCallbackList = f16843c.get(str);
        if (remoteCallbackList == null) {
            remoteCallbackList = new RemoteCallbackList<>();
        }
        remoteCallbackList.register(nuVar);
        f16843c.put(str, remoteCallbackList);
        m.uj("DMLibManager", "aidl registerTTAppDownloadListener, materialMd5:".concat(String.valueOf(str)));
        m.uj("DMLibManager", "aidl registerTTAppDownloadListener, mListenerMap size:" + f16843c.size());
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void c(String str, String str2, long j10, long j11, String str3, String str4) throws RemoteException {
        tt(str, str2, j10, j11, str3, str4);
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void tt(String str, nu nuVar) throws RemoteException {
        Map<String, RemoteCallbackList<nu>> map = f16843c;
        if (map == null) {
            m.uj("DMLibManager", "aidl unregisterTTAppDownloadListener mListenerMap = null, materialMd5:".concat(String.valueOf(str)));
            return;
        }
        RemoteCallbackList<nu> remoteCallbackListRemove = map.remove(str);
        if (remoteCallbackListRemove == null) {
            m.uj("DMLibManager", "aidl unregisterTTAppDownloadListener cbs = null, materialMd5:".concat(String.valueOf(str)));
            return;
        }
        c(remoteCallbackListRemove);
        m.uj("DMLibManager", "aidl unregisterTTAppDownloadListener, materialMd5:".concat(String.valueOf(str)));
        m.uj("DMLibManager", "aidl unregisterTTAppDownloadListener, mListenerMap size:" + f16843c.size());
    }

    private void c(RemoteCallbackList<nu> remoteCallbackList) {
        if (remoteCallbackList != null) {
            try {
                int iBeginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i10 = 0; i10 < iBeginBroadcast; i10++) {
                    try {
                        nu nuVar = (nu) remoteCallbackList.getBroadcastItem(i10);
                        if (nuVar != null) {
                            ((com.byazt.ymw.a) nuVar).ve();
                        }
                    } catch (Throwable th) {
                        m.ve("MultiProcess", "recycleRes1 throw Exception : ", th);
                    }
                }
                remoteCallbackList.finishBroadcast();
                remoteCallbackList.kill();
            } catch (Throwable th2) {
                m.ve("MultiProcess", "recycleRes2 throw Exception : ", th2);
            }
        }
    }

    private synchronized void tt(String str, String str2, long j10, long j11, String str3, String str4) {
        try {
            if (f16843c == null) {
                return;
            }
            if ("recycleRes".equals(str2)) {
                c(f16843c.remove(str));
                m.uj("DMLibManager", "aidl executeMultiProcessAppDownloadCallBack recycle res, materialMd5:".concat(String.valueOf(str)));
                m.uj("DMLibManager", "aidl executeMultiProcessAppDownloadCallBack recycle res, mListenerMap sizee:" + f16843c.size());
                return;
            }
            RemoteCallbackList<nu> remoteCallbackList = f16843c.get(str);
            if (remoteCallbackList != null) {
                int iBeginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i10 = 0; i10 < iBeginBroadcast; i10++) {
                    try {
                        nu nuVar = (nu) remoteCallbackList.getBroadcastItem(i10);
                        if (nuVar != null) {
                            if ("onIdle".equals(str2)) {
                                nuVar.c();
                            } else if ("onDownloadActive".equals(str2)) {
                                nuVar.c(j10, j11, str3, str4);
                            } else if ("onDownloadPaused".equals(str2)) {
                                nuVar.tt(j10, j11, str3, str4);
                            } else if ("onDownloadFailed".equals(str2)) {
                                nuVar.ve(j10, j11, str3, str4);
                            } else if ("onDownloadFinished".equals(str2)) {
                                try {
                                    nuVar.c(j10, str3, str4);
                                } catch (Throwable th) {
                                    th = th;
                                    m.ve("MultiProcess", "AppDownloadListenerManagerImpl MultiProcess1: " + str2 + " throws Exception :", th);
                                }
                            } else if ("onInstalled".equals(str2)) {
                                nuVar.c(str3, str4);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        } catch (Throwable th3) {
            m.ve("MultiProcess", "AppDownloadListenerManagerImpl MultiProcess2: " + str2 + " throws Exception :", th3);
        }
    }
}
