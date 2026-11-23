package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f83209a = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f83210b = 259200000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ac f83211d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f83212i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ak f83213c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<o> f83214e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final StrategyBean f83215f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private StrategyBean f83216g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f83217h;

    private ac(Context context, List<o> list) {
        this.f83217h = context;
        if (aa.a(context) != null) {
            String str = aa.a(context).I;
            if ("oversea".equals(str)) {
                StrategyBean.f83096a = "https://astat.bugly.qcloud.com/rqd/async";
                StrategyBean.f83097b = "https://astat.bugly.qcloud.com/rqd/async";
            } else if ("na_https".equals(str)) {
                StrategyBean.f83096a = "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
                StrategyBean.f83097b = "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
            }
        }
        this.f83215f = new StrategyBean();
        this.f83214e = list;
        this.f83213c = ak.a();
    }

    public static StrategyBean d() {
        byte[] bArr;
        List<y> listA = w.a().a(2);
        if (listA == null || listA.size() <= 0 || (bArr = listA.get(0).f83699g) == null) {
            return null;
        }
        return (StrategyBean) ap.a(bArr, StrategyBean.CREATOR);
    }

    public final StrategyBean c() {
        StrategyBean strategyBean = this.f83216g;
        if (strategyBean != null) {
            if (!ap.d(strategyBean.f83112q)) {
                this.f83216g.f83112q = StrategyBean.f83096a;
            }
            if (!ap.d(this.f83216g.f83113r)) {
                this.f83216g.f83113r = StrategyBean.f83097b;
            }
            return this.f83216g;
        }
        if (!ap.b(f83212i) && ap.d(f83212i)) {
            StrategyBean strategyBean2 = this.f83215f;
            String str = f83212i;
            strategyBean2.f83112q = str;
            strategyBean2.f83113r = str;
        }
        return this.f83215f;
    }

    public final synchronized boolean b() {
        return this.f83216g != null;
    }

    public static synchronized ac a(Context context, List<o> list) {
        if (f83211d == null) {
            f83211d = new ac(context, list);
        }
        return f83211d;
    }

    public static synchronized ac a() {
        return f83211d;
    }

    protected final void a(StrategyBean strategyBean, boolean z10) {
        al.c("[Strategy] Notify %s", s.class.getName());
        s.a(strategyBean, z10);
        for (o oVar : this.f83214e) {
            try {
                al.c("[Strategy] Notify %s", oVar.getClass().getName());
                oVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(String str) {
        if (!ap.b(str) && ap.d(str)) {
            f83212i = str;
        } else {
            al.d("URL user set is invalid.", new Object[0]);
        }
    }

    public final void a(bt btVar) {
        if (btVar == null) {
            return;
        }
        StrategyBean strategyBean = this.f83216g;
        if (strategyBean == null || btVar.f83556h != strategyBean.f83110o) {
            StrategyBean strategyBean2 = new StrategyBean();
            strategyBean2.f83101f = btVar.f83549a;
            strategyBean2.f83103h = btVar.f83551c;
            strategyBean2.f83102g = btVar.f83550b;
            if (ap.b(f83212i) || !ap.d(f83212i)) {
                if (ap.d(btVar.f83552d)) {
                    al.c("[Strategy] Upload url changes to %s", btVar.f83552d);
                    strategyBean2.f83112q = btVar.f83552d;
                }
                if (ap.d(btVar.f83553e)) {
                    al.c("[Strategy] Exception upload url changes to %s", btVar.f83553e);
                    strategyBean2.f83113r = btVar.f83553e;
                }
            }
            bs bsVar = btVar.f83554f;
            if (bsVar != null && !ap.b(bsVar.f83544a)) {
                strategyBean2.f83114s = btVar.f83554f.f83544a;
            }
            long j10 = btVar.f83556h;
            if (j10 != 0) {
                strategyBean2.f83110o = j10;
            }
            Map<String, String> map = btVar.f83555g;
            if (map != null && map.size() > 0) {
                Map<String, String> map2 = btVar.f83555g;
                strategyBean2.f83115t = map2;
                String str = map2.get("B11");
                strategyBean2.f83104i = str != null && str.equals("1");
                String str2 = btVar.f83555g.get("B3");
                if (str2 != null) {
                    strategyBean2.f83118w = Long.parseLong(str2);
                }
                int i10 = btVar.f83560l;
                strategyBean2.f83111p = i10;
                strategyBean2.f83117v = i10;
                String str3 = btVar.f83555g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int i11 = Integer.parseInt(str3);
                        if (i11 > 0) {
                            strategyBean2.f83116u = i11;
                        }
                    } catch (Exception e10) {
                        if (!al.a(e10)) {
                            e10.printStackTrace();
                        }
                    }
                }
                String str4 = btVar.f83555g.get("B25");
                strategyBean2.f83106k = str4 != null && str4.equals("1");
            }
            al.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean2.f83101f), Boolean.valueOf(strategyBean2.f83103h), Boolean.valueOf(strategyBean2.f83102g), Boolean.valueOf(strategyBean2.f83104i), Boolean.valueOf(strategyBean2.f83105j), Boolean.valueOf(strategyBean2.f83108m), Boolean.valueOf(strategyBean2.f83109n), Long.valueOf(strategyBean2.f83111p), Boolean.valueOf(strategyBean2.f83106k), Long.valueOf(strategyBean2.f83110o));
            this.f83216g = strategyBean2;
            if (!ap.d(btVar.f83552d)) {
                al.c("[Strategy] download url is null", new Object[0]);
                this.f83216g.f83112q = "";
            }
            if (!ap.d(btVar.f83553e)) {
                al.c("[Strategy] download crashurl is null", new Object[0]);
                this.f83216g.f83113r = "";
            }
            w.a().b(2);
            y yVar = new y();
            yVar.f83694b = 2;
            yVar.f83693a = strategyBean2.f83099d;
            yVar.f83697e = strategyBean2.f83100e;
            yVar.f83699g = ap.a(strategyBean2);
            w.a().a(yVar);
            a(strategyBean2, true);
        }
    }
}
