package com.byazt.mb;

import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.byazt.aas.nb;
import com.byazt.ete.l;
import com.byazt.omf.m;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1662, 91})
public class sp extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<String, RemoteCallbackList<m>> f16842c = Collections.synchronizedMap(new HashMap());
    public static volatile sp tt;

    public static sp tt() {
        if (tt == null) {
            synchronized (sp.class) {
                if (tt == null) {
                    tt = new sp();
                }
            }
        }
        return tt;
    }

    private synchronized void uj(String str, String str2, Bundle bundle) {
        RemoteCallbackList<m> remoteCallbackListRemove;
        RemoteCallbackList<m> remoteCallbackListRemove2;
        try {
            if (f16842c != null) {
                if ("recycleRes".equals(str2)) {
                    remoteCallbackListRemove = f16842c.remove(str);
                    remoteCallbackListRemove2 = f16842c.remove(l.c(str));
                } else {
                    remoteCallbackListRemove = f16842c.get(str);
                    remoteCallbackListRemove2 = null;
                }
                if (remoteCallbackListRemove != null) {
                    int iBeginBroadcast = remoteCallbackListRemove.beginBroadcast();
                    for (int i10 = 0; i10 < iBeginBroadcast; i10++) {
                        try {
                            m mVar = (m) remoteCallbackListRemove.getBroadcastItem(i10);
                            if (mVar != null) {
                                if ("onAdShow".equals(str2)) {
                                    mVar.c(bundle);
                                } else if ("onAdClose".equals(str2)) {
                                    mVar.ve();
                                } else if ("onVideoComplete".equals(str2)) {
                                    mVar.uj();
                                } else if ("onVideoError".equals(str2)) {
                                    mVar.n();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    mVar.tt();
                                } else if ("onRewardVerify".equals(str2)) {
                                    c(mVar, bundle);
                                } else if ("onRewardArrived".equals(str2)) {
                                    tt(mVar, bundle);
                                } else if ("onSkippedVideo".equals(str2)) {
                                    mVar.a();
                                } else if ("recycleRes".equals(str2)) {
                                    mVar.c();
                                }
                            }
                        } catch (Throwable th) {
                            com.byazt.nr.m.ve("MultiProcess", "reward1 '" + str2 + "'  throws Exception :", th);
                        }
                    }
                    remoteCallbackListRemove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove.kill();
                    }
                }
                if (remoteCallbackListRemove2 != null) {
                    int iBeginBroadcast2 = remoteCallbackListRemove2.beginBroadcast();
                    for (int i11 = 0; i11 < iBeginBroadcast2; i11++) {
                        try {
                            m mVar2 = (m) remoteCallbackListRemove2.getBroadcastItem(i11);
                            if (mVar2 != null && "recycleRes".equals(str2)) {
                                mVar2.c();
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    remoteCallbackListRemove2.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackListRemove2.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            com.byazt.nr.m.ve("MultiProcess", "reward2 '" + str2 + "'  throws Exception :", th2);
        }
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public synchronized void c(String str, m mVar) throws RemoteException {
        RemoteCallbackList<m> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(mVar);
        f16842c.put(str, remoteCallbackList);
    }

    @Override // com.byazt.mb.c, com.byazt.omf.yp
    public void c(String str, String str2, Bundle bundle) throws RemoteException {
        uj(str, str2, bundle);
    }

    private void c(m mVar, Bundle bundle) throws RemoteException {
        boolean z10 = bundle.getBoolean("callback_extra_key_reward_valid");
        int i10 = bundle.getInt("callback_extra_key_reward_amount");
        String string = bundle.getString("callback_extra_key_reward_name");
        int i11 = bundle.getInt("callback_extra_key_error_code");
        String string2 = bundle.getString("callback_extra_key_error_msg");
        mVar.c(z10, i10, string != null ? string : "", i11, string2 != null ? string2 : "");
    }

    private void tt(m mVar, Bundle bundle) throws RemoteException {
        boolean z10 = bundle.getBoolean("callback_extra_key_reward_valid");
        int i10 = bundle.getInt("callback_extra_key_reward_type");
        mVar.c(z10, i10, nb.c(i10, bundle));
    }
}
