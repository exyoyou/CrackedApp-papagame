package com.windmill.sdk.common;

import android.content.Context;
import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WMNetworkConfig;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes8.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Map<Integer, Boolean> f86658a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static List<WMNetworkConfig.WMInnerAdnInit> f86659c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static h f86660d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<Integer, WMCustomAdapterProxy> f86661b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<WMNetworkConfig.WMAdnInit> f86662e;

    private h() {
    }

    public static synchronized h a() {
        if (f86660d == null) {
            synchronized (c.class) {
                if (f86660d == null) {
                    f86660d = new h();
                }
            }
        }
        return f86660d;
    }

    public List<WMNetworkConfig.WMAdnInit> b() {
        return this.f86662e;
    }

    public synchronized WMCustomAdapterProxy a(com.windmill.sdk.strategy.a strategy) {
        WMCustomAdapterProxy wMCustomAdapterProxyA;
        synchronized (this) {
            wMCustomAdapterProxyA = a(Integer.valueOf(strategy.aN()));
            if (wMCustomAdapterProxyA == null) {
                String strB = com.windmill.sdk.utils.l.b(strategy);
                if (!TextUtils.isEmpty(strB)) {
                    try {
                        Class<?> cls = Class.forName(strB);
                        if (cls.getSuperclass() == WMCustomAdapterProxy.class) {
                            WMCustomAdapterProxy wMCustomAdapterProxy = (WMCustomAdapterProxy) cls.newInstance();
                            try {
                                this.f86661b.put(Integer.valueOf(strategy.aN()), wMCustomAdapterProxy);
                            } catch (Throwable unused) {
                            }
                            wMCustomAdapterProxyA = wMCustomAdapterProxy;
                        }
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
        return wMCustomAdapterProxyA;
        return wMCustomAdapterProxyA;
    }

    public synchronized WMCustomAdapterProxy a(Integer channel_id) {
        WMCustomAdapterProxy wMCustomAdapterProxy;
        synchronized (this) {
            wMCustomAdapterProxy = this.f86661b.get(channel_id);
            if (wMCustomAdapterProxy == null) {
                String strA = com.windmill.sdk.utils.l.a(channel_id.intValue());
                if (!TextUtils.isEmpty(strA)) {
                    try {
                        Class<?> cls = Class.forName(strA);
                        if (cls.getSuperclass() == WMCustomAdapterProxy.class) {
                            WMCustomAdapterProxy wMCustomAdapterProxy2 = (WMCustomAdapterProxy) cls.newInstance();
                            try {
                                this.f86661b.put(channel_id, wMCustomAdapterProxy2);
                            } catch (Throwable unused) {
                            }
                            wMCustomAdapterProxy = wMCustomAdapterProxy2;
                        }
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
        return wMCustomAdapterProxy;
        return wMCustomAdapterProxy;
    }

    private boolean a(List<WMNetworkConfig.WMAdnInit> initList) {
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 = 0; i10 < initList.size(); i10++) {
            WMNetworkConfig.WMAdnInit wMAdnInit = initList.get(i10);
            if (wMAdnInit != null) {
                int adnId = wMAdnInit.getAdnId();
                if (adnId == 13) {
                    z10 = true;
                }
                if (adnId == 22) {
                    z11 = true;
                }
            }
        }
        return z10 && z11;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00f9 A[Catch: all -> 0x00f5, TRY_LEAVE, TryCatch #0 {all -> 0x00f5, blocks: (B:23:0x0097, B:25:0x00b5, B:27:0x00c1, B:31:0x00f9), top: B:36:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0125 A[SYNTHETIC] */
    public void a(Context context, List<WMNetworkConfig.WMAdnInit> initList) {
        final int adnId;
        if (initList == null || initList.isEmpty()) {
            return;
        }
        this.f86662e = initList;
        WMLogUtil.d("------------initNetwork------------" + this.f86662e.size());
        boolean zA = a(this.f86662e);
        for (int i10 = 0; i10 < this.f86662e.size(); i10++) {
            final WMNetworkConfig.WMAdnInit wMAdnInit = this.f86662e.get(i10);
            if (wMAdnInit != null && ((adnId = wMAdnInit.getAdnId()) != 13 || !zA)) {
                Map<String, Object> mapA = a(com.windmill.sdk.utils.n.a(context).getString(String.valueOf(adnId), null));
                if (mapA == null) {
                    mapA = new HashMap<>();
                    mapA.put("appId", wMAdnInit.getAppId());
                    mapA.put(WMConstants.API_KEY, wMAdnInit.getAppKey());
                }
                final WMCustomAdapterProxy wMCustomAdapterProxyA = a(Integer.valueOf(adnId));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("-------initNetwork-------adapterProxy-----");
                sb2.append(wMCustomAdapterProxyA != null);
                WMLogUtil.d(sb2.toString());
                if (wMCustomAdapterProxyA == null) {
                    try {
                        String strA = com.windmill.sdk.utils.l.a(adnId);
                        WMLogUtil.d("-------initNetwork-------channelId-----" + strA);
                        if (!TextUtils.isEmpty(strA)) {
                            Class<?> cls = Class.forName(strA);
                            if (cls.getSuperclass() == WMCustomAdapterProxy.class) {
                                wMCustomAdapterProxyA = (WMCustomAdapterProxy) cls.newInstance();
                                wMCustomAdapterProxyA.initializeInnerADN(context, mapA, adnId);
                                wMCustomAdapterProxyA.notifyPrivacyStatusChange();
                                this.f86661b.put(Integer.valueOf(adnId), wMCustomAdapterProxyA);
                                WMLogUtil.d("----initNetwork-------channelId-----" + adnId);
                                f86659c.add(new WMNetworkConfig.WMInnerAdnInit() { // from class: com.windmill.sdk.common.h.1
                                    @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                                    public int getAdnId() {
                                        return adnId;
                                    }

                                    @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                                    public String getAppId() {
                                        return wMAdnInit.getAppId();
                                    }

                                    @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                                    public String getAppKey() {
                                        return wMAdnInit.getAppId();
                                    }

                                    @Override // com.windmill.sdk.WMNetworkConfig.WMInnerAdnInit
                                    public String getVersion() {
                                        return wMCustomAdapterProxyA.getNetworkSdkVersion();
                                    }
                                });
                            }
                        }
                        if (wMCustomAdapterProxyA != null) {
                            wMCustomAdapterProxyA.initializeInnerADN(context, mapA, adnId);
                            wMCustomAdapterProxyA.notifyPrivacyStatusChange();
                            f86659c.add(new WMNetworkConfig.WMInnerAdnInit() { // from class: com.windmill.sdk.common.h.2
                                @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                                public int getAdnId() {
                                    return adnId;
                                }

                                @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                                public String getAppId() {
                                    return wMAdnInit.getAppId();
                                }

                                @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                                public String getAppKey() {
                                    return wMAdnInit.getAppId();
                                }

                                @Override // com.windmill.sdk.WMNetworkConfig.WMInnerAdnInit
                                public String getVersion() {
                                    return wMCustomAdapterProxyA.getNetworkSdkVersion();
                                }
                            });
                        }
                    } catch (Throwable th) {
                        WMLogUtil.d("-------initNetwork----Throwable-----" + th.getMessage());
                        th.printStackTrace();
                    }
                } else if (wMCustomAdapterProxyA != null) {
                    wMCustomAdapterProxyA.initializeInnerADN(context, mapA, adnId);
                    wMCustomAdapterProxyA.notifyPrivacyStatusChange();
                    f86659c.add(new WMNetworkConfig.WMInnerAdnInit() { // from class: com.windmill.sdk.common.h.2
                        @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                        public int getAdnId() {
                            return adnId;
                        }

                        @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                        public String getAppId() {
                            return wMAdnInit.getAppId();
                        }

                        @Override // com.windmill.sdk.WMNetworkConfig.WMAdnInit
                        public String getAppKey() {
                            return wMAdnInit.getAppId();
                        }

                        @Override // com.windmill.sdk.WMNetworkConfig.WMInnerAdnInit
                        public String getVersion() {
                            return wMCustomAdapterProxyA.getNetworkSdkVersion();
                        }
                    });
                }
            }
        }
    }

    private Map<String, Object> a(String mapString) {
        HashMap map = null;
        try {
            if (!TextUtils.isEmpty(mapString)) {
                String[] strArrSplit = mapString.substring(1, mapString.length() - 1).split(", ");
                if (strArrSplit.length > 0) {
                    HashMap map2 = new HashMap();
                    try {
                        for (String str : strArrSplit) {
                            String[] strArrSplit2 = str.split(SimpleComparison.EQUAL_TO_OPERATION);
                            map2.put(strArrSplit2[0], strArrSplit2[1]);
                        }
                        return map2;
                    } catch (Exception e10) {
                        e = e10;
                        map = map2;
                        e.printStackTrace();
                        return map;
                    }
                }
            }
        } catch (Exception e11) {
            e = e11;
        }
        return map;
    }
}
