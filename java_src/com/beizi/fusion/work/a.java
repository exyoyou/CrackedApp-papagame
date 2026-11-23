package com.beizi.fusion.work;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.NativeUnifiedAdResponse;
import com.beizi.fusion.c.c;
import com.beizi.fusion.c.e;
import com.beizi.fusion.c.g;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.b;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.ChannelBidResult;
import com.beizi.fusion.model.EventItem;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.unified.BZUnifiedAdActionData;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a extends Observable implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected b f10978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected EventBean f10979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f10980c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected e f10981d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean f10982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected AdSpacesBean.ForwardBean f10983f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f10985h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f10986i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected g f10984g = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected com.beizi.fusion.e.a f10987j = com.beizi.fusion.e.a.ADDEFAULT;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f10991n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f10992o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f10993p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f10994q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10995r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f10996s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f10997t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f10998u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f10999v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f11000w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TimerTask f11001x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Timer f11002y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f11003z = 0;
    private boolean A = false;
    private String B = "WATERFALL";
    private int C = 0;
    private boolean D = false;
    private boolean E = false;
    private String F = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f10988k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected long f10989l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    protected Handler f10990m = new Handler(Looper.getMainLooper()) { // from class: com.beizi.fusion.work.a.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 == 1) {
                e eVar = a.this.f10981d;
                if (eVar == null || eVar.u() >= 1 || a.this.f10981d.t() == 2) {
                    return;
                }
                a.this.k();
                return;
            }
            if (i10 == 2) {
                ac.b("BeiZis", "before handleAdClose");
                a.this.F();
                a.this.aa();
            } else if (i10 == 3 && message.obj != null) {
                a.this.a(message);
                a.this.ae();
                if (a.this.c()) {
                    return;
                }
                a.this.d(message.arg1);
            }
        }
    };
    private boolean G = false;
    private boolean H = false;

    private void aA() {
        Timer timer;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mAdLifeManager != null ? ");
        sb2.append(this.f10981d != null);
        ac.c("BeiZis", sb2.toString());
        if (this.f10981d != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("enter cancelExposureTaskIfNeed (System.currentTimeMillis() - mStartLoadTime) = ");
            sb3.append(System.currentTimeMillis() - this.f11003z);
            sb3.append(",mAdLifeManager.getValidExposureTime() = ");
            sb3.append(this.f10981d.w());
            sb3.append(",mExposureTimerTask != null ? ");
            sb3.append(this.f11001x != null);
            sb3.append(",mExposureTimer != null ? ");
            sb3.append(this.f11002y != null);
            ac.c("BeiZis", sb3.toString());
        }
        if (this.f10981d == null || System.currentTimeMillis() - this.f11003z >= this.f10981d.w() || this.f11001x == null || (timer = this.f11002y) == null) {
            return;
        }
        timer.cancel();
        W();
    }

    private boolean az() {
        b bVar = this.f10978a;
        return (bVar == null || bVar.c()) ? false : true;
    }

    protected void A() {
        if (az()) {
            af();
            if (y()) {
                K();
                b(3);
            }
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdLoadFail mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            if (b()) {
                return;
            }
            this.f10978a.f10272g.a(this.f10980c, 11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdShow mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void C() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdExposure mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 6);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdClick mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 7);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdClickCallBack mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 17);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void F() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdClose mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 9);
        }
    }

    protected void G() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdClickClose mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void H() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdClickCallBack mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 22);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void I() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdRewarded mManagerObserver.mChannelResultStatus.getStatus(channel)  = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 12);
        }
    }

    public void J() {
        if (this.f10978a == null || this.E) {
            return;
        }
        ac.c("BeiZis", "channel " + this.f10980c + " reportParticipateBid mManagerObserver.mBidChannelStatus.getStatus(channel)  = " + this.f10978a.f10276k.a(this.f10980c));
        this.E = true;
    }

    protected void K() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportParticipateBid mManagerObserver.mBidChannelStatus.getStatus(channel)  = " + this.f10978a.f10276k.a(this.f10980c));
        }
    }

    protected void L() {
        b bVar = this.f10978a;
        if (bVar != null) {
            bVar.f10273h.a(this.f10980c, 3);
            ac.a("BeiZis", "channel == ---reportComparisonSuccess---" + f());
        }
    }

    protected void M() {
        b bVar = this.f10978a;
        if (bVar != null) {
            bVar.f10273h.a(this.f10980c, 8);
            ac.a("BeiZis", "channel == ---reportComparisonSendWinNotification---" + f());
        }
    }

    protected void N() {
        b bVar = this.f10978a;
        if (bVar != null) {
            bVar.f10273h.a(this.f10980c, 9);
            ac.a("BeiZis", "channel == ---reportComparisonSendLossNotification---" + f());
        }
    }

    protected void O() {
        b bVar = this.f10978a;
        if (bVar != null) {
            bVar.f10273h.a(this.f10980c, 1);
            this.f10978a.f10273h.a(this.f10980c, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void P() {
        O();
    }

    protected void Q() {
        b bVar = this.f10978a;
        if (bVar != null) {
            bVar.f10273h.a(this.f10980c, 4);
        }
    }

    protected void R() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportChannelClickEnhance GrayPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f10978a.f10274i.a(this.f10980c));
            this.f10978a.f10274i.a(this.f10980c, 1);
        }
    }

    protected void S() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportChannelClickEnhance RandomPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f10978a.f10274i.a(this.f10980c));
            this.f10978a.f10274i.a(this.f10980c, 2);
        }
    }

    protected void T() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportChannelClickEnhance LayerPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f10978a.f10274i.a(this.f10980c));
            this.f10978a.f10274i.a(this.f10980c, 3);
        }
    }

    protected void U() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportChannelClickEnhance ReduceArea mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = " + this.f10978a.f10274i.a(this.f10980c));
            this.f10978a.f10274i.a(this.f10980c, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void V() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportValidTimeExposure mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 13);
        }
    }

    protected void W() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportNotEnoughExposureTime mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 14);
        }
    }

    protected boolean X() {
        if (this.f10981d != null) {
            ac.c("BeiZis", "adStatus = " + this.f10981d.u());
        }
        e eVar = this.f10981d;
        return eVar != null && eVar.u() < 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Y() {
        e eVar = this.f10981d;
        return eVar != null && eVar.h() && (am() || ak());
    }

    protected void Z() {
        if (this.f10984g == null && this.f10981d != null && az()) {
            this.f10984g = this.f10981d.a(this);
        }
    }

    public void a(int i10) {
    }

    protected void aa() {
        if ((this.f10997t || this.f10981d == null) && !b(f())) {
            return;
        }
        this.f10981d.c(f());
        this.f10997t = true;
        if (this.A) {
            aA();
        }
    }

    protected void ab() {
        if (this.f10981d == null || !an()) {
            return;
        }
        e eVar = this.f10981d;
        eVar.a("255.200", eVar.i(), new EventItem("255.200", String.valueOf(System.currentTimeMillis()), f(), this.f10986i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ac() {
        if (this.f10981d == null || !an()) {
            return;
        }
        e eVar = this.f10981d;
        eVar.a("280.300", eVar.i(), new EventItem("280.300", String.valueOf(System.currentTimeMillis()), f(), this.f10986i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ad() {
        if (this.f10981d == null || !an()) {
            return;
        }
        e eVar = this.f10981d;
        eVar.a("290.300", eVar.i(), new EventItem("290.300", String.valueOf(System.currentTimeMillis()), f(), this.f10986i));
    }

    protected void ae() {
        if (this.f10981d == null || !an()) {
            return;
        }
        e eVar = this.f10981d;
        eVar.a("280.500", eVar.i(), new EventItem("280.500", String.valueOf(System.currentTimeMillis()), f(), this.f10986i));
    }

    protected void af() {
        if (ah()) {
            c(3);
        }
    }

    protected void ag() {
        if (p() != 3) {
            ac.a("BeiZisBid", "mWorker = " + this + ",set ad suc");
            c(2);
        }
    }

    public boolean ah() {
        return ai();
    }

    protected boolean ai() {
        return "C2S".equalsIgnoreCase(g());
    }

    protected boolean aj() {
        return "S2S".equalsIgnoreCase(g());
    }

    protected boolean ak() {
        return aj() || ai();
    }

    public boolean al() {
        return "BPDI".equalsIgnoreCase(g());
    }

    public boolean am() {
        return an() || al();
    }

    protected boolean an() {
        return "WATERFALL".equalsIgnoreCase(g());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ao() {
        b bVar = this.f10978a;
        if (bVar != null) {
            bVar.a().a(this.f10980c, this.f10979b);
        }
    }

    protected void ap() {
        A();
        e eVar = this.f10981d;
        if (eVar != null) {
            eVar.b(10140);
        }
    }

    public int aq() {
        return this.f10988k;
    }

    protected void ar() {
        if (this.f10978a == null || !"C2S".equalsIgnoreCase(g())) {
            return;
        }
        ac.c("BeiZis", "channel " + this.f10980c + " reportC2SPrice mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
        this.f10978a.f10272g.a(this.f10980c, 20);
    }

    public NativeUnifiedAdResponse as() {
        return null;
    }

    public g at() {
        return this.f10984g;
    }

    public void au() {
        this.f10989l = System.currentTimeMillis() + 1000;
    }

    public Map av() {
        return null;
    }

    public String aw() {
        return null;
    }

    public JSONObject ax() {
        return null;
    }

    public boolean ay() {
        return false;
    }

    public void b(ChannelBidResult channelBidResult) {
    }

    public boolean c() {
        return this.D;
    }

    public abstract void d();

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(int i10) {
        AdSpacesBean.BuyerBean buyerBean;
        if (this.f10987j == com.beizi.fusion.e.a.ADLOAD && (buyerBean = this.f10982e) != null && !TextUtils.isEmpty(buyerBean.getBuyerSpaceUuId()) && !TextUtils.isEmpty(this.f10981d.x()) && this.f10982e.getBuyerSpaceUuId().equals(this.f10981d.x())) {
            this.f10987j = com.beizi.fusion.e.a.ADFAIL;
            this.f10981d.a(this.f10982e.getBuyerSpaceUuId(), i10);
            return;
        }
        this.f10987j = com.beizi.fusion.e.a.ADFAIL;
        if (this.f10981d == null || this.f10983f == null) {
            return;
        }
        if (X()) {
            this.f10981d.a(this.f10983f.getComponent(), g(), true, i10);
        } else {
            ac.b("BeiZis", "fail distribute direct fail");
            this.f10981d.b(i10);
        }
    }

    public abstract void e();

    public abstract String f();

    public String g() {
        return this.B;
    }

    public abstract com.beizi.fusion.e.a h();

    public String i() {
        return null;
    }

    public AdSpacesBean.BuyerBean j() {
        return this.f10982e;
    }

    protected abstract void k();

    public void l() {
        Handler handler = this.f10990m;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void m() {
    }

    public void n() {
    }

    public View o() {
        return null;
    }

    public int p() {
        return this.f10993p;
    }

    public void q() {
        L();
    }

    protected void r() {
        e eVar = this.f10981d;
        if (eVar != null) {
            this.f10978a = eVar.d();
        }
        AdSpacesBean.BuyerBean buyerBean = this.f10982e;
        if (buyerBean != null) {
            this.f10980c = buyerBean.getBuyerSpaceUuId();
        }
    }

    protected void s() {
        b bVar = this.f10978a;
        if (bVar != null) {
            bVar.a().a(this.f10982e, this.f10983f);
        }
    }

    protected void t() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportInitBegin mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 1);
        }
    }

    protected void u() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportInitEnd mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 2);
        }
    }

    protected void v() {
        if (this.f10978a != null) {
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdRequest mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            this.f10978a.f10272g.a(this.f10980c, 3);
        }
    }

    public boolean w() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x() {
        if (az()) {
            if (ai()) {
                ar();
            }
            if (y()) {
                b(2);
                J();
            }
            z();
            ac.c("BeiZis", "channel " + this.f10980c + " reportAdLoaded mManagerObserver.mChannelResultStatus.getStatus(channel) = " + this.f10978a.f10272g.a(this.f10980c));
            if (b()) {
                return;
            }
            this.f10978a.f10272g.a(this.f10980c, 4);
        }
    }

    protected boolean y() {
        return ah() && !w();
    }

    protected void z() {
    }

    public void a(Activity activity) {
    }

    public void b(Map map) {
    }

    public void c(int i10) {
        this.f10993p = i10;
    }

    private boolean b(String str) {
        return false;
    }

    public void a(Context context) {
    }

    public void a(ViewGroup viewGroup, List<View> list) {
    }

    public void b(int i10) {
        this.f10991n = i10;
    }

    private boolean b() {
        return ah() && w();
    }

    public void a(ChannelBidResult channelBidResult) {
    }

    public void a(BZUnifiedAdActionData bZUnifiedAdActionData) {
    }

    public void a(Map map) {
    }

    public void a(String str) {
        this.B = str;
    }

    public void a(AdSpacesBean.ForwardBean forwardBean) {
        this.f10983f = forwardBean;
    }

    public void a(AdSpacesBean.BuyerBean buyerBean) {
        this.f10982e = buyerBean;
    }

    public void a(boolean z10) {
        this.f10995r = z10;
    }

    public void a(long j10) {
        this.f10996s = j10;
    }

    @Override // com.beizi.fusion.c.c
    public void a() {
        if (h() != com.beizi.fusion.e.a.ADSHOW) {
            Q();
        }
    }

    protected void a(Message message) {
        EventBean eventBean;
        if (this.f10978a == null || (eventBean = this.f10979b) == null) {
            return;
        }
        eventBean.setError(String.valueOf(message.obj));
        this.f10979b.setErrorCode(String.valueOf(message.arg1));
        ao();
        A();
        this.f10979b.setError(null);
        this.f10979b.setErrorCode(null);
        ao();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, int i10) {
        if (az()) {
            Message messageObtainMessage = this.f10990m.obtainMessage(3, str);
            messageObtainMessage.arg1 = i10;
            this.f10990m.sendMessage(messageObtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(double d10) {
        if (d10 > 0.0d) {
            if ("BEIZI".equalsIgnoreCase(f())) {
                this.f10982e.setAvgPrice(d10);
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setBeiZiPrice(String.valueOf(d10));
                }
            }
            if (ak()) {
                this.f10982e.setBidPrice(d10);
                EventBean eventBean2 = this.f10979b;
                if (eventBean2 != null) {
                    eventBean2.setBidPrice(String.valueOf(d10));
                }
            }
            ao();
        }
    }
}
