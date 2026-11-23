package com.mob.mcl;

import android.content.Context;
import android.os.Bundle;
import cn.fly.mcl.FlyMCL;
import com.mob.mgs.OnIdChangeListener;
import com.mob.tools.proguard.EverythingKeeper;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MobMCL implements EverythingKeeper {
    private static Map<TcpStatusListener, cn.fly.mcl.TcpStatusListener> listenerMap = new HashMap();

    public interface ELPMessageListener extends EverythingKeeper {
        boolean messageReceived(Bundle bundle);
    }

    public static void addBusinessMessageListener(int i10, final BusinessMessageListener businessMessageListener) {
        if (businessMessageListener == null) {
            FlyMCL.addBusinessMessageListener(i10, null);
        } else {
            FlyMCL.addBusinessMessageListener(i10, businessMessageListener instanceof BusinessMessageCallback ? new cn.fly.mcl.BusinessMessageCallback() { // from class: com.mob.mcl.MobMCL.5
                @Override // cn.fly.mcl.BusinessMessageCallback
                public void messageReceived(int i11, int i12, String str, String str2) {
                    ((BusinessMessageCallback) businessMessageListener).messageReceived(i11, i12, str, str2);
                }
            } : new cn.fly.mcl.BusinessMessageListener() { // from class: com.mob.mcl.MobMCL.6
                @Override // cn.fly.mcl.BusinessMessageListener
                public void messageReceived(int i11, String str, String str2) {
                    businessMessageListener.messageReceived(i11, str, str2);
                }
            });
        }
    }

    public static boolean closeTcp() {
        return FlyMCL.closeTcp();
    }

    public static void connectTcp(final BusinessCallBack<TcpStatus> businessCallBack) {
        FlyMCL.connectTcp(new cn.fly.mcl.BusinessCallBack<cn.fly.mcl.TcpStatus>() { // from class: com.mob.mcl.MobMCL.4
            @Override // cn.fly.mcl.BusinessCallBack
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void callback(cn.fly.mcl.TcpStatus tcpStatus) {
                BusinessCallBack businessCallBack2 = businessCallBack;
                if (businessCallBack2 != null) {
                    businessCallBack2.callback(MobMCL.toMobTcpStatus(tcpStatus));
                }
            }
        });
    }

    public static void deleteMsg(String str) {
        FlyMCL.deleteMsg(str);
    }

    @Deprecated
    public static void getClientTcpStatus(final BusinessCallBack<Boolean> businessCallBack) {
        FlyMCL.getClientTcpStatus(new cn.fly.mcl.BusinessCallBack<Boolean>() { // from class: com.mob.mcl.MobMCL.3
            @Override // cn.fly.mcl.BusinessCallBack
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void callback(Boolean bool) {
                BusinessCallBack businessCallBack2 = businessCallBack;
                if (businessCallBack2 != null) {
                    businessCallBack2.callback(bool);
                }
            }
        });
    }

    public static long getCreateSuidTime() {
        return FlyMCL.getCreateSuidTime();
    }

    public static String getSuid() {
        return FlyMCL.getSuid();
    }

    public static void getTcpStatus(final BusinessCallBack<Boolean> businessCallBack) {
        FlyMCL.getTcpStatus(new cn.fly.mcl.BusinessCallBack<Boolean>() { // from class: com.mob.mcl.MobMCL.2
            @Override // cn.fly.mcl.BusinessCallBack
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void callback(Boolean bool) {
                BusinessCallBack businessCallBack2 = businessCallBack;
                if (businessCallBack2 != null) {
                    businessCallBack2.callback(bool);
                }
            }
        });
    }

    @Deprecated
    public static void initMCLink(Context context, String str, String str2) {
    }

    public static void registerTcpStatusListener(final TcpStatusListener tcpStatusListener) {
        if (tcpStatusListener == null) {
            FlyMCL.registerTcpStatusListener(null);
            return;
        }
        cn.fly.mcl.TcpStatusListener tcpStatusListener2 = listenerMap.get(tcpStatusListener);
        if (tcpStatusListener2 == null) {
            tcpStatusListener2 = new cn.fly.mcl.TcpStatusListener() { // from class: com.mob.mcl.MobMCL.7
                @Override // cn.fly.mcl.TcpStatusListener
                public void onStatus(cn.fly.mcl.TcpStatus tcpStatus) {
                    tcpStatusListener.onStatus(MobMCL.toMobTcpStatus(tcpStatus));
                }
            };
            listenerMap.put(tcpStatusListener, tcpStatusListener2);
        }
        FlyMCL.registerTcpStatusListener(tcpStatusListener2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TcpStatus toMobTcpStatus(cn.fly.mcl.TcpStatus tcpStatus) {
        if (tcpStatus == null) {
            return null;
        }
        TcpStatus tcpStatusObtain = TcpStatus.obtain(10);
        tcpStatusObtain.code = tcpStatus.code;
        tcpStatusObtain.msg = tcpStatus.msg;
        tcpStatusObtain.detailedMsg = tcpStatus.detailedMsg;
        return tcpStatusObtain;
    }

    public void unregisterTcpStatusListener(TcpStatusListener tcpStatusListener) {
        cn.fly.mcl.TcpStatusListener tcpStatusListenerRemove = listenerMap.remove(tcpStatusListener);
        if (tcpStatusListenerRemove != null) {
            FlyMCL.unregisterTcpStatusListener(tcpStatusListenerRemove);
        }
    }

    public static void getSuid(final OnIdChangeListener onIdChangeListener) {
        FlyMCL.getSuid(new cn.fly.mgs.OnIdChangeListener() { // from class: com.mob.mcl.MobMCL.1
            @Override // cn.fly.mgs.OnIdChangeListener
            public void onChanged(String str, String str2) {
                OnIdChangeListener onIdChangeListener2 = onIdChangeListener;
                if (onIdChangeListener2 != null) {
                    onIdChangeListener2.onChanged(str, str2);
                }
            }
        });
    }
}
