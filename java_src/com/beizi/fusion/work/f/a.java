package com.beizi.fusion.work.f;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.ad.model.k;
import com.beizi.ad.model.m;
import com.beizi.fusion.c.e;
import com.beizi.fusion.c.g;
import com.beizi.fusion.c.n;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.b;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.aq;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.unified.BZUnifiedAdActionData;
import com.beizi.fusion.unified.BZUnifiedAdResponse;
import com.beizi.fusion.update.ShakeArcView;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.fusion.work.a {
    private View D;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f11226n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.beizi.ad.v2.h.a f11227o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private BZUnifiedAdResponse f11228p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ViewGroup f11229q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f11230r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f11231s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f11232t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f11233u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f11234v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f11235w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private aq f11238z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f11236x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f11237y = false;
    private String A = null;
    private boolean B = false;
    private int C = -1;

    public a(Context context, long j10, int i10, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, e eVar) {
        this.f11226n = context;
        this.f11230r = j10;
        this.f11233u = i10;
        this.f10982e = buyerBean;
        this.f10983f = forwardBean;
        this.f10981d = eVar;
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        final AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView2;
        try {
            m mVarP = this.f11227o.p();
            if (mVarP != null && mVarP.c() == 1) {
                int iD = mVarP.d();
                AdSpacesBean.BuyerBean buyerBean = this.f10982e;
                if (buyerBean == null || this.f11229q == null || (shakeView = buyerBean.getShakeView()) == null || shakeView.getPosition() == null) {
                    return;
                }
                if (this.f11238z == null) {
                    this.f11238z = new aq(this.f11226n);
                }
                String shakeViewUuid = shakeView.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(shakeView.getOrderData(), this.f11227o.b());
                if (orderDataShakeViewBeanA == null || orderDataShakeViewBeanA.getShakeView() == null) {
                    shakeView2 = null;
                } else {
                    shakeView2 = orderDataShakeViewBeanA.getShakeView();
                    if (shakeView2 != null) {
                        shakeViewUuid = shakeView2.getShakeViewUuid();
                    }
                }
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setShakeViewUuid(shakeViewUuid);
                    ao();
                }
                com.beizi.ad.v2.h.a aVar = this.f11227o;
                if (aVar != null) {
                    this.f11238z.a(Boolean.valueOf(aVar.l()));
                }
                View viewA = this.f11238z.a(au.b(this.f11226n, this.f11229q.getWidth()), au.b(this.f11226n, this.f11229q.getHeight()), shakeView.getPosition());
                this.D = viewA;
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        if (iD == 0) {
                            this.D.setVisibility(4);
                        } else {
                            this.D.setVisibility(0);
                        }
                        this.f11229q.addView(this.D, layoutParams2);
                    }
                }
                a(shakeView);
                a(shakeView2, shakeView);
                this.f11238z.a(new aq.a() { // from class: com.beizi.fusion.work.f.a.4
                    @Override // com.beizi.fusion.tool.aq.a
                    public void b() {
                        try {
                            if (a.this.f11234v) {
                                return;
                            }
                            if (a.this.B && shakeView.getCoolShakeView() != null) {
                                as.a(a.this.f11226n, a.this.A, (Object) Long.valueOf(System.currentTimeMillis()));
                            }
                            ((com.beizi.fusion.work.a) a.this).f10979b.setClickType("shake");
                            a.this.ao();
                            k kVar = new k();
                            kVar.a(2);
                            a.this.a(1, kVar);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                a(shakeView2, shakeView, this.D);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aB() {
        try {
            aq aqVar = this.f11238z;
            if (aqVar != null) {
                aqVar.c();
            }
            this.f11238z = null;
        } catch (Exception e10) {
            e10.printStackTrace();
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
            this.f10981d.a(f(), this.f11228p);
        } else if (gVar == g.FAIL) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("other worker shown,");
            sb3.append(f());
            sb3.append(" remove");
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        com.beizi.ad.v2.h.a aVar = this.f11227o;
        if (aVar == null) {
            return null;
        }
        return aVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        com.beizi.ad.v2.h.a aVar = this.f11227o;
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

    private boolean c(long j10) {
        try {
            return System.currentTimeMillis() - au.p(this.f11226n).longValue() < j10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override // com.beizi.fusion.work.a
    public void d() {
        if (this.f10981d == null) {
            return;
        }
        this.f10985h = this.f10982e.getAppId();
        this.f10986i = this.f10982e.getSpaceId();
        this.f10980c = this.f10982e.getBuyerSpaceUuId();
        this.A = "splash_cool_" + this.f10986i;
        ac.b("BeiZis", "AdWorker chanel = " + this.f10980c);
        try {
            List<AdSpacesBean.CallBackStrategyBean> callBackStrategy = this.f10982e.getCallBackStrategy();
            if (callBackStrategy != null && callBackStrategy.size() > 0) {
                this.f11236x = true;
                for (int i10 = 0; i10 < callBackStrategy.size(); i10++) {
                    AdSpacesBean.CallBackStrategyBean callBackStrategyBean = callBackStrategy.get(i10);
                    if ("290.300".equalsIgnoreCase(callBackStrategyBean.getEventCode())) {
                        this.f11237y = ai.a(Integer.parseInt(callBackStrategyBean.getRate()));
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
                n.a(this.f11226n, this.f10985h);
                u();
            }
        }
        long sleepTime = this.f10983f.getSleepTime();
        if (this.f10981d.v()) {
            sleepTime = Math.max(sleepTime, this.f10983f.getHotRequestDelay());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(":requestAd:");
        sb2.append(this.f10985h);
        sb2.append("====");
        sb2.append(this.f10986i);
        sb2.append("===");
        sb2.append(sleepTime);
        if (sleepTime > 0) {
            this.f10990m.sendEmptyMessageDelayed(1, sleepTime);
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
        if (this.f11228p == null) {
            return null;
        }
        return this.f11228p.getEcpm() + "";
    }

    @Override // com.beizi.fusion.work.a
    public AdSpacesBean.BuyerBean j() {
        return this.f10982e;
    }

    @Override // com.beizi.fusion.work.a
    protected void k() {
        v();
        ab();
        com.beizi.ad.v2.h.a aVar = new com.beizi.ad.v2.h.a(this.f11226n, this.f10986i, this.f11233u);
        this.f11227o = aVar;
        aVar.a(new com.beizi.ad.v2.h.b() { // from class: com.beizi.fusion.work.f.a.1
            @Override // com.beizi.ad.v2.h.b
            public void a(BZUnifiedAdResponse bZUnifiedAdResponse) {
                if (bZUnifiedAdResponse == null) {
                    a.this.a(String.valueOf(3), 3);
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBZUnifiedAd onAdLoaded:");
                sb2.append(System.currentTimeMillis());
                a.this.f11228p = bZUnifiedAdResponse;
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                if (bZUnifiedAdResponse.getEcpm() != 0) {
                    try {
                        a.this.a(bZUnifiedAdResponse.getEcpm());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                a aVar2 = a.this;
                aVar2.f11231s = aVar2.f11227o.i();
                if (a.this.f11231s) {
                    a aVar3 = a.this;
                    aVar3.f11232t = aVar3.f11227o.j();
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.f11232t > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.f11232t));
                    }
                    a.this.ao();
                }
                a.this.x();
                if (a.this.Y()) {
                    a.this.az();
                } else {
                    a.this.P();
                }
            }

            @Override // com.beizi.ad.v2.h.b
            public void b() {
                a.this.E();
                a.this.b();
            }

            @Override // com.beizi.ad.v2.h.b
            public void a(int i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBZUnifiedAd onAdFailedToLoad:");
                sb2.append(i10);
                a.this.a(String.valueOf(i10), i10);
            }

            @Override // com.beizi.ad.v2.h.b
            public void a() {
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADSHOW;
                if (a.this.f11231s) {
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.f11232t > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.f11232t));
                    }
                    a.this.ao();
                }
                if (((com.beizi.fusion.work.a) a.this).f10981d != null) {
                    if (((com.beizi.fusion.work.a) a.this).f10981d.t() != 2) {
                        ((com.beizi.fusion.work.a) a.this).f10981d.b(a.this.f());
                    }
                    a.this.ac();
                }
                a.this.B();
                a.this.V();
                a.this.C();
                a.this.aA();
            }
        });
        this.f11227o.a((int) this.f11230r);
        this.f11227o.a(this.f10982e);
        try {
            this.f11227o.a(this.f10979b.m15clone());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if ("S2S".equals(g())) {
            this.f11227o.c(g());
            e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.f11227o.b(strB);
                }
            }
        }
        e eVar2 = this.f10981d;
        if (eVar2 != null) {
            this.f11227o.c(eVar2.C());
            this.f11227o.d(this.f10981d.D());
        }
        this.f11227o.c();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
        try {
            super.l();
            com.beizi.ad.v2.h.a aVar = this.f11227o;
            if (aVar != null) {
                aVar.f();
                this.f11227o = null;
            }
            aB();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        if (!y() || this.f11227o == null) {
            return;
        }
        ag();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        if (this.f11235w || !this.f11236x || this.f11237y) {
            D();
            e eVar = this.f10981d;
            if (eVar != null) {
                eVar.d(f());
                ad();
            }
        }
    }

    @Override // com.beizi.fusion.work.a
    protected void a(Message message) {
        EventBean eventBean = this.f10979b;
        if (eventBean != null) {
            eventBean.setError(String.valueOf(message.obj));
            this.f10979b.setErrorCode(String.valueOf(message.obj));
            ao();
            A();
        }
    }

    @Override // com.beizi.fusion.work.a
    public void b(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            com.beizi.ad.v2.h.a aVar = this.f11227o;
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
    public void a(ViewGroup viewGroup, List<View> list) {
        this.f11229q = viewGroup;
        if (list != null) {
            Iterator<View> it2 = list.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
        }
        com.beizi.ad.v2.h.a aVar = this.f11227o;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f11229q);
    }

    private void a(View view) {
        if (view == null) {
            return;
        }
        final String[] strArr = new String[4];
        view.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.f.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (a.this.f11227o != null) {
                    k kVar = new k();
                    kVar.a(0);
                    kVar.a(strArr[0]);
                    kVar.b(strArr[1]);
                    kVar.c(strArr[2]);
                    kVar.d(strArr[3]);
                    kVar.e(strArr[0]);
                    kVar.f(strArr[1]);
                    kVar.g(strArr[2]);
                    kVar.h(strArr[3]);
                    a.this.a(0, kVar);
                }
            }
        });
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.f.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                try {
                    if (motionEvent.getAction() == 0) {
                        strArr[0] = String.valueOf(motionEvent.getX());
                        strArr[1] = String.valueOf(motionEvent.getY());
                        strArr[2] = String.valueOf(motionEvent.getRawX());
                        strArr[3] = String.valueOf(motionEvent.getRawY());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                return false;
            }
        });
    }

    @Override // com.beizi.fusion.work.a
    public void a(BZUnifiedAdActionData bZUnifiedAdActionData) {
        try {
            if (this.f11227o != null && this.f11229q != null && bZUnifiedAdActionData != null) {
                k kVar = new k();
                kVar.a(bZUnifiedAdActionData.getType());
                int downX = bZUnifiedAdActionData.getDownX();
                int downY = bZUnifiedAdActionData.getDownY();
                int upX = bZUnifiedAdActionData.getUpX();
                int upY = bZUnifiedAdActionData.getUpY();
                int[] iArr = new int[2];
                this.f11229q.getLocationOnScreen(iArr);
                int i10 = iArr[0];
                int i11 = iArr[1];
                int i12 = downY + i11;
                kVar.a(String.valueOf(downX));
                kVar.b(String.valueOf(downY));
                kVar.c(String.valueOf(downX + i10));
                kVar.d(String.valueOf(i12));
                kVar.e(String.valueOf(upX));
                kVar.f(String.valueOf(upY));
                kVar.g(String.valueOf(i10 + upX));
                kVar.h(String.valueOf(i11 + upY));
                a(0, kVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean b(long j10) {
        long jLongValue = ((Long) as.b(this.f11226n, this.A, 0L)).longValue();
        return jLongValue != 0 && System.currentTimeMillis() - jLongValue < j10;
    }

    private boolean b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2) {
        if (shakeViewBean != null) {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean.getAliaseShakeView();
            if (aliaseShakeView != null && aliaseShakeView.getPassivationTime() > 0 && (aliaseShakeView.getShakeCount() > 0 || aliaseShakeView.getRotatCount() > 0)) {
                return true;
            }
        } else {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = shakeViewBean2.getAliaseShakeView();
            if (shakeViewBean2.getAliaseShakeView() != null && aliaseShakeView2.getPassivationTime() > 0 && (aliaseShakeView2.getShakeCount() > 0 || aliaseShakeView2.getRotatCount() > 0)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(int i10, k kVar) {
        try {
            View view = this.D;
            if (view != null) {
                view.setVisibility(4);
            }
            if (i10 == 0) {
                this.f11235w = true;
            }
            this.f11234v = true;
            this.f11227o.a(this.f11229q, kVar);
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
            com.beizi.ad.v2.h.a aVar = this.f11227o;
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

    @Override // com.beizi.fusion.work.a
    public void a(int i10) {
        com.beizi.ad.v2.h.a aVar = this.f11227o;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f11229q, i10);
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean a(List<AdSpacesBean.BuyerBean.OrderDataShakeViewBean> list, String str) {
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

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2) {
        final AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean3 = shakeViewBean != null ? shakeViewBean : shakeViewBean2;
        int regulatoryAngle = shakeViewBean3.getRegulatoryAngle();
        aq aqVar = this.f11238z;
        if (aqVar != null) {
            aqVar.h(regulatoryAngle);
        }
        AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeView = shakeViewBean2.getCoolShakeView();
        if (coolShakeView == null) {
            if (b(shakeViewBean, shakeViewBean2)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean3.getAliaseShakeView();
                if (aliaseShakeView != null) {
                    this.f11238z.a(aliaseShakeView);
                    new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.f.a.5
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.B = true;
                            a.this.f11238z.a(shakeViewBean3);
                        }
                    }, ai.b(aliaseShakeView.getPassivationTime()));
                    return;
                }
                return;
            }
            this.B = true;
            this.f11238z.a(shakeViewBean3);
            return;
        }
        if (b(coolShakeView.getCoolTime())) {
            this.C = coolShakeView.getFeedback();
            this.f11238z.a(coolShakeView);
            return;
        }
        if (c(coolShakeView.getUserProtectTime())) {
            this.C = coolShakeView.getFeedback();
            this.f11238z.a(coolShakeView);
        } else {
            if (b(shakeViewBean, shakeViewBean2)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = shakeViewBean3.getAliaseShakeView();
                if (aliaseShakeView2 != null) {
                    this.f11238z.a(aliaseShakeView2);
                    new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.f.a.6
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.B = true;
                            if (a.this.f11238z != null) {
                                a.this.f11238z.a(shakeViewBean3);
                            }
                        }
                    }, ai.b(aliaseShakeView2.getPassivationTime()));
                    return;
                }
                return;
            }
            this.B = true;
            this.f11238z.a(shakeViewBean3);
        }
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2, View view) {
        if (this.C == -1) {
            this.C = shakeViewBean2.getFeedback();
            if (shakeViewBean != null) {
                this.C = shakeViewBean.getFeedback();
            }
        }
        if (this.C == 0 || view == null || this.f11238z == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ShakeArcView shakeArcView = new ShakeArcView(this.f11226n);
            shakeArcView.setLineRadius(5);
            int i10 = (int) (((double) marginLayoutParams.width) * 0.5d);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i10, i10);
            layoutParams2.leftMargin = marginLayoutParams.leftMargin + (((marginLayoutParams.width - i10) - 12) / 2);
            layoutParams2.topMargin = (int) (((double) marginLayoutParams.topMargin) + (((double) marginLayoutParams.height) * 0.08d));
            this.f11229q.addView(shakeArcView, layoutParams2);
            this.f11238z.a(shakeArcView, this.C);
        }
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            return;
        }
        int sensorParam = shakeViewBean.getSensorParam();
        int compliantAngle = shakeViewBean.getCompliantAngle();
        boolean zIsReturnAngle = shakeViewBean.isReturnAngle();
        com.beizi.ad.v2.h.a aVar = this.f11227o;
        Map mapG = aVar != null ? aVar.g() : null;
        aq aqVar = this.f11238z;
        if (aqVar == null) {
            return;
        }
        aqVar.a(sensorParam, compliantAngle, zIsReturnAngle, mapG);
    }
}
