package com.beizi.fusion.work.b;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.beizi.fusion.c.c;
import com.beizi.fusion.c.e;
import com.beizi.fusion.c.g;
import com.beizi.fusion.c.n;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.b;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.as;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.fusion.work.a implements c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f11048o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f11049p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f11050q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f11051r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.beizi.ad.v2.c.a f11052s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private AdSpacesBean.UniteControlBean f11053t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f11054u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f11057x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f11058y;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected String f11047n = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f11055v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f11056w = false;

    public a(Context context, String str, long j10, long j11, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, e eVar) {
        this.f11048o = context;
        this.f11049p = str;
        this.f11050q = j10;
        this.f11051r = j11;
        this.f10982e = buyerBean;
        this.f10981d = eVar;
        this.f10983f = forwardBean;
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        aB();
        aC();
        aD();
        aE();
        aF();
    }

    private void aB() {
        AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = this.f10982e.getRegionalClickView();
        if (regionalClickView == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBeanA = a(regionalClickView.getOrderData(), this.f11052s.b());
        AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView2 = (orderDataRegionalClickViewBeanA == null || orderDataRegionalClickViewBeanA.getRegionalClickView() == null) ? null : orderDataRegionalClickViewBeanA.getRegionalClickView();
        if (regionalClickView2 != null) {
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setRegionalClickUuid(regionalClickView2.getRegionalClickUuid());
                ao();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f10979b;
        if (eventBean2 != null) {
            eventBean2.setRegionalClickUuid(regionalClickView.getRegionalClickUuid());
            ao();
        }
    }

    private void aC() {
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick = this.f10982e.getFullScreenClick();
        if (fullScreenClick == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBeanB = b(fullScreenClick.getOrderData(), this.f11052s.b());
        AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick2 = (orderDataFullScreenClickBeanB == null || orderDataFullScreenClickBeanB.getFullScreenClick() == null) ? null : orderDataFullScreenClickBeanB.getFullScreenClick();
        if (fullScreenClick2 != null) {
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setFullScreenClickUuid(fullScreenClick2.getFullScreenClickUuid());
                ao();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f10979b;
        if (eventBean2 != null) {
            eventBean2.setFullScreenClickUuid(fullScreenClick.getFullScreenClickUuid());
            ao();
        }
    }

    private void aD() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f10982e.getShakeView();
        if (shakeView == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanC = c(shakeView.getOrderData(), this.f11052s.b());
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView2 = (orderDataShakeViewBeanC == null || orderDataShakeViewBeanC.getShakeView() == null) ? null : orderDataShakeViewBeanC.getShakeView();
        if (shakeView2 != null) {
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setShakeViewUuid(shakeView2.getShakeViewUuid());
                ao();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f10979b;
        if (eventBean2 != null) {
            eventBean2.setShakeViewUuid(shakeView.getShakeViewUuid());
            ao();
        }
    }

    private void aE() {
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClick = this.f10982e.getScrollClick();
        if (scrollClick == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanD = d(scrollClick.getOrderData(), this.f11052s.b());
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClick2 = (orderDataScrollViewOrderBeanD == null || orderDataScrollViewOrderBeanD.getScrollClick() == null) ? null : orderDataScrollViewOrderBeanD.getScrollClick();
        if (scrollClick2 != null) {
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setScrollClickUuid(scrollClick2.getScrollClickUuid());
                ao();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f10979b;
        if (eventBean2 != null) {
            eventBean2.setScrollClickUuid(scrollClick.getScrollClickUuid());
            ao();
        }
    }

    private void aF() {
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule = this.f10982e.getEulerAngleRule();
        if (eulerAngleRule == null) {
            return;
        }
        AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBeanE = e(eulerAngleRule.getOrderData(), this.f11052s.b());
        AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule2 = (orderDataEulerAngleViewBeanE == null || orderDataEulerAngleViewBeanE.getEulerAngleRule() == null) ? null : orderDataEulerAngleViewBeanE.getEulerAngleRule();
        if (eulerAngleRule2 != null) {
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setEulerAngleUuid(eulerAngleRule2.getEulerAngleUuid());
                ao();
                return;
            }
            return;
        }
        EventBean eventBean2 = this.f10979b;
        if (eventBean2 != null) {
            eventBean2.setEulerAngleUuid(eulerAngleRule.getEulerAngleUuid());
            ao();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void az() {
        e eVar = this.f10981d;
        if (eVar == null) {
            return;
        }
        Map<String, com.beizi.fusion.work.a> mapS = eVar.s();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("splashWorkers:");
        sb2.append(mapS.toString());
        Z();
        g gVar = this.f10984g;
        if (gVar == g.SUCCESS) {
            this.f10981d.a(f(), (View) null);
        } else if (gVar == g.FAIL) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("other worker shown,");
            sb3.append(f());
            sb3.append(" remove");
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        com.beizi.ad.v2.c.a aVar = this.f11052s;
        if (aVar == null) {
            return null;
        }
        return aVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public JSONObject ax() {
        com.beizi.ad.v2.c.a aVar = this.f11052s;
        if (aVar == null) {
            return null;
        }
        return aVar.m();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        com.beizi.ad.v2.c.a aVar = this.f11052s;
        if (aVar == null) {
            return false;
        }
        return aVar.q();
    }

    @Override // com.beizi.fusion.work.a
    public void e() {
    }

    @Override // com.beizi.fusion.work.a
    public String f() {
        return "BEIZI";
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean c(List<AdSpacesBean.BuyerBean.OrderDataShakeViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBean : list) {
                List<String> orderList = orderDataShakeViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataShakeViewBean;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.work.a
    public void d() {
        if (this.f10981d == null) {
            return;
        }
        this.f10985h = this.f10982e.getAppId();
        this.f10986i = this.f10982e.getSpaceId();
        this.f10980c = this.f10982e.getBuyerSpaceUuId();
        this.f11047n = "complain_config_" + this.f10986i;
        AdSpacesBean.FilterBean filter = this.f10982e.getFilter();
        if (filter != null) {
            this.f11053t = filter.getUniteControl();
        }
        this.f11054u = ai.b(100);
        if (!b()) {
            a(String.valueOf(10170), 10170);
            return;
        }
        try {
            List<AdSpacesBean.CallBackStrategyBean> callBackStrategy = this.f10982e.getCallBackStrategy();
            if (callBackStrategy != null && callBackStrategy.size() > 0) {
                this.f11055v = true;
                for (int i10 = 0; i10 < callBackStrategy.size(); i10++) {
                    AdSpacesBean.CallBackStrategyBean callBackStrategyBean = callBackStrategy.get(i10);
                    if ("290.300".equalsIgnoreCase(callBackStrategyBean.getEventCode())) {
                        this.f11056w = ai.a(Integer.parseInt(callBackStrategyBean.getRate()));
                        break;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        b bVar = this.f10978a;
        if (bVar != null) {
            EventBean eventBeanA = bVar.a().a(this.f10980c);
            this.f10979b = eventBeanA;
            if (eventBeanA != null) {
                s();
                t();
                n.a(this.f11048o, this.f10985h);
                u();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(":requestAd:");
        sb2.append(this.f10985h);
        sb2.append("====");
        sb2.append(this.f10986i);
        sb2.append("===");
        sb2.append(this.f11051r);
        long j10 = this.f11051r;
        if (j10 > 0) {
            this.f10990m.sendEmptyMessageDelayed(1, j10);
            return;
        }
        e eVar = this.f10981d;
        if (eVar == null || eVar.u() >= 1 || this.f10981d.t() == 2) {
            return;
        }
        k();
    }

    @Override // com.beizi.fusion.work.a
    public com.beizi.fusion.e.a h() {
        return this.f10987j;
    }

    @Override // com.beizi.fusion.work.a
    public String i() {
        com.beizi.ad.v2.c.a aVar = this.f11052s;
        if (aVar == null) {
            return null;
        }
        return aVar.a();
    }

    @Override // com.beizi.fusion.work.a
    public AdSpacesBean.BuyerBean j() {
        return this.f10982e;
    }

    @Override // com.beizi.fusion.work.a
    protected void k() {
        v();
        ab();
        com.beizi.ad.v2.c.a aVar = new com.beizi.ad.v2.c.a(this.f11048o, false);
        this.f11052s = aVar;
        aVar.a(this.f10986i);
        this.f11052s.a(this.f10982e);
        this.f11052s.a(new com.beizi.ad.a() { // from class: com.beizi.fusion.work.b.a.1
            @Override // com.beizi.ad.a
            public void a(int i10) {
                super.a(i10);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiInterstitialAd onAdFailedToLoad: ");
                sb2.append(i10);
                a.this.a(String.valueOf(i10), i10);
            }

            @Override // com.beizi.ad.a
            public void b() {
                super.b();
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADSHOW;
                if (a.this.f11057x) {
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.f11058y > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.f11058y));
                    }
                    a.this.ao();
                }
                if (((com.beizi.fusion.work.a) a.this).f10981d != null && ((com.beizi.fusion.work.a) a.this).f10981d.t() != 2) {
                    ((com.beizi.fusion.work.a) a.this).f10981d.b(a.this.f());
                    a.this.ac();
                }
                a.this.B();
                a.this.V();
                a.this.C();
            }

            @Override // com.beizi.ad.a
            public void c() {
                if (((com.beizi.fusion.work.a) a.this).f10981d != null && ((com.beizi.fusion.work.a) a.this).f10981d.t() != 2) {
                    ((com.beizi.fusion.work.a) a.this).f10981d.c(a.this.f());
                }
                a.this.F();
            }

            @Override // com.beizi.ad.a
            public void d() {
                super.d();
                if (a.this.f11055v && ((com.beizi.fusion.work.a) a.this).f10982e != null) {
                    ((com.beizi.fusion.work.a) a.this).f10979b.setCallBackStrategyUuid(((com.beizi.fusion.work.a) a.this).f10982e.getCallBackStrategyUuid());
                    a.this.ao();
                }
                a.this.E();
                if (!a.this.f11055v || a.this.f11056w) {
                    if (((com.beizi.fusion.work.a) a.this).f10981d != null && ((com.beizi.fusion.work.a) a.this).f10981d.t() != 2) {
                        ((com.beizi.fusion.work.a) a.this).f10981d.d(a.this.f());
                    }
                    a.this.D();
                    a.this.ad();
                }
            }

            @Override // com.beizi.ad.a
            public void a() {
                super.a();
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                if (a.this.f11052s.a() != null) {
                    try {
                        a aVar2 = a.this;
                        aVar2.a(Double.parseDouble(aVar2.f11052s.a()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                a aVar3 = a.this;
                aVar3.f11057x = aVar3.f11052s.i();
                if (a.this.f11057x) {
                    a aVar4 = a.this;
                    aVar4.f11058y = aVar4.f11052s.j();
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.f11058y > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.f11058y));
                    }
                    a.this.ao();
                }
                a.this.x();
                if (a.this.Y()) {
                    a.this.az();
                } else {
                    a.this.P();
                }
                a.this.aA();
            }

            @Override // com.beizi.ad.a
            public void a(String str) {
                super.a(str);
                try {
                    as.a(a.this.f11048o, a.this.f11047n, (Object) Long.valueOf(System.currentTimeMillis()));
                    ((com.beizi.fusion.work.a) a.this).f10979b.setComplain(str);
                    a.this.ao();
                    a.this.H();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
        this.f11052s.a(true);
        try {
            this.f11052s.a(this.f10979b.m15clone());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f11052s.a((int) this.f11050q);
        this.f11052s.a(this.f10982e);
        if ("S2S".equals(g())) {
            this.f11052s.c(g());
            e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.f11052s.b(strB);
                }
            }
        }
        e eVar2 = this.f10981d;
        if (eVar2 != null) {
            this.f11052s.c(eVar2.C());
            this.f11052s.d(this.f10981d.D());
        }
        this.f11052s.c();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
        com.beizi.ad.v2.c.a aVar = this.f11052s;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        com.beizi.ad.v2.c.a aVar;
        if (y() && (aVar = this.f11052s) != null && aVar.d()) {
            ag();
        }
    }

    private boolean b() {
        try {
            AdSpacesBean.UniteControlBean uniteControlBean = this.f11053t;
            if (uniteControlBean == null) {
                return true;
            }
            int random = uniteControlBean.getRandom();
            long duration = this.f11053t.getDuration();
            long jLongValue = ((Long) as.b(this.f11048o, "uniteTime", 0L)).longValue();
            return jLongValue <= 0 || duration <= 0 || System.currentTimeMillis() - jLongValue >= duration || random >= this.f11054u || random == 100;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean e(List<AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBean : list) {
                List<String> orderList = orderDataEulerAngleViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataEulerAngleViewBean;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.work.a
    public void a(Activity activity) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(" out make show ad");
        try {
            if (!b()) {
                a(String.valueOf(10170), 10170);
                return;
            }
            com.beizi.ad.v2.c.a aVar = this.f11052s;
            if (aVar == null || !aVar.d()) {
                return;
            }
            this.f11052s.a(activity);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean b(List<AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBean : list) {
                List<String> orderList = orderDataFullScreenClickBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataFullScreenClickBean;
                }
            }
        }
        return null;
    }

    private AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean a(List<AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBean : list) {
                List<String> orderList = orderDataRegionalClickViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRegionalClickViewBean;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.work.a
    public void b(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            com.beizi.ad.v2.c.a aVar = this.f11052s;
            if (aVar == null) {
                return;
            }
            aVar.b(map);
            if (map.containsKey("winPrice") && (obj3 = map.get("winPrice")) != null && (obj3 instanceof String)) {
                String str = (String) obj3;
                if (!TextUtils.isEmpty(str)) {
                    this.f10979b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj2 = map.get("adnId")) != null && (obj2 instanceof String)) {
                String str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    this.f10979b.setAdnId(str2);
                }
            }
            if (map.containsKey("lossReason") && (obj = map.get("lossReason")) != null && (obj instanceof String)) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    this.f10979b.setLossReason(str3);
                }
            }
            ao();
            N();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    public void a(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            com.beizi.ad.v2.c.a aVar = this.f11052s;
            if (aVar == null) {
                return;
            }
            aVar.a(map);
            if (map.containsKey("winPrice") && (obj4 = map.get("winPrice")) != null && (obj4 instanceof String)) {
                String str = (String) obj4;
                if (!TextUtils.isEmpty(str)) {
                    this.f10979b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj3 = map.get("adnId")) != null && (obj3 instanceof String)) {
                String str2 = (String) obj3;
                if (!TextUtils.isEmpty(str2)) {
                    this.f10979b.setAdnId(str2);
                }
            }
            if (map.containsKey("highestLossPrice") && (obj2 = map.get("highestLossPrice")) != null && (obj2 instanceof String)) {
                String str3 = (String) obj2;
                if (!TextUtils.isEmpty(str3)) {
                    this.f10979b.setHighestLossPrice(str3);
                }
            }
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null && (obj instanceof String)) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    this.f10979b.setSecondPrice(str4);
                }
            }
            ao();
            M();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean d(List<AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBean : list) {
                List<String> orderList = orderDataScrollViewOrderBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataScrollViewOrderBean;
                }
            }
        }
        return null;
    }
}
