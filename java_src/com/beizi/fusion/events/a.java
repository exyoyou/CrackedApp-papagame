package com.beizi.fusion.events;

import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ac;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static SparseArray<String> f10238a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static SparseArray<String> f10239b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SparseArray<String> f10240c = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static SparseArray<String> f10241d = new SparseArray<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static SparseArray<String> f10242e = new SparseArray<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static SparseArray<String> f10243f = new SparseArray<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static SparseArray<String> f10244g = new SparseArray<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static SparseArray<String> f10245h = new SparseArray<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static SparseArray<String> f10246i = new SparseArray<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static SparseArray<String> f10247j = new SparseArray<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static SparseArray<String> f10248k = new SparseArray<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private HashMap<String, Pair<AdSpacesBean.BuyerBean, AdSpacesBean.ForwardBean>> f10249l = new HashMap<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private HashMap<String, EventBean> f10250m = new HashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private EventBean f10251n;

    /* JADX INFO: renamed from: com.beizi.fusion.events.a$a, reason: collision with other inner class name */
    public class C0240a extends l {
        public C0240a() {
            super();
        }
    }

    public class b extends l {
        public b() {
            super();
        }
    }

    public class c extends l {
        public c() {
            super();
        }
    }

    public class d extends l {
        public d() {
            super();
        }
    }

    public class e extends l {
        public e() {
            super();
        }
    }

    public class f extends l {
        public f() {
            super();
        }
    }

    public class g extends l {
        public g() {
            super();
        }
    }

    public class h extends l {
        public h() {
            super();
        }
    }

    public class i extends l {
        public i() {
            super();
        }
    }

    public class j extends l {
        public j() {
            super();
        }
    }

    public class k extends l {
        public k() {
            super();
        }
    }

    static {
        f10238a.put(1, "100.000");
        f10238a.put(2, "100.200");
        f10239b.put(-1, "210.400");
        f10239b.put(-2, "210.999");
        f10239b.put(1, "200.001");
        f10239b.put(2, "210.100");
        f10239b.put(3, "210.200");
        f10239b.put(4, "210.401");
        f10239b.put(5, "210.402");
        f10239b.put(6, "210.403");
        f10239b.put(7, "210.404");
        f10240c.put(-1, "220.400");
        f10240c.put(-2, "220.999");
        f10240c.put(1, "220.000");
        f10240c.put(2, "200.000");
        f10240c.put(3, "220.401");
        f10240c.put(4, "220.402");
        f10240c.put(5, "220.403");
        f10240c.put(6, "220.404");
        f10241d.put(-1, "230.400");
        f10241d.put(-2, "230.999");
        f10241d.put(1, "230.000");
        f10241d.put(2, "230.200");
        f10241d.put(3, "230.401");
        f10241d.put(4, "230.402");
        f10242e.put(-1, "245.400");
        f10242e.put(-2, "245.999");
        f10242e.put(1, "240.000");
        f10242e.put(2, "245.000");
        f10242e.put(3, "245.200");
        f10242e.put(4, "245.401");
        f10242e.put(5, "245.402");
        f10242e.put(6, "245.403");
        f10242e.put(7, "245.404");
        f10242e.put(8, "245.300");
        f10242e.put(9, "240.100");
        f10242e.put(10, "245.405");
        f10243f.put(-1, "249.400");
        f10243f.put(-2, "249.999");
        f10243f.put(1, "248.000");
        f10243f.put(2, "249.000");
        f10243f.put(3, "248.401");
        f10243f.put(4, "248.402");
        f10243f.put(5, "249.401");
        f10243f.put(6, "249.402");
        f10244g.put(-1, "280.600");
        f10244g.put(1, "250.100");
        f10244g.put(2, "250.200");
        f10244g.put(16, "250.401");
        f10244g.put(3, "255.200");
        f10244g.put(4, "280.200");
        f10244g.put(5, "280.280");
        f10244g.put(6, "280.300");
        f10244g.put(12, "280.350");
        f10244g.put(7, "290.300");
        f10244g.put(17, "290.301");
        f10244g.put(8, "280.400");
        f10244g.put(9, "280.450");
        f10244g.put(11, "280.500");
        f10244g.put(13, "280.301");
        f10244g.put(14, "280.302");
        f10244g.put(15, "280.303");
        f10244g.put(18, "250.000");
        f10244g.put(19, "250.400");
        f10244g.put(20, "280.000");
        f10244g.put(21, "250.500");
        f10244g.put(22, "290.500");
        f10245h.put(1, "280.210");
        f10245h.put(-2, "280.249");
        f10245h.put(2, "280.220");
        f10245h.put(3, "280.250");
        f10245h.put(4, "280.241");
        f10245h.put(5, "280.240");
        f10245h.put(6, "280.242");
        f10245h.put(7, "280.243");
        f10245h.put(8, "280.260");
        f10245h.put(9, "280.270");
        f10246i.put(1, "280.261");
        f10246i.put(2, "280.262");
        f10246i.put(3, "280.263");
        f10246i.put(4, "280.264");
        f10248k.put(1, "212.000");
        f10248k.put(2, "212.400");
        f10248k.put(3, "212.401");
        f10248k.put(4, "212.999");
        f10248k.put(5, "214.000");
        f10248k.put(6, "214.200");
        f10248k.put(7, "216.200");
        f10248k.put(8, "216.401");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EventBean b(String str) {
        EventBean eventBean = this.f10251n;
        if (eventBean == null || str == null) {
            return null;
        }
        try {
            EventBean eventBeanM15clone = eventBean.m15clone();
            eventBeanM15clone.setEventCode(str);
            eventBeanM15clone.setEventTime(String.valueOf(System.currentTimeMillis()));
            return eventBeanM15clone;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    private Pair<AdSpacesBean.BuyerBean, AdSpacesBean.ForwardBean> c(String str) {
        if (this.f10249l.containsKey(str)) {
            return this.f10249l.get(str);
        }
        return null;
    }

    public static String a(l lVar) {
        if (lVar instanceof i) {
            return f10238a.get(lVar.a());
        }
        if (lVar instanceof h) {
            return f10239b.get(lVar.a());
        }
        if (lVar instanceof k) {
            return f10240c.get(lVar.a());
        }
        if (lVar instanceof g) {
            return f10241d.get(lVar.a());
        }
        return lVar instanceof j ? f10247j.get(lVar.a()) : "0";
    }

    public class l extends Observable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f10263a = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Map<String, Integer> f10265c = new HashMap();

        public l() {
        }

        public void a(int i10) {
            if (this.f10263a != i10) {
                this.f10263a = i10;
                EventBean eventBeanB = a.this.b(a.a(this));
                setChanged();
                notifyObservers(eventBeanB);
            }
        }

        public int a() {
            return this.f10263a;
        }

        public void a(String str, int i10) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Map<String, Integer> map = this.f10265c;
            if (((map == null || !map.containsKey(str)) ? 0 : this.f10265c.get(str).intValue()) != i10 || i10 == 17) {
                this.f10265c.put(str, Integer.valueOf(i10));
                String strA = a.a(str, this);
                ac.b("BeiZis", "changeStatus channel = " + str + ",eventCode = " + strA);
                EventBean eventBeanA = a.this.a(str, strA);
                if ("290.300".equalsIgnoreCase(strA)) {
                    ac.b("BeiZis", "eventBean = " + eventBeanA);
                }
                setChanged();
                notifyObservers(eventBeanA);
            }
        }

        public int a(String str) {
            Map<String, Integer> map;
            if (TextUtils.isEmpty(str) || (map = this.f10265c) == null || !map.containsKey(str)) {
                return 0;
            }
            return this.f10265c.get(str).intValue();
        }
    }

    public static String a(String str, l lVar) {
        if (lVar instanceof d) {
            return f10242e.get(lVar.a(str));
        }
        if (lVar instanceof e) {
            return f10243f.get(lVar.a(str));
        }
        if (lVar instanceof f) {
            return f10244g.get(lVar.a(str));
        }
        if (lVar instanceof c) {
            return f10245h.get(lVar.a(str));
        }
        if (lVar instanceof b) {
            return f10246i.get(lVar.a(str));
        }
        return lVar instanceof C0240a ? f10248k.get(lVar.a(str)) : "0";
    }

    public void a(EventBean eventBean) {
        this.f10251n = eventBean;
    }

    public EventBean a(String str) {
        try {
            if (this.f10250m.containsKey(str)) {
                EventBean eventBean = this.f10250m.get(str);
                if (eventBean != null) {
                    EventBean eventBeanM15clone = eventBean.m15clone();
                    this.f10250m.put(str, eventBeanM15clone);
                    return eventBeanM15clone;
                }
            } else {
                EventBean eventBean2 = this.f10251n;
                if (eventBean2 != null) {
                    EventBean eventBeanM15clone2 = eventBean2.m15clone();
                    this.f10250m.put(str, eventBeanM15clone2);
                    return eventBeanM15clone2;
                }
            }
        } catch (CloneNotSupportedException unused) {
        }
        EventBean eventBean3 = new EventBean(com.beizi.fusion.c.b.f10061b, "", "", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), "");
        this.f10250m.put(str, eventBean3);
        return eventBean3;
    }

    public void a(String str, EventBean eventBean) {
        if (TextUtils.isEmpty(str) || eventBean == null) {
            return;
        }
        this.f10250m.put(str, eventBean);
    }

    public void a(AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean) {
        Pair<AdSpacesBean.BuyerBean, AdSpacesBean.ForwardBean> pair = new Pair<>(buyerBean, forwardBean);
        if (buyerBean == null || TextUtils.isEmpty(buyerBean.getBuyerSpaceUuId())) {
            return;
        }
        this.f10249l.put(buyerBean.getBuyerSpaceUuId(), pair);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EventBean a(String str, String str2) {
        Pair<AdSpacesBean.BuyerBean, AdSpacesBean.ForwardBean> pairC = c(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getChannelEventBean eventCode = ");
        sb2.append(str2);
        sb2.append(",channelData == null ");
        sb2.append(pairC == null);
        ac.b("BeiZis", sb2.toString());
        if (pairC != null) {
            AdSpacesBean.BuyerBean buyerBean = (AdSpacesBean.BuyerBean) pairC.first;
            AdSpacesBean.ForwardBean forwardBean = (AdSpacesBean.ForwardBean) pairC.second;
            EventBean eventBeanA = a(str);
            if (eventBeanA == null || buyerBean == null || forwardBean == null) {
                return eventBeanA;
            }
            eventBeanA.setEventCode(str2);
            eventBeanA.setEventTime(String.valueOf(System.currentTimeMillis()));
            a(eventBeanA, str, buyerBean, forwardBean);
            this.f10250m.put(str, eventBeanA);
            return eventBeanA;
        }
        ac.c("BeiZis", "getChannelEventBean eventCode = " + str2 + ",but channelData is null !!!");
        return null;
    }

    private static void a(EventBean eventBean, String str, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean) {
        if (eventBean == null) {
            return;
        }
        eventBean.setBuyerId(String.valueOf(com.beizi.fusion.e.b.a(buyerBean.getId())));
        eventBean.setBuyerAppId(buyerBean.getAppId());
        eventBean.setBuyerSpaceId(buyerBean.getSpaceId());
        eventBean.setChannelFilterSsid(buyerBean.getFilterSsid());
        eventBean.setRenderViewSsid(buyerBean.getRenderViewSsid());
        eventBean.setBeiZiPrice(String.valueOf(buyerBean.getAvgPrice()));
        eventBean.setBeiZiBaseId(com.beizi.fusion.e.b.b(forwardBean.getBaseId()));
        if (!"BPDI".equalsIgnoreCase(buyerBean.getBidType()) && !"C2S".equalsIgnoreCase(buyerBean.getBidType()) && !"S2S".equalsIgnoreCase(buyerBean.getBidType())) {
            eventBean.setBeiZiSrcType(0);
        } else {
            eventBean.setBeiZiSrcType(1);
            if (buyerBean.getBidPrice() > 0.0d) {
                eventBean.setBidPrice(String.valueOf(buyerBean.getBidPrice()));
            } else {
                eventBean.setBidPrice("0");
            }
        }
        if (forwardBean != null) {
            eventBean.setForwardId(forwardBean.getForwardId());
            eventBean.setParentId(forwardBean.getParentForwardId());
            eventBean.setLevel(forwardBean.getLevel());
            eventBean.setBuyerSpaceUuId(forwardBean.getBuyerSpaceUuId());
        }
    }
}
