package com.beizi.ad.v2.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.beizi.ad.internal.f;
import com.beizi.ad.lance.a.c;
import com.beizi.ad.model.e;
import com.beizi.ad.model.i;
import com.beizi.ad.model.l;
import com.beizi.ad.model.m;
import com.beizi.ad.model.n;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import com.windmill.sdk.WMConstants;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class b {
    protected boolean A;
    protected boolean B;
    protected boolean C;
    protected boolean D;
    protected boolean E;
    public boolean G;
    private String H;
    private String I;
    private Map<String, Object> J;
    private boolean L;
    private String M;
    private String N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f9678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.beizi.ad.internal.b f9679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected com.beizi.ad.internal.d.a f9680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f9681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f9682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f9683f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected String f9688k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected String f9689l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected f f9690m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f9691n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f9692o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f9693p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected int f9694q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected com.beizi.ad.internal.a.b f9695r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f9696s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f9697t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f9698u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected boolean f9699v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected EventBean f9700w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected boolean f9701x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected String f9702y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean f9703z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f9684g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f9685h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected boolean f9686i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f9687j = false;
    private boolean K = false;
    protected Handler F = new Handler(Looper.getMainLooper()) { // from class: com.beizi.ad.v2.a.b.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 16) {
                return;
            }
            b.this.n();
        }
    };

    public b(Context context, f fVar) {
        this.f9679b = null;
        this.f9678a = context.getApplicationContext();
        this.f9690m = fVar;
        com.beizi.ad.internal.b bVar = new com.beizi.ad.internal.b(context);
        this.f9679b = bVar;
        bVar.a(fVar);
    }

    private void C() {
        if (this.f9694q <= 0) {
            return;
        }
        D();
        int i10 = this.f9693p;
        if (i10 <= 0) {
            n();
            return;
        }
        Handler handler = this.F;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(16, i10);
        }
    }

    private void D() {
        Object obj;
        Object obj2;
        com.beizi.ad.model.b bVar = new com.beizi.ad.model.b();
        bVar.a(this.f9702y);
        Map<String, Object> map = this.J;
        if (map != null) {
            if (map.containsKey("orderList") && (obj2 = this.J.get("orderList")) != null && (obj2 instanceof List)) {
                List<String> list = (List) obj2;
                if (list.size() > 0) {
                    bVar.a(list);
                }
            }
            if (this.J.containsKey("interactionType") && (obj = this.J.get("interactionType")) != null && (obj instanceof Integer)) {
                bVar.a(((Integer) obj).intValue());
            }
        }
        com.beizi.ad.internal.a.a.a().a(this.f9700w, this.f9694q, bVar, this.f9690m);
    }

    private void E() {
        if (this.f9699v || !this.f9697t || this.f9698u) {
            return;
        }
        this.f9699v = true;
        com.beizi.ad.internal.a.a.a().a(this.f9695r, 1, this.f9694q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.beizi.ad.model.b F() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        com.beizi.ad.model.b bVar = new com.beizi.ad.model.b();
        bVar.a(this.f9702y);
        bVar.b(this.f9689l);
        bVar.a(false);
        bVar.b(this.L);
        Map<String, Object> map = this.J;
        if (map != null) {
            if (map.containsKey("orderList") && (obj5 = this.J.get("orderList")) != null && (obj5 instanceof List)) {
                List<String> list = (List) obj5;
                if (list.size() > 0) {
                    bVar.a(list);
                }
            }
            if (this.J.containsKey("interactionType") && (obj4 = this.J.get("interactionType")) != null && (obj4 instanceof Integer)) {
                bVar.a(((Integer) obj4).intValue());
            }
            if (this.J.containsKey("bz_user_id") && (obj3 = this.J.get("bz_user_id")) != null && (obj3 instanceof String)) {
                this.M = (String) obj3;
            }
            if (this.J.containsKey("bz_user_custom_data") && (obj2 = this.J.get("bz_user_custom_data")) != null && (obj2 instanceof String)) {
                this.N = (String) obj2;
            }
            if (this.J.containsKey("window_scene") && (obj = this.J.get("window_scene")) != null && (obj instanceof Boolean)) {
                this.G = ((Boolean) obj).booleanValue();
            }
        }
        return bVar;
    }

    private void G() {
        c.b().d().execute(new Runnable() { // from class: com.beizi.ad.v2.a.b.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    EventBean eventBeanM15clone = b.this.f9700w.m15clone();
                    eventBeanM15clone.setEventCode("280.000");
                    if (b.this.f9697t) {
                        eventBeanM15clone.setIsCacheAd("1");
                    }
                    EventCar.getInstance(b.this.f9678a).goRoad(eventBeanM15clone);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    private void H() {
        String str = this.f9689l;
        this.f9688k = str;
        com.beizi.ad.internal.b bVar = this.f9679b;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public String A() {
        return this.M;
    }

    public String B() {
        return this.N;
    }

    public void a(com.beizi.ad.internal.d.a aVar) {
    }

    public void b(int i10) {
    }

    public void c() {
    }

    public String d() {
        return this.f9702y;
    }

    public String e() {
        return this.f9689l;
    }

    public boolean f() {
        return this.f9701x;
    }

    public String g() {
        return this.f9682e;
    }

    public String h() {
        return this.f9683f;
    }

    public boolean i() {
        return this.f9684g;
    }

    public boolean j() {
        return this.f9681d;
    }

    public Map k() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null) {
            return null;
        }
        return aVar.C();
    }

    public String l() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null) {
            return null;
        }
        return aVar.D();
    }

    public com.beizi.ad.internal.d.a m() {
        return this.f9680c;
    }

    protected boolean n() {
        com.beizi.ad.internal.d.a aVarA;
        if (this.K) {
            return false;
        }
        this.K = true;
        if (this.f9694q <= 0 || this.f9696s) {
            return false;
        }
        try {
            com.beizi.ad.internal.a.b bVarB = com.beizi.ad.internal.a.a.a().b(d());
            if (bVarB == null || (aVarA = com.beizi.ad.internal.a.a.a().a(bVarB, this.f9690m)) == null) {
                return false;
            }
            if (this.f9696s) {
                com.beizi.ad.internal.a.a.a().a(bVarB, 1, this.f9694q);
                return false;
            }
            if (!a(aVarA, bVarB)) {
                return false;
            }
            a(false, null, bVarB, aVarA);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public boolean o() {
        return this.f9697t;
    }

    public long p() {
        com.beizi.ad.internal.a.b bVar;
        try {
            if (this.f9697t && (bVar = this.f9695r) != null) {
                return bVar.b();
            }
            return 0L;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public void q() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar != null) {
            aVar.d(false);
            this.f9680c.ag();
        }
        E();
        r();
    }

    public void r() {
        Handler handler = this.F;
        if (handler != null) {
            handler.removeMessages(16);
        }
    }

    public int s() {
        int i10 = this.f9691n;
        if (i10 <= 0) {
            return 5;
        }
        return i10;
    }

    public JSONObject t() {
        int iIntValue;
        String strG;
        try {
            Map<String, Object> map = this.J;
            if (map == null || !map.containsKey("materialInfo")) {
                return null;
            }
            Object obj = this.J.get("materialInfo");
            if (!(obj instanceof Integer) || (iIntValue = ((Integer) obj).intValue()) == 0) {
                return null;
            }
            if (iIntValue != 1 && iIntValue != 101 && iIntValue != 1001) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            if (this.f9680c != null) {
                JSONObject jSONObject2 = new JSONObject();
                if (iIntValue == 1 || iIntValue == 101 || iIntValue == 1001) {
                    f fVar = this.f9690m;
                    if (fVar == f.NEW_SPLASH || fVar == f.NATIVE) {
                        strG = this.f9680c.E();
                    } else if (fVar == f.INTERSTITIAL) {
                        strG = this.f9680c.x();
                    } else if (fVar == f.REWARDEDVIDEO) {
                        strG = this.f9680c.J();
                    } else {
                        strG = fVar == f.SPLASHUNIFIED ? this.f9680c.G() : null;
                    }
                    if (!TextUtils.isEmpty(strG) && strG.startsWith("http")) {
                        jSONObject2.put("imageUrl", strG);
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(strG);
                        jSONObject2.put("imageUrls", jSONArray);
                    }
                    String strY = this.f9680c.y();
                    if (!TextUtils.isEmpty(strY)) {
                        jSONObject2.put("videoUrl", strY);
                    }
                    String strU = this.f9680c.U();
                    if (!TextUtils.isEmpty(strU)) {
                        jSONObject2.put(WMConstants.CRID, strU);
                    }
                }
                if (iIntValue == 101 || iIntValue == 1001) {
                    String strO = this.f9680c.O();
                    if (!TextUtils.isEmpty(strO)) {
                        jSONObject2.put("deeplinkUrl", strO);
                    }
                    String strP = this.f9680c.P();
                    if (!TextUtils.isEmpty(strP)) {
                        jSONObject2.put("landingPageUrl", strP);
                    }
                    String strQ = this.f9680c.Q();
                    if (!TextUtils.isEmpty(strQ)) {
                        jSONObject2.put("downloadUrl", strQ);
                    }
                    String strR = this.f9680c.R();
                    if (!TextUtils.isEmpty(strR)) {
                        jSONObject2.put("miniProgramId", strR);
                    }
                    String strS = this.f9680c.S();
                    if (!TextUtils.isEmpty(strS)) {
                        jSONObject2.put("miniProgramPath", strS);
                    }
                }
                if (iIntValue == 1001) {
                    String strT = this.f9680c.T();
                    if (!TextUtils.isEmpty(strT)) {
                        jSONObject2.put("orderId", strT);
                    }
                }
                jSONObject.put("materialInfo", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Map u() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null) {
            return null;
        }
        return aVar.X();
    }

    public l v() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null) {
            return null;
        }
        return aVar.Y();
    }

    public m w() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null) {
            return null;
        }
        return aVar.aa();
    }

    public boolean x() {
        try {
            com.beizi.ad.internal.d.a aVar = this.f9680c;
            if (aVar == null) {
                return false;
            }
            return aVar.ad();
        } catch (Exception unused) {
            return false;
        }
    }

    public n y() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null) {
            return null;
        }
        return aVar.ae();
    }

    public List<e> z() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null) {
            return null;
        }
        return aVar.af();
    }

    public void b() {
        if (this.f9685h) {
            return;
        }
        this.f9685h = true;
        if (TextUtils.isEmpty(this.H)) {
            if ("S2S".equalsIgnoreCase(this.I)) {
                b(3);
                return;
            } else {
                C();
                c.b().c().execute(new Runnable() { // from class: com.beizi.ad.v2.a.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        new com.beizi.ad.v2.e.b().a(b.this.F(), new com.beizi.ad.v2.e.a() { // from class: com.beizi.ad.v2.a.b.2.1
                            @Override // com.beizi.ad.v2.e.a
                            public void a(String str) {
                                try {
                                    com.beizi.ad.internal.d.a aVar = new com.beizi.ad.internal.d.a(str, null, b.this.f9679b.a());
                                    b bVar = b.this;
                                    if (bVar.f9697t) {
                                        bVar.a(aVar, str);
                                        return;
                                    }
                                    bVar.r();
                                    if (aVar.d()) {
                                        b.this.a(true, aVar.I(), null, aVar);
                                    } else {
                                        if (b.this.n()) {
                                            return;
                                        }
                                        b.this.b(3);
                                    }
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }

                            @Override // com.beizi.ad.v2.e.a
                            public void a(int i10) {
                                b bVar = b.this;
                                bVar.f9685h = false;
                                if (bVar.f9697t) {
                                    return;
                                }
                                bVar.r();
                                if (b.this.n()) {
                                    return;
                                }
                                b.this.b(i10);
                            }
                        }, b.this.f9690m);
                    }
                });
                return;
            }
        }
        com.beizi.ad.internal.d.a aVar = new com.beizi.ad.internal.d.a(this.H, null, this.f9679b.a());
        if (!aVar.d()) {
            b(3);
        } else if (!a(aVar.i())) {
            b(12);
        } else {
            this.f9689l = aVar.M();
            a(true, aVar.I(), null, aVar);
        }
    }

    public void c(String str) {
        this.f9683f = str;
    }

    public void d(String str) {
        this.H = str;
    }

    public void e(String str) {
        this.I = str;
    }

    public void f(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f9689l = com.beizi.ad.internal.e.n.a();
            H();
        } else {
            this.f9689l = str;
            H();
        }
    }

    public void c(Map<String, Object> map) {
        this.J = map;
    }

    public void a(int i10) {
        this.f9692o = i10;
    }

    public void a(AdSpacesBean.BuyerBean buyerBean) {
        if (buyerBean == null) {
            return;
        }
        this.f9703z = buyerBean;
        int cacheNum = buyerBean.getCacheNum();
        this.f9694q = cacheNum;
        if (cacheNum > 0) {
            int waitTime = buyerBean.getWaitTime();
            int lastTime = buyerBean.getLastTime();
            if (lastTime <= 0) {
                lastTime = 100;
            }
            if (waitTime >= 0) {
                this.f9693p = Math.min(waitTime, this.f9692o - lastTime);
            } else {
                this.f9693p = this.f9692o - lastTime;
            }
            if (this.f9693p <= 0) {
                this.f9693p = 100;
            }
        }
        this.B = buyerBean.getIsImageSpeed() == 1;
        this.C = buyerBean.getIsHideInteraction() == 1;
        this.D = buyerBean.getIsPlaceHolder() == 1;
        this.E = buyerBean.getIsAnimation() == 1;
    }

    public b(Context context, String str, f fVar) {
        this.f9679b = null;
        this.f9678a = context.getApplicationContext();
        this.f9702y = str;
        this.f9690m = fVar;
        com.beizi.ad.internal.b bVar = new com.beizi.ad.internal.b(context);
        this.f9679b = bVar;
        bVar.b(str);
        this.f9679b.a(fVar);
    }

    public AdSpacesBean.BuyerBean a() {
        return this.f9703z;
    }

    public void a(EventBean eventBean) {
        this.f9700w = eventBean;
    }

    public void b(String str) {
        this.f9682e = str;
    }

    public void a(String str) {
        this.f9702y = str;
        com.beizi.ad.internal.b bVar = this.f9679b;
        if (bVar != null) {
            bVar.b(str);
        }
    }

    public void b(Map map) {
        if (this.f9680c == null || map == null) {
            return;
        }
        E();
        this.f9680c.b(map);
    }

    public void a(boolean z10) {
        this.f9681d = z10;
    }

    public void b(boolean z10) {
        this.L = z10;
    }

    public void a(Map map) {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar == null || map == null) {
            return;
        }
        aVar.a(map);
    }

    private boolean a(com.beizi.ad.internal.d.a aVar, com.beizi.ad.internal.a.b bVar) {
        Object obj;
        try {
            Map<String, Object> map = this.J;
            if (map == null || !map.containsKey("orderList") || (obj = this.J.get("orderList")) == null || !(obj instanceof List)) {
                return true;
            }
            List list = (List) obj;
            if (list.isEmpty()) {
                return true;
            }
            String strT = aVar.T();
            if (TextUtils.isEmpty(strT) || list.contains(strT)) {
                return true;
            }
            com.beizi.ad.internal.a.a.a().a(bVar);
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z10, String str, com.beizi.ad.internal.a.b bVar, com.beizi.ad.internal.d.a aVar) {
        if (this.A) {
            if (z10) {
                a(aVar, str);
            } else if (this.f9696s) {
                com.beizi.ad.internal.a.a.a().a(bVar, 1, this.f9694q);
            }
            return;
        }
        this.A = true;
        this.f9680c = aVar;
        if (z10) {
            this.f9696s = true;
        } else {
            this.f9697t = true;
            if (bVar != null) {
                String strD = bVar.d();
                this.f9689l = strD;
                com.beizi.ad.internal.b bVar2 = this.f9679b;
                if (bVar2 != null) {
                    bVar2.a(strD);
                }
            }
            this.f9695r = bVar;
            com.beizi.ad.internal.d.a aVar2 = this.f9680c;
            if (aVar2 != null) {
                aVar2.c(true);
            }
        }
        G();
        a(aVar);
    }

    public void a(com.beizi.ad.internal.d.a aVar, String str) {
        if (aVar == null || !aVar.d() || TextUtils.isEmpty(str)) {
            return;
        }
        com.beizi.ad.internal.a.a.a().a(aVar, str, this.f9688k, this.f9702y, this.f9690m);
    }

    public boolean a(i.a aVar) {
        f fVar = this.f9690m;
        if (fVar == f.NEW_SPLASH || fVar == f.SPLASHUNIFIED || fVar == f.SPLASH) {
            return aVar == i.a.ADP_LOADING;
        }
        if (fVar == f.NATIVE) {
            return aVar == i.a.ADP_NATIVE;
        }
        if (fVar == f.INTERSTITIAL) {
            return aVar == i.a.ADP_TABLE;
        }
        return fVar == f.REWARDEDVIDEO && aVar == i.a.ADP_IVIDEO;
    }
}
