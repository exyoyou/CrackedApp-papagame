package com.beizi.fusion.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.beizi.fusion.BeiZiInitCallBack;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.tool.ag;
import com.beizi.fusion.tool.ah;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.tool.z;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f10060a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f10061b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f10062c = "AdManager";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f10063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f10064e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f10065j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f10066k;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f10067f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.beizi.fusion.update.b f10069h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.beizi.fusion.events.b f10070i;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f10080u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f10081v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f10082w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f10083x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f10084y;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f10068g = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f10071l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f10072m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f10073n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f10074o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f10075p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f10076q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10077r = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f10078s = "0";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private List<BeiZiInitCallBack> f10079t = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        try {
            if ("0".equals(ResponseInfo.getInstance(this.f10067f).getSmFlag())) {
                int iIntValue = ((Integer) as.b(this.f10067f, "SM_STATUS", 0)).intValue();
                int i10 = 1;
                if (iIntValue == 1) {
                    as.a(this.f10067f, "SM_STATUS", (Object) 3);
                    as.a(this.f10067f, "SM_STATUS_EXPIRE_TIME", (Object) Long.valueOf(System.currentTimeMillis()));
                    iIntValue = 3;
                }
                if (iIntValue == 0 || iIntValue == 2) {
                    as.a(this.f10067f, "SM_STATUS", (Object) 1);
                } else {
                    i10 = iIntValue;
                }
                if (i10 != 3) {
                    if (com.beizi.fusion.sm.b.a.a(this.f10067f)) {
                        com.beizi.fusion.sm.b.a.a(this.f10067f, new com.beizi.fusion.sm.b.b() { // from class: com.beizi.fusion.c.b.3
                            @Override // com.beizi.fusion.sm.b.b
                            public void a(String str) {
                                String unused = b.f10062c;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("code sm Oaid:");
                                sb2.append(str);
                                if (!TextUtils.isEmpty(str)) {
                                    as.a(b.this.f10067f, "__OAID__", (Object) str);
                                    as.a(b.this.f10067f, "__SMOAID__", (Object) str);
                                    if (RequestInfo.getInstance(b.this.f10067f).getDevInfo() != null) {
                                        if (ah.b() && BeiZis.isLimitPersonalAds()) {
                                            return;
                                        }
                                        RequestInfo.getInstance(b.this.f10067f).getDevInfo().setOaid(str);
                                        RequestInfo.getInstance(b.this.f10067f).getDevInfo().setSmOaid(str);
                                        return;
                                    }
                                    return;
                                }
                                if (Build.BRAND.equalsIgnoreCase("HONOR")) {
                                    String str2 = (String) as.b(b.this.f10067f, "__HONOROAID__", "");
                                    if (TextUtils.isEmpty(str2)) {
                                        return;
                                    }
                                    as.a(b.this.f10067f, "__OAID__", (Object) str2);
                                    as.a(b.this.f10067f, "__SMOAID__", (Object) str2);
                                    if (RequestInfo.getInstance(b.this.f10067f).getDevInfo() != null && (!ah.b() || !BeiZis.isLimitPersonalAds())) {
                                        RequestInfo.getInstance(b.this.f10067f).getDevInfo().setOaid(str2);
                                        RequestInfo.getInstance(b.this.f10067f).getDevInfo().setSmOaid(str2);
                                    }
                                }
                                b.this.z();
                            }

                            @Override // com.beizi.fusion.sm.b.b
                            public void a(Exception exc) {
                                b.this.z();
                            }
                        });
                    }
                    as.a(this.f10067f, "SM_STATUS", (Object) 2);
                } else {
                    Long l10 = (Long) as.b(this.f10067f, "SM_STATUS_EXPIRE_TIME", Long.valueOf(Long.parseLong("0")));
                    if (l10.longValue() == 0 || Long.valueOf(System.currentTimeMillis() - l10.longValue()).longValue() <= 864000000) {
                        return;
                    }
                    as.a(this.f10067f, "SM_STATUS", (Object) 0);
                    as.a(this.f10067f, "SM_STATUS_EXPIRE_TIME", (Object) Long.valueOf(Long.parseLong("0")));
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        try {
            if (Build.BRAND.equalsIgnoreCase("HONOR")) {
                String str = (String) as.b(this.f10067f, "__HONOROAID__", "");
                if (!TextUtils.isEmpty(str) && RequestInfo.getInstance(this.f10067f).getDevInfo() != null) {
                    RequestInfo.getInstance(this.f10067f).getDevInfo().setHonorOaid(str);
                }
                com.beizi.fusion.tool.e.b().c().execute(new Runnable() { // from class: com.beizi.fusion.c.b.4
                    @Override // java.lang.Runnable
                    public void run() {
                        String strA = com.beizi.fusion.sm.a.a.a(b.this.f10067f);
                        String unused = b.f10062c;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("code honor Oaid:");
                        sb2.append(strA);
                        if (!TextUtils.isEmpty(strA)) {
                            as.a(b.this.f10067f, "__HONOROAID__", (Object) strA);
                        }
                        if (TextUtils.isEmpty(strA) || RequestInfo.getInstance(b.this.f10067f).getDevInfo() == null) {
                            return;
                        }
                        RequestInfo.getInstance(b.this.f10067f).getDevInfo().setHonorOaid(strA);
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    private void C() {
        try {
            com.beizi.fusion.update.b.a(this.f10067f).b(5);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (!this.f10074o) {
            com.beizi.fusion.tool.n.a().a(this.f10067f);
        }
        ResponseInfo.getInstance(this.f10067f).init();
        if (!this.f10072m) {
            this.f10070i.f10266a.a(1);
            n();
        }
        g();
        if (!this.f10072m && this.f10070i.f10266a.a() == 1) {
            this.f10070i.f10266a.a(2);
        }
        b((BeiZiInitCallBack) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        try {
            new com.beizi.fusion.d.a.b(ag.f10410b).a(this.f10067f);
        } catch (Throwable unused) {
        }
    }

    public com.beizi.fusion.events.b f() {
        return this.f10070i;
    }

    public void g() {
        if (ah.b()) {
            if (BeiZis.isLimitPersonalAds()) {
                return;
            }
            if (BeiZis.getCustomController() != null && (BeiZis.getCustomController() == null || !BeiZis.getCustomController().isCanUseOaid())) {
                return;
            }
        }
        String str = (String) as.b(this.f10067f, "__OAID__", "");
        if (TextUtils.isEmpty(str) || RequestInfo.getInstance(this.f10067f).getDevInfo() == null) {
            return;
        }
        RequestInfo.getInstance(this.f10067f).getDevInfo().setOaid(str);
    }

    public void h() {
        if (this.f10080u) {
            return;
        }
        this.f10080u = true;
        if (ah.b()) {
            if (BeiZis.isLimitPersonalAds()) {
                return;
            }
            if (BeiZis.getCustomController() != null && (BeiZis.getCustomController() == null || !BeiZis.getCustomController().isCanUseOaid())) {
                return;
            }
        }
        com.beizi.fusion.tool.e.b().c().execute(new Runnable() { // from class: com.beizi.fusion.c.b.2
            @Override // java.lang.Runnable
            public void run() {
                b.this.B();
                b.this.A();
            }
        });
    }

    public boolean i() {
        return this.f10072m;
    }

    public boolean j() {
        return this.f10073n;
    }

    public boolean k() {
        return this.f10076q;
    }

    public boolean l() {
        return this.f10084y;
    }

    public void m() {
        h();
        if (this.f10072m && this.f10068g && this.f10067f != null && this.f10070i.f10266a.a() == 0) {
            this.f10070i.f10266a.a(1);
            this.f10070i.f10266a.a(2);
        }
    }

    public void n() {
        Context context = this.f10067f;
        if (context != null && this.f10069h == null) {
            if (ResponseInfo.getInstance(context).isInit()) {
                EventCar.getInstance(this.f10067f).goRoad(new EventBean(f10061b, "", "410.000", "", a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                EventCar.getInstance(this.f10067f).goRoad(new EventBean(f10061b, "", "410.200", "", a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            } else {
                EventCar.getInstance(this.f10067f).goRoad(new EventBean(f10061b, "", "410.000", "", a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                EventCar.getInstance(this.f10067f).goRoad(new EventBean(f10061b, "", "410.500", "", a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            }
            com.beizi.fusion.update.b bVarA = com.beizi.fusion.update.b.a(this.f10067f);
            this.f10069h = bVarA;
            bVarA.b(0);
        }
    }

    public boolean o() {
        return this.f10075p;
    }

    public boolean p() {
        return (BeiZis.getCustomController() == null || !BeiZis.getCustomController().forbidSensor() || ResponseInfo.getInstance(this.f10067f).isOpenSensor()) ? false : true;
    }

    public boolean q() {
        return BeiZis.getCustomController() == null || BeiZis.getCustomController().isCanUseAndroidId();
    }

    public String r() {
        return BeiZis.getCustomController() == null ? "" : BeiZis.getCustomController().getAndroidId();
    }

    public boolean s() {
        return this.f10077r;
    }

    public String t() {
        return this.f10078s;
    }

    public boolean u() {
        return this.f10081v;
    }

    public boolean v() {
        return this.f10082w;
    }

    public boolean w() {
        return this.f10083x;
    }

    public static b a() {
        if (f10063d == null) {
            synchronized (b.class) {
                if (f10063d == null) {
                    f10063d = new b();
                }
            }
        }
        return f10063d;
    }

    public String b() {
        return f10060a;
    }

    public String c() {
        return f10065j;
    }

    public String d() {
        return f10066k;
    }

    public Context e() {
        return this.f10067f;
    }

    public String b(String str) {
        String appId;
        String spaceId;
        try {
            if (TextUtils.isEmpty(str) || this.f10067f == null || !this.f10068g) {
                return null;
            }
            h();
            AdSpacesBean adSpaceBean = ResponseInfo.getInstance(this.f10067f).getAdSpaceBean(str);
            if (adSpaceBean == null) {
                C();
                return n.a(this.f10067f, null, null);
            }
            List<AdSpacesBean.BuyerBean> buyer = adSpaceBean.getBuyer();
            if (buyer != null && !buyer.isEmpty()) {
                Iterator<AdSpacesBean.BuyerBean> it2 = buyer.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        appId = null;
                        spaceId = null;
                        break;
                    }
                    AdSpacesBean.BuyerBean next = it2.next();
                    if (next != null && "S2S".equalsIgnoreCase(next.getBidType())) {
                        appId = next.getAppId();
                        spaceId = next.getSpaceId();
                        break;
                    }
                }
                if (!TextUtils.isEmpty(appId) && !TextUtils.isEmpty(spaceId)) {
                    return n.a(this.f10067f, appId, spaceId);
                }
                C();
                return n.a(this.f10067f, null, null);
            }
            C();
            return n.a(this.f10067f, null, null);
        } catch (Exception unused) {
            return n.a(this.f10067f, null, null);
        }
    }

    public b a(String str) {
        f10064e = str;
        return f10063d;
    }

    public void a(Context context, String str, String str2, String str3) {
        synchronized (b.class) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("init start applicationCode：");
            sb2.append(str);
            if (context != null) {
                if (!this.f10068g) {
                    this.f10067f = context.getApplicationContext();
                    String strA = at.a();
                    f10061b = strA;
                    EventBean eventBean = new EventBean(strA, "", "", "", str, "", "", String.valueOf(System.currentTimeMillis()), "");
                    this.f10070i = new com.beizi.fusion.events.b(eventBean);
                    f10060a = str;
                    f10065j = str2;
                    f10066k = str3;
                    com.beizi.fusion.events.b bVar = this.f10070i;
                    bVar.f10266a.addObserver(bVar);
                    this.f10070i.a().a(eventBean);
                    AppEventId.getInstance(this.f10067f).setAppStart();
                    AppEventId.getInstance(this.f10067f).setAppSdkInit();
                    z.a().b(this.f10067f);
                    if (this.f10070i.f10266a.a() == 0) {
                        if (BeiZis.isIsSyncInit()) {
                            y();
                        } else {
                            com.beizi.fusion.tool.e.b().c().execute(new Runnable() { // from class: com.beizi.fusion.c.b.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    b.this.y();
                                }
                            });
                        }
                        this.f10068g = true;
                    }
                } else {
                    b((BeiZiInitCallBack) null);
                }
            } else {
                throw new IllegalArgumentException("Context cannot be null.");
            }
        }
    }

    private synchronized void b(BeiZiInitCallBack beiZiInitCallBack) {
        try {
            if (BeiZis.isIsSyncInit()) {
                return;
            }
            if (beiZiInitCallBack != null) {
                if (this.f10068g) {
                    beiZiInitCallBack.success();
                    return;
                } else {
                    this.f10079t.add(beiZiInitCallBack);
                    return;
                }
            }
            this.f10068g = true;
            Iterator<BeiZiInitCallBack> it2 = this.f10079t.iterator();
            while (it2.hasNext()) {
                it2.next().success();
            }
            this.f10079t.clear();
        } catch (Throwable unused) {
        }
    }

    public void a(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        try {
            if (map.containsKey("forbid_config_network")) {
                Object obj = map.get("forbid_config_network");
                if (obj instanceof Boolean) {
                    this.f10072m = ((Boolean) obj).booleanValue();
                }
            }
            if (map.containsKey("speed_first_strategy")) {
                Object obj2 = map.get("speed_first_strategy");
                if (obj2 instanceof Boolean) {
                    this.f10073n = ((Boolean) obj2).booleanValue();
                }
            }
            if (map.containsKey("forbid_collect_crash")) {
                Object obj3 = map.get("forbid_collect_crash");
                if (obj3 instanceof Boolean) {
                    this.f10074o = ((Boolean) obj3).booleanValue();
                }
            }
            if (map.containsKey("forbid_verify_window_focus")) {
                Object obj4 = map.get("forbid_verify_window_focus");
                if (obj4 instanceof Boolean) {
                    this.f10075p = ((Boolean) obj4).booleanValue();
                }
            }
            if (map.containsKey("allow_use_app_status")) {
                Object obj5 = map.get("allow_use_app_status");
                if (obj5 instanceof Boolean) {
                    this.f10076q = ((Boolean) obj5).booleanValue();
                }
            }
            if (map.containsKey("isCanUseSimOperator")) {
                Object obj6 = map.get("isCanUseSimOperator");
                if (obj6 instanceof Boolean) {
                    this.f10077r = ((Boolean) obj6).booleanValue();
                }
            }
            if (map.containsKey("simOperator")) {
                Object obj7 = map.get("simOperator");
                if (obj7 instanceof String) {
                    this.f10078s = (String) obj7;
                }
            }
            if (map.containsKey("open_location_frequency")) {
                Object obj8 = map.get("open_location_frequency");
                if (obj8 instanceof Boolean) {
                    this.f10081v = ((Boolean) obj8).booleanValue();
                }
            }
            if (map.containsKey("limit_location_frequency")) {
                Object obj9 = map.get("limit_location_frequency");
                if (obj9 instanceof Boolean) {
                    this.f10082w = ((Boolean) obj9).booleanValue();
                }
            }
            if (map.containsKey("forbid_collect_store_info")) {
                Object obj10 = map.get("forbid_collect_store_info");
                if (obj10 instanceof Boolean) {
                    this.f10083x = ((Boolean) obj10).booleanValue();
                }
            }
            if (map.containsKey("open_async")) {
                Object obj11 = map.get("open_async");
                if (obj11 instanceof Boolean) {
                    this.f10084y = ((Boolean) obj11).booleanValue();
                }
            }
        } catch (Exception unused) {
        }
    }

    public void a(BeiZiInitCallBack beiZiInitCallBack) {
        b(beiZiInitCallBack);
    }
}
