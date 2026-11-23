package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.MApplication;
import com.join.mgps.Util.h1;
import com.join.mgps.pref.PrefDef_;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.util.AdError;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class h extends d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RewardVideoAD f58384o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f58385p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private a f58386q;

    class a implements RewardVideoADListener {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f58387g = false;

        a() {
        }

        public void a(boolean showAd) {
            this.f58387g = showAd;
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClick() {
            d.h(h.this.f58359a, 2);
            MApplication.f3182z.O(true);
            h1.c(h.this.f58362d, "rewardVideoAd bar click");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClose() {
            d.h(h.this.f58359a, 3);
            h.this.onWfADClose();
            h hVar = h.this;
            hVar.onWfADClose(hVar.f58364f);
            h hVar2 = h.this;
            hVar2.onWfADClose(hVar2.f58364f, hVar2.f58365g, hVar2.f58366h);
            h hVar3 = h.this;
            hVar3.onWfADClose(hVar3.f58364f, hVar3.f58365g, hVar3.f58366h, hVar3.f58370l);
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADExpose() {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADLoad() {
            h.this.f58385p = true;
            h hVar = h.this;
            hVar.f58369k = false;
            hVar.onWfADLoad(this.f58387g);
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADShow() {
            h.this.f58385p = false;
            d.h(h.this.f58359a, 1);
            h.this.onWfADShow();
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onError(AdError adError) {
            h.this.f58385p = false;
            h hVar = h.this;
            hVar.f58369k = false;
            Map<String, Object> map = hVar.f58370l;
            if (map != null) {
                d.i(hVar.f58359a, 5, map);
            } else {
                d.h(hVar.f58359a, 5);
            }
            h.this.onWfError(adError.getErrorCode(), adError.getErrorMsg());
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onReward(Map<String, Object> map) {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoCached() {
            h.this.f58385p = true;
            h hVar = h.this;
            hVar.f58369k = false;
            hVar.onWfVideoCached();
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoComplete() {
            d.h(h.this.f58359a, 4);
            h.this.onWfVideoComplete();
        }
    }

    public h(Context ctx, String appId, String posId) {
        super("GDT", ctx, appId, posId);
        this.f58385p = false;
    }

    @Override // com.join.mgps.ad.d
    public void a() {
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        com.join.mgps.ad.adapter.b.a(this.f58359a, this.f58360b, new e6.a() { // from class: com.join.mgps.ad.g
            @Override // e6.a
            public final void a() {
                this.f58383a.onWfInitSuccess();
            }
        });
    }

    @Override // com.join.mgps.ad.d
    protected boolean b() {
        return this.f58384o != null && this.f58385p;
    }

    @Override // com.join.mgps.ad.d
    public void d(boolean showAd) {
        if (new PrefDef_(this.f58359a).sdkInit().d().booleanValue()) {
            return;
        }
        this.f58385p = false;
        if (d.f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("load:");
            sb2.append(showAd);
        }
        try {
            if (this.f58386q == null) {
                this.f58386q = new a();
            }
            this.f58386q.a(showAd);
            if (this.f58369k) {
                return;
            }
            this.f58369k = true;
            if (this.f58384o == null) {
                this.f58384o = new RewardVideoAD(this.f58359a, this.f58361c, this.f58386q, true);
            }
            this.f58384o.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().build());
            this.f58384o.loadAD();
        } catch (Exception e10) {
            e10.printStackTrace();
            Map<String, Object> map = this.f58370l;
            if (map != null) {
                d.i(this.f58359a, 5, map);
            } else {
                d.h(this.f58359a, 5);
            }
            onWfError(-1, "广告初始化错误");
        }
    }

    @Override // com.join.mgps.ad.d
    protected void t(Activity activity) {
        super.t(activity);
        this.f58384o.showAD(activity);
    }
}
