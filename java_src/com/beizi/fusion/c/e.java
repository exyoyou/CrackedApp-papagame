package com.beizi.fusion.c;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.beizi.fusion.AdListener;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.InterstitialAdListener;
import com.beizi.fusion.NativeAdListener;
import com.beizi.fusion.NativeUnifiedAdListener;
import com.beizi.fusion.RewardedVideoAdListener;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdListener;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.ChannelBidResult;
import com.beizi.fusion.model.EventItem;
import com.beizi.fusion.model.Manager;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.tool.ab;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.u;
import com.beizi.fusion.unified.BZUnifiedAdListener;
import com.beizi.fusion.unified.BZUnifiedAdResponse;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.kwad.sdk.api.model.AdnName;
import com.sigmob.sdk.base.mta.PointType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e implements com.beizi.fusion.c.a, Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static Context f10090a;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static boolean f10091r;
    private com.beizi.fusion.events.b F;
    private long G;
    private List<AdSpacesBean.BuyerBean> H;
    private ab J;
    private a K;
    private boolean L;
    private long U;
    private Map<String, Object> V;
    private String X;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f10092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected EventBean f10093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ViewGroup f10094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f10095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected long f10096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected View f10097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected com.beizi.fusion.a f10098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected com.beizi.fusion.work.a f10099i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected String f10103m;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private e f10109t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AdSpacesBean f10110u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f10113x;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected Map<String, com.beizi.fusion.work.a> f10100j = new Hashtable();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected ArrayList<c> f10101k = new ArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f10102l = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f10108s = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f10111v = 500;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f10112w = 100;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private volatile int f10114y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f10115z = 0;
    private int A = 0;
    private int B = 1;
    private int C = 2;
    private Timer D = null;
    private boolean E = false;
    private boolean I = false;
    private boolean M = false;
    private AdSpacesBean N = null;
    private com.beizi.fusion.events.a O = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected boolean f10104n = false;
    private int P = 0;
    private int Q = 1;
    private int R = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f10105o = false;
    private boolean S = false;
    private boolean T = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected com.beizi.fusion.work.a f10106p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    protected Handler f10107q = new Handler(Looper.getMainLooper()) { // from class: com.beizi.fusion.c.e.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                e eVar = e.this;
                eVar.f10115z = eVar.B;
                e eVar2 = e.this;
                if (eVar2.f10099i != null) {
                    eVar2.a(2);
                    return;
                }
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                e.this.H();
                com.beizi.fusion.events.b bVarF = b.a().f();
                e.this.F = new com.beizi.fusion.events.b(new EventBean(b.f10061b, "", "", "", b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                e eVar3 = e.this;
                eVar3.O = eVar3.F.a();
                e eVar4 = e.this;
                eVar4.f10093c = eVar4.F.b();
                e.this.I();
                e.this.O.a(e.this.f10093c);
                e.this.L();
                if (bVarF == null || bVarF.f10266a.a() != 2 || e.this.F.f10267b.a() != 0) {
                    e.this.b(10000);
                    return;
                }
                e.this.F.f10267b.a(1);
                if (e.this.F.f10267b.a() != 1) {
                    e.this.F.f10267b.a(-2);
                    e.this.a("kGetLocalConfigStatusInternalError");
                    return;
                }
                e.this.F.f10267b.a(2);
                e eVar5 = e.this;
                eVar5.f10110u = com.beizi.fusion.b.a.a(eVar5.f10092b, eVar5.f10103m, eVar5.f());
                if (e.this.f10110u != null) {
                    e.this.b(AVMDLDataLoader.KeyIsEnableEventInfo);
                    return;
                }
                if (e.this.F.f10267b.a() != 2) {
                    e.this.F.f10267b.a(-2);
                    e.this.a("kGetLocalConfigStatusInternalError");
                    return;
                }
                int iA = com.beizi.fusion.b.a.a();
                if (iA == 1) {
                    e.this.F.f10267b.a(4);
                    e.this.b(10001);
                    return;
                } else if (iA == 2) {
                    e.this.F.f10267b.a(5);
                    e.this.b(10100);
                    return;
                } else if (iA != 3) {
                    e.this.b(AVMDLDataLoader.KeyIsEnableEventInfo);
                    return;
                } else {
                    e.this.F.f10267b.a(6);
                    e.this.b(10110);
                    return;
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("========update inner outTime==========:");
            sb2.append(System.currentTimeMillis());
            e eVar6 = e.this;
            eVar6.f10115z = eVar6.C;
            if (e.this.F != null) {
                e.this.F.a(true);
            }
            if (e.this.F == null) {
                return;
            }
            e eVar7 = e.this;
            com.beizi.fusion.work.a aVar = eVar7.f10099i;
            if (aVar == null) {
                eVar7.b(AVMDLDataLoader.KeyIsEnableEventInfo);
                Map<String, com.beizi.fusion.work.a> mapS = e.this.s();
                if (mapS != null) {
                    for (com.beizi.fusion.work.a aVar2 : mapS.values()) {
                        AdSpacesBean.BuyerBean buyerBeanJ = aVar2.j();
                        if (buyerBeanJ != null) {
                            e.this.b(aVar2, 2);
                            ac.a("BeiZis", "AdRequest timeout channel = " + buyerBeanJ.getId() + ",mManagerObserver.mChannelResultStatus.getStatus(channel) = " + e.this.F.f10272g.a(buyerBeanJ.getBuyerSpaceUuId()));
                            if (e.this.F.f10272g.a(buyerBeanJ.getBuyerSpaceUuId()) < 4) {
                                e.this.F.f10272g.a(buyerBeanJ.getBuyerSpaceUuId(), -1);
                            }
                        }
                    }
                    return;
                }
                return;
            }
            aVar.q();
            e eVar8 = e.this;
            eVar8.a(eVar8.f10099i.f(), e.this.f10099i.o());
            if ("4".equals(e.this.f())) {
                e eVar9 = e.this;
                if (!eVar9.f10104n) {
                    eVar9.f10099i.e();
                    e.this.f10104n = true;
                }
            }
            Map<String, com.beizi.fusion.work.a> mapS2 = e.this.s();
            if (mapS2 != null) {
                for (com.beizi.fusion.work.a aVar3 : mapS2.values()) {
                    AdSpacesBean.BuyerBean buyerBeanJ2 = aVar3.j();
                    AdSpacesBean.BuyerBean buyerBeanJ3 = e.this.f10099i.j();
                    if (buyerBeanJ2 != null && buyerBeanJ3 != null && (TextUtils.isEmpty(buyerBeanJ2.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanJ3.getBuyerSpaceUuId()) || !buyerBeanJ2.getBuyerSpaceUuId().equals(buyerBeanJ3.getBuyerSpaceUuId()))) {
                        e.this.b(aVar3, 2);
                        ac.a("BeiZis", "AdRequest timeout channel = " + buyerBeanJ2.getId() + ",mManagerObserver.mChannelResultStatus.getStatus(channel) = " + e.this.F.f10272g.a(buyerBeanJ2.getBuyerSpaceUuId()));
                        if (aVar3.h() == com.beizi.fusion.e.a.ADDEFAULT) {
                            e.this.F.f10272g.a(buyerBeanJ2.getBuyerSpaceUuId(), -1);
                        }
                    }
                }
            }
        }
    };
    private TimerTask W = null;

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                String action = intent.getAction();
                int intExtra = intent.getIntExtra("updateResult", 0);
                e.this.L = true;
                if (TextUtils.equals(action, "com.ad.action.UPDATE_CONFIG_SUCCESS")) {
                    if (intExtra == 1) {
                        if (e.this.D != null) {
                            e.this.D.cancel();
                            e.this.D = null;
                        }
                        e eVar = e.this;
                        eVar.a(eVar.f10094d);
                    } else if (intExtra == 0 && e.this.M) {
                        if (e.this.D != null) {
                            e.this.D.cancel();
                            e.this.D = null;
                        }
                        e eVar2 = e.this;
                        eVar2.a(eVar2.f10094d);
                    }
                }
                e.this.H();
            } catch (Exception unused) {
            }
        }
    }

    public e(Context context, String str, com.beizi.fusion.a aVar, long j10) {
        if (context == null) {
            au.b("Illegal Argument: context is null");
        } else {
            this.f10092b = context;
            f10090a = context.getApplicationContext();
            if (!(this.f10092b instanceof Activity)) {
                au.b("Illegal Argument: context is not Activity context");
            }
        }
        this.f10103m = str;
        this.f10098h = aVar;
        this.f10096f = j10;
        this.f10109t = this;
        if (f10090a != null || aVar == null) {
            return;
        }
        b(10132);
    }

    private void F() {
        if (this.J != null) {
            return;
        }
        this.J = ab.a(f10090a);
        IntentFilter intentFilter = new IntentFilter("com.ad.action.UPDATE_CONFIG_SUCCESS");
        a aVar = new a();
        this.K = aVar;
        this.J.a(aVar, intentFilter);
    }

    private void G() {
        try {
            if (this.L) {
                return;
            }
            F();
            com.beizi.fusion.update.b.a(f10090a).b(5);
            if (this.D == null) {
                this.D = new Timer();
            }
            if (this.W == null) {
                this.W = new TimerTask() { // from class: com.beizi.fusion.c.e.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("========update outTime==========:");
                            sb2.append(System.currentTimeMillis());
                            Handler handler = e.this.f10107q;
                            if (handler != null) {
                                handler.sendEmptyMessage(3);
                            }
                        } catch (Exception unused) {
                        }
                    }
                };
            }
            if (this.D == null || this.W == null) {
                return;
            }
            long jMin = this.f10096f;
            if (jMin > 2000) {
                jMin = 2000;
            }
            long j10 = this.f10113x;
            if (j10 > 0) {
                jMin = Math.min(jMin, j10);
            }
            this.D.schedule(this.W, jMin);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        a aVar;
        try {
            ab abVar = this.J;
            if (abVar == null || (aVar = this.K) == null) {
                return;
            }
            abVar.a(aVar);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            eventBean.setReqId(this.f10095e);
            a();
            this.f10093c.setAppId(b.a().b());
            this.f10093c.setSpaceId(this.f10103m);
            this.f10093c.setReserveTime(String.valueOf(this.f10096f));
        }
    }

    private boolean J() {
        AdSpacesBean adSpacesBean = this.f10110u;
        if (adSpacesBean == null) {
            return false;
        }
        AdSpacesBean.BidBean bid = adSpacesBean.getBid();
        if (bid != null) {
            this.f10111v = bid.getReserveFRWTime();
            this.f10112w = bid.getReserveTime();
            this.f10113x = bid.getTimeOut();
            if (b.a().j() && this.f10113x <= 0) {
                this.f10113x = 800L;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f10096f);
        sb2.append(":mUsableTime=====");
        sb2.append(this.f10111v);
        sb2.append("=====mLastTime:");
        sb2.append(this.f10112w);
        long j10 = this.f10096f;
        if (j10 <= this.f10112w) {
            b(10120);
            this.F.f10267b.a(7);
            return true;
        }
        if (j10 > this.f10111v) {
            V();
        } else {
            this.f10115z = this.B;
        }
        W();
        return false;
    }

    private void K() {
        u.b(f10090a, this.f10103m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            bVar.f10267b.addObserver(bVar);
            com.beizi.fusion.events.b bVar2 = this.F;
            bVar2.f10268c.addObserver(bVar2);
            com.beizi.fusion.events.b bVar3 = this.F;
            bVar3.f10269d.addObserver(bVar3);
            com.beizi.fusion.events.b bVar4 = this.F;
            bVar4.f10270e.addObserver(bVar4);
            com.beizi.fusion.events.b bVar5 = this.F;
            bVar5.f10271f.addObserver(bVar5);
            com.beizi.fusion.events.b bVar6 = this.F;
            bVar6.f10272g.addObserver(bVar6);
            com.beizi.fusion.events.b bVar7 = this.F;
            bVar7.f10273h.addObserver(bVar7);
            com.beizi.fusion.events.b bVar8 = this.F;
            bVar8.f10274i.addObserver(bVar8);
            com.beizi.fusion.events.b bVar9 = this.F;
            bVar9.f10275j.addObserver(bVar9);
            com.beizi.fusion.events.b bVar10 = this.F;
            bVar10.f10276k.addObserver(bVar10);
        }
    }

    private void M() {
        String str;
        AdSpacesBean adSpacesBean = this.f10110u;
        if (adSpacesBean != null) {
            String adType = adSpacesBean.getAdType();
            adType.hashCode();
            switch (adType) {
                case "NATIVE":
                    str = "5";
                    break;
                case "SPLASH":
                    str = "2";
                    break;
                case "INTERSTITIAL":
                    str = "3";
                    break;
                case "REWARDEDVIDEO":
                    str = "1";
                    break;
                case "DRAWFLOW":
                    str = "7";
                    break;
                case "INTERACTIVECARD":
                    str = PointType.SIGMOB_REPORT_TRACKING;
                    break;
                case "FULLSCREENVIDEO":
                    str = "6";
                    break;
                case "REGIONALNATIVE":
                    str = "12";
                    break;
                case "BANNER":
                    str = "4";
                    break;
                default:
                    str = null;
                    break;
            }
            EventBean eventBean = this.f10093c;
            if (eventBean != null) {
                eventBean.setAdType(str);
            }
        }
    }

    private boolean N() {
        if (!this.T) {
            return false;
        }
        com.beizi.fusion.work.a aVar = this.f10106p;
        if (aVar != null) {
            return aVar != null && aVar.h() == com.beizi.fusion.e.a.ADDEFAULT;
        }
        return true;
    }

    private boolean O() {
        Iterator<com.beizi.fusion.work.a> it2 = s().values().iterator();
        while (it2.hasNext()) {
            if (it2.next().h() == com.beizi.fusion.e.a.ADDEFAULT) {
                return true;
            }
        }
        return false;
    }

    private synchronized void P() {
        this.f10101k.clear();
    }

    private void Q() {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar == null || bVar.f10275j.a() != 0) {
            return;
        }
        this.F.f10275j.a(1);
    }

    private void R() {
        if (this.F != null) {
            ac.b("BeiZis", "mManagerObserver.mManagerResultStatus.getStatus() = " + this.F.f10275j.a());
        }
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            if (bVar.f10275j.a() == 1 || this.F.f10275j.a() == 2 || this.F.f10275j.a() == 3) {
                this.F.f10275j.a(3);
            }
        }
    }

    private void S() {
        if (this.F != null) {
            ac.b("BeiZis", "mManagerObserver.mManagerResultStatus.getStatus() = " + this.F.f10275j.a());
        }
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            if (bVar.f10275j.a() == 3 || this.F.f10275j.a() == 1 || this.F.f10275j.a() == 2) {
                this.F.f10275j.a(4);
            }
        }
    }

    private void T() {
        try {
            if (this.f10099i == null) {
                return;
            }
            com.beizi.fusion.work.a aVarU = U();
            ChannelBidResult channelBidResult = new ChannelBidResult();
            if (aVarU != null) {
                channelBidResult.setEcpm(e(aVarU));
                channelBidResult.setChannelName(aVarU.f());
                channelBidResult.setBidType(aVarU.g());
            } else {
                channelBidResult.setEcpm(e(this.f10099i));
                channelBidResult.setChannelName(this.f10099i.f());
                channelBidResult.setBidType(this.f10099i.g());
            }
            this.f10099i.a(channelBidResult);
        } catch (Exception unused) {
        }
    }

    private com.beizi.fusion.work.a U() {
        Map<String, com.beizi.fusion.work.a> mapS;
        AdSpacesBean.BuyerBean buyerBeanJ;
        try {
            AdSpacesBean.BuyerBean buyerBeanJ2 = this.f10099i.j();
            if (buyerBeanJ2 == null || (mapS = s()) == null || mapS.size() <= 0) {
                return null;
            }
            com.beizi.fusion.work.a aVar = null;
            for (com.beizi.fusion.work.a aVar2 : mapS.values()) {
                if (aVar2 != null && (buyerBeanJ = aVar2.j()) != null && (TextUtils.isEmpty(buyerBeanJ.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanJ2.getBuyerSpaceUuId()) || !buyerBeanJ.getBuyerSpaceUuId().equals(buyerBeanJ2.getBuyerSpaceUuId()))) {
                    if (aVar2.h() == com.beizi.fusion.e.a.ADLOAD) {
                        ac.a("BeiZis", "handleSendWinNotice ---getSecondAdWorker---" + aVar2.h() + "---" + aVar2.f() + ";getPrice:" + e(aVar2));
                        if (aVar == null || e(aVar2) > e(aVar)) {
                            aVar = aVar2;
                        }
                    }
                }
            }
            return aVar;
        } catch (Exception unused) {
            return null;
        }
    }

    private void V() {
        if (this.f10107q != null) {
            long jMin = this.f10096f - this.f10111v;
            long j10 = this.f10113x;
            if (j10 > 0) {
                jMin = Math.min(jMin, j10 - 50);
            }
            if (jMin <= 0) {
                jMin = 100;
            }
            this.f10107q.sendEmptyMessageDelayed(1, jMin);
        }
    }

    private void W() {
        if (this.f10107q != null) {
            long jMin = this.f10096f - this.f10112w;
            long j10 = this.f10113x;
            if (j10 > 0) {
                jMin = Math.min(jMin, j10);
            }
            if (jMin <= 0) {
                jMin = 1000;
            }
            this.f10107q.sendEmptyMessageDelayed(2, jMin);
        }
    }

    private boolean j(String str) {
        return false;
    }

    public String A() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("requestUuid", this.f10095e);
            a(jSONObject);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public String B() {
        return this.X;
    }

    public Map<String, Object> C() {
        return this.V;
    }

    public String D() {
        return this.f10095e;
    }

    public boolean E() {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null) {
            return false;
        }
        return aVar.ay();
    }

    public abstract com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar);

    protected abstract void a();

    public void k() {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar == null || !(aVar instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) aVar).onRewarded();
    }

    public void l() {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar == null || !(aVar instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) aVar).onRewardedVideoComplete();
    }

    public void m() {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar == null || !(aVar instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) aVar).onRewardedVideoCacheSuccess();
    }

    public void n() {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar == null || !(aVar instanceof RewardedVideoAdListener)) {
            return;
        }
        ((RewardedVideoAdListener) aVar).onRewardedVideoPlayError();
    }

    public void o() {
        this.f10105o = true;
        b();
        c();
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar != null) {
            aVar.l();
        }
        if (this.P != this.Q) {
            this.f10098h = null;
        }
        Map<String, com.beizi.fusion.work.a> map = this.f10100j;
        if (map != null) {
            map.clear();
        }
        ArrayList<c> arrayList = this.f10101k;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (this.f10109t != null) {
            this.f10109t = null;
        }
        H();
        e();
    }

    public void p() {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar != null) {
            aVar.m();
        }
    }

    protected void q() {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            if (bVar.f10275j.a() == 1 || this.F.f10275j.a() == 3 || this.F.f10275j.a() == 4) {
                this.F.f10275j.a(2);
            }
        }
    }

    protected void r() {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            if (bVar.f10275j.a() == 0 || this.F.f10275j.a() == 1) {
                this.F.f10275j.a(5);
            }
        }
    }

    public Map<String, com.beizi.fusion.work.a> s() {
        return this.f10100j;
    }

    public int t() {
        return this.f10115z;
    }

    public int u() {
        return this.f10114y;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
    }

    public boolean v() {
        return f10091r;
    }

    public int w() {
        AdSpacesBean adSpacesBean = this.f10110u;
        if (adSpacesBean == null || adSpacesBean.getEventStrategy() == null) {
            return Integer.MAX_VALUE;
        }
        AdSpacesBean.EventStrategyBean eventStrategy = this.f10110u.getEventStrategy();
        if (eventStrategy.getValidTimeShow() >= 0) {
            return eventStrategy.getValidTimeShow();
        }
        return Integer.MAX_VALUE;
    }

    public String x() {
        AdSpacesBean.BuyerBean buyerBeanJ;
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null || (buyerBeanJ = aVar.j()) == null || TextUtils.isEmpty(buyerBeanJ.getBuyerSpaceUuId())) {
            return null;
        }
        return buyerBeanJ.getBuyerSpaceUuId();
    }

    public String y() {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null) {
            return null;
        }
        return aVar.aw();
    }

    public long z() {
        return this.U;
    }

    private void c() {
        Handler handler = this.f10107q;
        if (handler != null) {
            handler.removeMessages(2);
        }
        Timer timer = this.D;
        if (timer != null) {
            timer.cancel();
            this.D = null;
        }
    }

    private boolean h(String str) {
        return str.equals("HPFRW");
    }

    private String i(String str) {
        ac.a("BeiZis", "enter convertSelfChannel buyerId = " + str);
        return at.b().equals(str) ? "BEIZI" : str;
    }

    public com.beizi.fusion.events.b d() {
        return this.F;
    }

    protected void e() {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            bVar.f10267b.deleteObservers();
            this.F.f10268c.deleteObservers();
            this.F.f10269d.deleteObservers();
            this.F.f10270e.deleteObservers();
            this.F.f10271f.deleteObservers();
            this.F.f10272g.deleteObservers();
            this.F.f10273h.deleteObservers();
            this.F.f10274i.deleteObservers();
            this.F.f10275j.deleteObservers();
            this.F.f10276k.deleteObservers();
        }
    }

    public String f() {
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            return eventBean.getAdType();
        }
        return null;
    }

    protected void g() {
        this.F.f10269d.a(3);
        b(10140);
    }

    private void b() {
        Handler handler = this.f10107q;
        if (handler != null) {
            handler.removeMessages(1);
        }
        Timer timer = this.D;
        if (timer != null) {
            timer.cancel();
            this.D = null;
        }
    }

    private void d(Map<String, com.beizi.fusion.work.a> map) {
        if (map != null && map.size() != 0) {
            for (com.beizi.fusion.work.a aVar : map.values()) {
                aVar.d();
                aVar.a(true);
            }
            return;
        }
        g();
    }

    public boolean h() {
        return (u() == 2 || u() == 3) ? false : true;
    }

    public synchronized void j() {
        Iterator<c> it2 = this.f10101k.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
        P();
    }

    private double f(com.beizi.fusion.work.a aVar) {
        AdSpacesBean.BuyerBean buyerBeanJ;
        if (aVar == null || (buyerBeanJ = aVar.j()) == null) {
            return 0.0d;
        }
        return buyerBeanJ.getBidPrice();
    }

    private void k(String str) {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            bVar.f10273h.a(str, 3);
        }
    }

    @NonNull
    private g l(String str) {
        k(str);
        return g.SUCCESS;
    }

    @NonNull
    private g m(String str) {
        f(str);
        return g.FAIL;
    }

    public void g(String str) {
        this.X = str;
    }

    public String i() {
        return this.f10103m;
    }

    protected void f(String str) {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            bVar.f10273h.a(str, 4);
        }
    }

    public void c(String str) {
        if (this.P == this.Q) {
            this.P = this.R;
        }
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null) {
            if (aVar instanceof AdListener) {
                ((AdListener) aVar).onAdClosed();
            } else if (aVar instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) aVar).onRewardedVideoAdClosed();
            } else if (aVar instanceof NativeAdListener) {
                ((NativeAdListener) aVar).onAdClosed();
            } else if (aVar instanceof InterstitialAdListener) {
                ((InterstitialAdListener) aVar).onAdClosed();
            } else if (aVar instanceof com.beizi.fusion.b) {
                ((com.beizi.fusion.b) aVar).c();
            }
        }
        S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ViewGroup viewGroup) {
        AdSpacesBean.ComponentBean component;
        List<AdSpacesBean.BuyerBean> buyer;
        AdSpacesBean.BidComponent bidComponent;
        List<AdSpacesBean> adSpaces;
        AdSpacesBean adSpacesBean;
        if (this.I || this.f10092b == null || f10090a == null) {
            return;
        }
        this.U = System.currentTimeMillis();
        b.a().m();
        b.a().n();
        this.f10094d = viewGroup;
        this.G = System.currentTimeMillis();
        this.f10095e = at.a();
        com.beizi.fusion.events.b bVarF = b.a().f();
        com.beizi.fusion.events.b bVar = new com.beizi.fusion.events.b(new EventBean(b.f10061b, "", "", "", b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        this.F = bVar;
        this.O = bVar.a();
        this.f10093c = this.F.b();
        I();
        this.O.a(this.f10093c);
        L();
        if (!BeiZis.isIsSyncInit() && ((bVarF == null || bVarF.f10266a.a() != 2) && !this.S)) {
            ResponseInfo.getInstance(f10090a).init();
            this.S = true;
        }
        if (bVarF != null) {
            ac.b("BeiZis", "mInitObserver.mInitStatus.getStatus() = " + bVarF.f10266a.a() + ",mManagerObserver.mGetLocalConfigStatus.getStatus() = " + this.F.f10267b.a());
        }
        if ((bVarF != null && bVarF.f10266a.a() == 2 && this.F.f10267b.a() == 0) || this.S) {
            this.F.f10267b.a(1);
            if (this.F.f10267b.a() == 1) {
                this.F.f10267b.a(2);
                AdSpacesBean adSpacesBeanA = com.beizi.fusion.b.a.a(this.f10092b, this.f10103m, f());
                this.f10110u = adSpacesBeanA;
                if (adSpacesBeanA != null) {
                    EventBean eventBean = this.f10093c;
                    if (eventBean != null) {
                        eventBean.setPlatformFilterSsid(adSpacesBeanA.getFilterSsid());
                        this.f10093c.setComponentSsid(this.f10110u.getComponentSsid());
                        this.f10093c.setBzComponentSsid(this.f10110u.getBzComponentSsid());
                        M();
                    }
                    ResponseInfo responseInfo = ResponseInfo.getInstance(f10090a);
                    Manager manager = responseInfo.getManager();
                    if (manager == null || (adSpaces = manager.getAdSpaces()) == null || adSpaces.size() <= 0 || (adSpacesBean = adSpaces.get(0)) == null) {
                        component = null;
                        buyer = null;
                        bidComponent = null;
                    } else {
                        component = adSpacesBean.getComponent();
                        bidComponent = adSpacesBean.getBidComponent();
                        buyer = adSpacesBean.getBuyer();
                    }
                    if ((component != null || bidComponent != null) && buyer != null && buyer.size() > 0) {
                        long maxValidTime = responseInfo.getMaxValidTime();
                        if (maxValidTime == 0) {
                            maxValidTime = 2592000000L;
                        }
                        if (System.currentTimeMillis() - ((Long) as.b(f10090a, "lastUpdateTime", Long.valueOf(new Date(0L).getTime()))).longValue() <= maxValidTime) {
                            this.M = false;
                            this.I = true;
                            if (this.F.f10267b.a() == 2) {
                                this.F.f10267b.a(3);
                                if (J()) {
                                    return;
                                }
                                K();
                                if (this.F.c()) {
                                    this.F.f10267b.a(-1);
                                    return;
                                } else {
                                    a(this.f10110u);
                                    return;
                                }
                            }
                            return;
                        }
                        this.I = false;
                        this.M = true;
                        G();
                        return;
                    }
                    this.I = false;
                    G();
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("spaceBean is null and return fail mUpdateConfigSuccess:");
                sb2.append(this.L);
                if (this.L) {
                    if (this.F.f10267b.a() == 2) {
                        int iA = com.beizi.fusion.b.a.a();
                        if (iA == 1) {
                            this.F.f10267b.a(4);
                            b(10001);
                            return;
                        } else if (iA == 2) {
                            this.F.f10267b.a(5);
                            b(10100);
                            return;
                        } else {
                            if (iA == 3) {
                                this.F.f10267b.a(6);
                                b(10110);
                                return;
                            }
                            return;
                        }
                    }
                    this.F.f10267b.a(-2);
                    a("kGetLocalConfigStatusInternalError");
                    return;
                }
                this.I = false;
                G();
                return;
            }
            this.F.f10267b.a(-2);
            a("kGetLocalConfigStatusInternalError");
            return;
        }
        if (this.L) {
            this.I = false;
            G();
        } else {
            b(10000);
        }
    }

    private boolean d(com.beizi.fusion.work.a aVar) {
        if (aVar == null) {
            return false;
        }
        for (com.beizi.fusion.work.a aVar2 : s().values()) {
            AdSpacesBean.BuyerBean buyerBeanJ = aVar2.j();
            AdSpacesBean.BuyerBean buyerBeanJ2 = aVar.j();
            if (buyerBeanJ != null && buyerBeanJ2 != null && (TextUtils.isEmpty(buyerBeanJ.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanJ2.getBuyerSpaceUuId()) || !buyerBeanJ.getBuyerSpaceUuId().equals(buyerBeanJ2.getBuyerSpaceUuId()))) {
                if (!b(aVar2) && !c(aVar2)) {
                    ac.c("BeiZis", "worker.getAdStatus():" + aVar2.h() + ":" + aVar2.f());
                    if (aVar2.h() != com.beizi.fusion.e.a.ADFAIL && e(aVar2) > e(aVar)) {
                        return false;
                    }
                } else {
                    double dF = f(aVar2);
                    if (aVar2.h() == com.beizi.fusion.e.a.ADDEFAULT || dF > e(aVar)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public void a(final ViewGroup viewGroup) {
        if (b.a().l()) {
            com.beizi.fusion.tool.e.b().c().execute(new Runnable() { // from class: com.beizi.fusion.c.e.3
                @Override // java.lang.Runnable
                public void run() {
                    e.this.b(viewGroup);
                }
            });
        } else {
            b(viewGroup);
        }
    }

    private double e(com.beizi.fusion.work.a aVar) {
        if (aVar == null || aVar.j() == null) {
            return 0.0d;
        }
        AdSpacesBean.BuyerBean buyerBeanJ = aVar.j();
        if (!c(aVar) && !b(aVar)) {
            return buyerBeanJ.getAvgPrice();
        }
        if (buyerBeanJ.getBidPrice() > 0.0d) {
            return buyerBeanJ.getBidPrice();
        }
        return buyerBeanJ.getAvgPrice();
    }

    @Override // com.beizi.fusion.c.a
    public void a(String str) {
        ac.c("BeiZis", "enter handleAdRequestStatusError error is " + str);
        b(10131);
    }

    public void a(String str, final String str2, final EventItem eventItem) {
        if (Arrays.asList(com.beizi.fusion.tool.m.f10633a).contains(str)) {
            u.a(str2, eventItem);
            com.beizi.fusion.tool.e.b().c().execute(new Runnable() { // from class: com.beizi.fusion.c.e.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.beizi.fusion.a.b.a(e.this.f10092b).a(str2, eventItem);
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    public void a(AdSpacesBean adSpacesBean) {
        if (this.F.f10267b.a() == 3 && this.F.f10268c.a() == 0) {
            this.F.f10268c.a(1);
            this.f10100j.clear();
            AdSpacesBean.FilterBean filter = adSpacesBean.getFilter();
            this.H = adSpacesBean.getBuyer();
            com.beizi.fusion.e.b.a(this.f10092b, this.f10096f, filter, this.F, i(), null, null, this);
            if (this.F.f10268c.a() == 2) {
                if (this.F.c()) {
                    this.F.f10268c.a(-1);
                    return;
                }
                a("200.000", this.f10103m, new EventItem("200.000", String.valueOf(System.currentTimeMillis()), null, null));
                this.N = adSpacesBean;
                ac.c("BeiZis", "normal request");
                a(this.N.getComponent(), false);
                return;
            }
            a(this.F.f10268c.a(), 6, "platform error = ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdDispenses AdFilter fail:");
            sb2.append(com.beizi.fusion.events.a.a(this.F.f10268c));
            b(10130);
            return;
        }
        this.F.f10268c.a(-2);
        a("kPlatformFilterStatusInternalError");
    }

    public void d(String str) {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null) {
            if (aVar instanceof AdListener) {
                ((AdListener) aVar).onAdClicked();
            } else if (aVar instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) aVar).onRewardedVideoClick();
            } else if (aVar instanceof NativeAdListener) {
                ((NativeAdListener) aVar).onAdClick();
            } else if (aVar instanceof InterstitialAdListener) {
                ((InterstitialAdListener) aVar).onAdClick();
            } else if (aVar instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) aVar).onAdClick();
            } else if (aVar instanceof com.beizi.fusion.b) {
                ((com.beizi.fusion.b) aVar).b();
            } else if (aVar instanceof BZUnifiedAdListener) {
                ((BZUnifiedAdListener) aVar).onAdClick();
            }
        }
        R();
    }

    protected void e(String str) {
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            bVar.f10273h.a(str, 5);
        }
    }

    protected boolean c(com.beizi.fusion.work.a aVar) {
        return "C2S".equalsIgnoreCase(aVar.g());
    }

    public void c(Map<String, Object> map) {
        this.V = map;
    }

    protected void a(AdSpacesBean.ComponentBean componentBean, boolean z10) {
        ac.a("BeiZis", "enter auctionAndRequestAd");
        if (this.f10110u == null) {
            return;
        }
        List<AdSpacesBean.BuyerBean> list = this.H;
        if (list != null && list.size() != 0) {
            if (u() >= 1) {
                ac.a("BeiZis", "auctionAndRequestAd ad aleady callback");
                return;
            }
            if (!z10) {
                this.F.f10269d.a(1);
            }
            List<AdSpacesBean.ForwardBean> listA = a(componentBean, this.H, z10);
            if (!z10) {
                this.F.f10269d.a(2);
            }
            ArrayList arrayList = new ArrayList();
            if (listA != null && listA.size() > 0) {
                for (AdSpacesBean.ForwardBean forwardBean : listA) {
                    if (a(forwardBean.getBuyerId(), this.H, forwardBean.getBuyerSpaceUuId()) != null) {
                        arrayList.add(forwardBean);
                    }
                }
            }
            d(a(arrayList));
            return;
        }
        ac.a("BeiZis", "auctionAndRequestAd mBuyerBeanList == null ");
    }

    private List<AdSpacesBean.ForwardBean> a(AdSpacesBean.ComponentBean componentBean, List<AdSpacesBean.BuyerBean> list, boolean z10) {
        List<AdSpacesBean.ForwardBean> listA;
        AdSpacesBean adSpacesBean;
        ArrayList arrayList = new ArrayList();
        if (!z10 && (adSpacesBean = this.f10110u) != null && adSpacesBean.getBid() != null && this.f10110u.getBidComponent() != null && this.f10110u.getBidComponent().getBidList() != null && this.f10110u.getBidComponent().getBidList().size() > 0) {
            arrayList.addAll(this.f10110u.getBidComponent().getBidList());
        }
        if (this.f10110u != null && componentBean != null && (listA = com.beizi.fusion.e.b.a(componentBean, list, i())) != null && listA.size() > 0) {
            arrayList.addAll(listA);
        }
        return arrayList;
    }

    protected Map<String, com.beizi.fusion.work.a> a(List<AdSpacesBean.ForwardBean> list) throws CloneNotSupportedException {
        AdSpacesBean.BuyerBean buyerBeanM16clone;
        if (list == null || list.size() == 0) {
            return null;
        }
        ac.a("BeiZis", "generateWorkers forwardBeans.size() = " + list.size());
        Hashtable hashtable = new Hashtable();
        for (int i10 = 0; i10 < list.size(); i10++) {
            AdSpacesBean.ForwardBean forwardBean = list.get(i10);
            if (forwardBean != null) {
                String buyerId = forwardBean.getBuyerId();
                String buyerSpaceUuId = forwardBean.getBuyerSpaceUuId();
                AdSpacesBean.BuyerBean buyerBeanA = a(buyerId, this.H, forwardBean.getBuyerSpaceUuId());
                if (buyerBeanA != null) {
                    try {
                        buyerBeanM16clone = buyerBeanA.m16clone();
                    } catch (CloneNotSupportedException unused) {
                        buyerBeanM16clone = null;
                    }
                    if (buyerBeanM16clone != null) {
                        this.O.a(buyerBeanM16clone, forwardBean);
                        this.F.f10270e.a(buyerSpaceUuId, 1);
                        if (a(forwardBean, buyerBeanM16clone, buyerSpaceUuId)) {
                            com.beizi.fusion.work.a aVarA = a(forwardBean, buyerId, buyerBeanM16clone, buyerBeanM16clone.getRenderView(), null);
                            if (aVarA != null) {
                                aVarA.a(forwardBean.getSleepTime());
                                aVarA.a(forwardBean);
                                aVarA.a(buyerBeanM16clone);
                                aVarA.a(buyerBeanM16clone.getBidType());
                                a(buyerId, buyerSpaceUuId, aVarA);
                                hashtable.put(i(buyerId) + buyerSpaceUuId, aVarA);
                                ac.a("BeiZis", "generateWorkers put new " + buyerId + " worker into workerList");
                            }
                        }
                    }
                }
            }
        }
        return hashtable;
    }

    private boolean a(AdSpacesBean.ForwardBean forwardBean, AdSpacesBean.BuyerBean buyerBean, String str) {
        this.F.f10270e.a(str, 2);
        if (buyerBean != null) {
            try {
                long jLongValue = ((Long) as.b(this.f10092b, "complain_config_" + buyerBean.getSpaceId(), 0L)).longValue();
                AdSpacesBean.ComplainBean complain = buyerBean.getComplain();
                if (complain != null) {
                    if (System.currentTimeMillis() - jLongValue < complain.getDuration()) {
                        this.F.f10270e.a(str, 10);
                        return false;
                    }
                }
            } catch (Exception unused) {
            }
        }
        com.beizi.fusion.e.b.a(this.f10092b, this.f10096f, buyerBean.getFilter(), this.F, i(), buyerBean.getBuyerSpaceUuId(), buyerBean.getSpaceId(), this);
        if (this.F.f10270e.a(str) == 3) {
            if (this.F.c()) {
                this.F.f10270e.a(str, -1);
                return false;
            }
            if (a(forwardBean, buyerBean) != 2) {
                return false;
            }
            this.F.f10270e.a(str, 3);
            return true;
        }
        a(this.F.f10270e.a(str), 7, "channel error = ");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdDispense buyerBean AdFilter fail:");
        sb2.append(com.beizi.fusion.events.a.a(str, this.F.f10270e));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.beizi.fusion.work.a aVar, int i10) {
        try {
            if (b(aVar) || c(aVar)) {
                ChannelBidResult channelBidResult = new ChannelBidResult();
                com.beizi.fusion.work.a aVar2 = this.f10099i;
                if (aVar2 != null) {
                    channelBidResult.setBidType(aVar2.g());
                    channelBidResult.setChannelName(this.f10099i.f());
                    channelBidResult.setReason(i10);
                    channelBidResult.setEcpm(e(this.f10099i));
                } else {
                    channelBidResult.setEcpm(0.0d);
                    channelBidResult.setChannelName(AdnName.OTHER);
                    channelBidResult.setBidType(AdnName.OTHER);
                    channelBidResult.setReason(i10);
                }
                aVar.b(channelBidResult);
            }
        } catch (Exception unused) {
        }
    }

    public void b(String str) {
        if (this.f10114y < 2 || j(str)) {
            if (this.P == 0) {
                this.P = this.Q;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdShow:");
            sb2.append(str);
            this.f10114y = 2;
            com.beizi.fusion.a aVar = this.f10098h;
            if (aVar != null) {
                if (aVar instanceof AdListener) {
                    ((AdListener) aVar).onAdShown();
                } else if (aVar instanceof RewardedVideoAdListener) {
                    ((RewardedVideoAdListener) aVar).onRewardedVideoAdShown();
                } else if (aVar instanceof NativeAdListener) {
                    ((NativeAdListener) aVar).onAdShown();
                } else if (aVar instanceof InterstitialAdListener) {
                    ((InterstitialAdListener) aVar).onAdShown();
                } else if (aVar instanceof NativeUnifiedAdListener) {
                    ((NativeUnifiedAdListener) aVar).onAdShown();
                } else if (aVar instanceof com.beizi.fusion.b) {
                    ((com.beizi.fusion.b) aVar).a();
                } else if (aVar instanceof BZUnifiedAdListener) {
                    ((BZUnifiedAdListener) aVar).onAdShown();
                }
            }
            q();
            j();
        }
    }

    public g a(com.beizi.fusion.work.a aVar) {
        AdSpacesBean.BuyerBean buyerBeanJ = aVar.j();
        if (buyerBeanJ == null) {
            return null;
        }
        String id2 = buyerBeanJ.getId();
        String buyerSpaceUuId = buyerBeanJ.getBuyerSpaceUuId();
        String zone = buyerBeanJ.getZone();
        ac.a("BeiZis", "enter comparePrices compareWorker:" + aVar.f() + ",mCurrentHighestWorker:" + this.f10099i);
        if (j(aVar.f())) {
            return a(buyerSpaceUuId, aVar, id2);
        }
        com.beizi.fusion.events.b bVar = this.F;
        if (bVar != null) {
            bVar.f10273h.a(buyerSpaceUuId, 1);
        }
        if (this.f10114y >= 1) {
            b(aVar, 1);
            return m(buyerSpaceUuId);
        }
        if (N()) {
            return a(buyerSpaceUuId, aVar);
        }
        boolean zH = h(zone);
        boolean zD = d(aVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("channel == mTimeStage = ");
        sb2.append(this.f10115z == this.B);
        sb2.append(";isNeedComparePrices = ");
        sb2.append(zH);
        sb2.append(",isHighestPrice:");
        sb2.append(zD);
        sb2.append(";mCurrentHighestWorker:");
        sb2.append(this.f10099i);
        ac.a("BeiZis", sb2.toString());
        if (this.f10115z == this.A && zH && !zD) {
            double dE = e(aVar);
            double dE2 = e(this.f10099i);
            if (this.f10099i != null && dE <= dE2) {
                b(aVar, 1);
                if (d(this.f10099i)) {
                    a(1);
                }
                return m(buyerSpaceUuId);
            }
            return a(buyerSpaceUuId, aVar);
        }
        return a(buyerSpaceUuId, aVar, id2);
    }

    public void b(int i10) {
        if (i10 != 10140) {
            if (this.f10114y >= 1) {
                return;
            }
            if (i10 != 9999 && (N() || O())) {
                return;
            }
        }
        if (b.a().j() && i10 == 9999) {
            i10 = 3;
        }
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null) {
            if (aVar instanceof AdListener) {
                ((AdListener) aVar).onAdFailedToLoad(i10);
            } else if (aVar instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) aVar).onRewardedVideoAdFailedToLoad(i10);
            } else if (aVar instanceof NativeAdListener) {
                ((NativeAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof InterstitialAdListener) {
                ((InterstitialAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof com.beizi.fusion.b) {
                ((com.beizi.fusion.b) aVar).a(i10);
            } else if (aVar instanceof BeiZiUnifiedAdListener) {
                ((BeiZiUnifiedAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof BZUnifiedAdListener) {
                ((BZUnifiedAdListener) aVar).onAdFailed(i10);
            }
        }
        b();
        c();
        this.f10114y = 3;
        r();
        f10091r = true;
    }

    private void a(com.beizi.fusion.work.a aVar, int i10) {
        if (aVar == null) {
            return;
        }
        for (com.beizi.fusion.work.a aVar2 : s().values()) {
            AdSpacesBean.BuyerBean buyerBeanJ = aVar2.j();
            AdSpacesBean.BuyerBean buyerBeanJ2 = aVar.j();
            if (buyerBeanJ != null && buyerBeanJ2 != null && (TextUtils.isEmpty(buyerBeanJ.getBuyerSpaceUuId()) || TextUtils.isEmpty(buyerBeanJ2.getBuyerSpaceUuId()) || !buyerBeanJ.getBuyerSpaceUuId().equals(buyerBeanJ2.getBuyerSpaceUuId()))) {
                b(aVar2, i10);
                if (aVar2.at() == g.TO_DETERMINE) {
                    f(buyerBeanJ.getBuyerSpaceUuId());
                } else if (aVar2.h() == com.beizi.fusion.e.a.ADDEFAULT) {
                    e(buyerBeanJ.getBuyerSpaceUuId());
                }
            }
        }
    }

    private void a(String str, String str2, com.beizi.fusion.work.a aVar) {
        this.f10100j.put(i(str) + "_" + str2, aVar);
    }

    @Nullable
    protected AdSpacesBean.BuyerBean a(String str, List<AdSpacesBean.BuyerBean> list, String str2) {
        return com.beizi.fusion.e.b.a(str, list, str2);
    }

    protected void a(int i10, int i11, String str) {
        if (i10 != i11 || u.c(this.f10103m) == null) {
            return;
        }
        u.d(str + u.c(this.f10103m).toString());
    }

    private int a(AdSpacesBean.ForwardBean forwardBean, AdSpacesBean.BuyerBean buyerBean) {
        if (forwardBean == null || buyerBean == null) {
            return 0;
        }
        String buyerSpaceUuId = buyerBean.getBuyerSpaceUuId();
        if (this.F.f10270e.a(buyerSpaceUuId) == 3) {
            this.F.f10271f.a(buyerSpaceUuId, 1);
            if (this.F.f10271f.a(buyerSpaceUuId) == 1) {
                if (this.f10096f <= (forwardBean.getSleepTime() + System.currentTimeMillis()) - this.G) {
                    this.F.f10271f.a(buyerSpaceUuId, 4);
                    return 4;
                }
                if (this.F.f10275j.a() == 2) {
                    this.F.f10271f.a(buyerSpaceUuId, 6);
                    return 6;
                }
                ac.a("BeiZis", "mUsableTime = " + this.f10096f + " forwardBean.getSleepTime() + System.currentTimeMillis() - mEnterRequestMethodTime = " + ((forwardBean.getSleepTime() + System.currentTimeMillis()) - this.G) + ",forwardBean.getSleepTime() = " + forwardBean.getSleepTime());
                if (this.F.c()) {
                    this.F.f10271f.a(buyerSpaceUuId, -1);
                    return -1;
                }
                this.F.f10271f.a(buyerSpaceUuId, 2);
                return 2;
            }
        }
        this.F.f10271f.a(buyerSpaceUuId, -2);
        return -2;
    }

    public void b(String str, View view) {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null && view != null && (aVar instanceof NativeAdListener)) {
            ((NativeAdListener) aVar).onAdClosed(view);
        }
        S();
    }

    protected boolean b(com.beizi.fusion.work.a aVar) {
        return "S2S".equalsIgnoreCase(aVar.g());
    }

    public void b(Map map) {
        if (map == null) {
            return;
        }
        try {
            com.beizi.fusion.work.a aVar = this.f10099i;
            if (aVar != null) {
                aVar.b(map);
                return;
            }
            Map<String, com.beizi.fusion.work.a> mapS = s();
            if (mapS != null && mapS.size() != 0) {
                for (com.beizi.fusion.work.a aVar2 : mapS.values()) {
                    if (aVar2 != null && aVar2.f().equalsIgnoreCase("BEIZI")) {
                        aVar2.b(map);
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public void a(AdSpacesBean.ComponentBean componentBean, String str, boolean z10, int i10) {
        if (componentBean != null && (TextUtils.isEmpty(str) || (!"C2S".equalsIgnoreCase(str) && !"S2S".equalsIgnoreCase(str)))) {
            a(componentBean, true);
            return;
        }
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar != null && d(aVar)) {
            a(1);
        } else {
            b(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10) {
        a(this.f10099i, i10);
        this.f10099i.q();
        a(this.f10099i.f(), this.f10099i.o());
        if (!"4".equals(f()) || this.f10104n) {
            return;
        }
        this.f10099i.e();
        this.f10104n = true;
    }

    public void a(String str, View view) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdLoaded:");
        sb2.append(str);
        if (this.f10102l) {
            return;
        }
        T();
        a(this.f10099i, 1);
        this.f10102l = true;
        this.f10114y = 1;
        b();
        c();
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null) {
            if (aVar instanceof AdListener) {
                ((AdListener) aVar).onAdLoaded();
            } else if (aVar instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) aVar).onRewardedVideoAdLoaded();
            } else if (aVar instanceof InterstitialAdListener) {
                ((InterstitialAdListener) aVar).onAdLoaded();
            } else if (aVar instanceof NativeAdListener) {
                if (view != null) {
                    com.beizi.fusion.work.a aVar2 = this.f10099i;
                    if (aVar2 != null && aVar2.aq() == 1) {
                        ((NativeAdListener) this.f10098h).onAdLoaded(null);
                    } else {
                        com.beizi.fusion.work.a aVar3 = this.f10099i;
                        if (aVar3 != null && aVar3.o() != null) {
                            ((NativeAdListener) this.f10098h).onAdLoaded(this.f10099i.o());
                        } else {
                            g();
                        }
                    }
                } else {
                    g();
                }
            } else if (aVar instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) aVar).onAdLoaded(this.f10099i.as());
            }
        }
        Q();
        f10091r = true;
    }

    public void a(String str, BeiZiUnifiedAdResponse beiZiUnifiedAdResponse) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdLoaded:");
        sb2.append(str);
        if (this.f10102l) {
            return;
        }
        T();
        a(this.f10099i, 1);
        this.f10102l = true;
        this.f10114y = 1;
        b();
        c();
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null && (aVar instanceof BeiZiUnifiedAdListener)) {
            ((BeiZiUnifiedAdListener) aVar).onAdLoaded(beiZiUnifiedAdResponse);
        }
        Q();
        f10091r = true;
    }

    public void a(String str, BZUnifiedAdResponse bZUnifiedAdResponse) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdLoaded:");
        sb2.append(str);
        if (this.f10102l) {
            return;
        }
        T();
        a(this.f10099i, 1);
        this.f10102l = true;
        this.f10114y = 1;
        b();
        c();
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null && (aVar instanceof BZUnifiedAdListener)) {
            ((BZUnifiedAdListener) aVar).onAdLoaded(bZUnifiedAdResponse);
        }
        Q();
        f10091r = true;
    }

    public void a(String str, int i10) {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar != null) {
            if (aVar instanceof AdListener) {
                ((AdListener) aVar).onAdFailedToLoad(i10);
            } else if (aVar instanceof RewardedVideoAdListener) {
                ((RewardedVideoAdListener) aVar).onRewardedVideoAdFailedToLoad(i10);
            } else if (aVar instanceof NativeAdListener) {
                ((NativeAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof InterstitialAdListener) {
                ((InterstitialAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof NativeUnifiedAdListener) {
                ((NativeUnifiedAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof com.beizi.fusion.b) {
                ((com.beizi.fusion.b) aVar).a(i10);
            } else if (aVar instanceof BeiZiUnifiedAdListener) {
                ((BeiZiUnifiedAdListener) aVar).onAdFailed(i10);
            } else if (aVar instanceof BZUnifiedAdListener) {
                ((BZUnifiedAdListener) aVar).onAdFailed(i10);
            }
        }
        b();
        c();
        this.f10114y = 3;
        r();
        f10091r = true;
    }

    public void a(long j10) {
        com.beizi.fusion.a aVar = this.f10098h;
        if (aVar == null || !(aVar instanceof AdListener)) {
            return;
        }
        ((AdListener) aVar).onAdTick(j10);
    }

    @NonNull
    private g a(String str, com.beizi.fusion.work.a aVar) {
        ac.a("BeiZis", "comparePrices handleCompeteToDetermine worker:" + aVar.f());
        this.f10099i = aVar;
        this.F.f10273h.a(str, 2);
        c();
        return g.TO_DETERMINE;
    }

    @NonNull
    private g a(String str, com.beizi.fusion.work.a aVar, String str2) {
        if (!this.E) {
            a(aVar, str2);
            b();
            c();
            return l(str);
        }
        b(aVar, 1);
        return m(str);
    }

    private void a(com.beizi.fusion.work.a aVar, String str) {
        this.E = true;
        ac.a("BeiZis", "---handleCompeteSuccess---" + str + "---" + e(aVar));
        this.f10099i = aVar;
        a(aVar, 1);
    }

    public void a(com.beizi.fusion.a aVar) {
        this.f10098h = aVar;
    }

    public void a(boolean z10) {
        this.f10108s = z10;
    }

    public void a(Map map) {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null || map == null) {
            return;
        }
        aVar.a(map);
    }

    private void a(JSONObject jSONObject) {
        Map<String, Object> map;
        JSONObject jSONObjectAx;
        if (jSONObject == null) {
            return;
        }
        try {
            if (this.f10099i == null || (map = this.V) == null || !map.containsKey("materialInfo") || (jSONObjectAx = this.f10099i.ax()) == null || !jSONObjectAx.has("materialInfo")) {
                return;
            }
            jSONObject.put("materialInfo", jSONObjectAx.optJSONObject("materialInfo"));
        } catch (Throwable unused) {
        }
    }
}
