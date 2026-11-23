package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.aggmoread.sdk.client.AMAdLoadSlot;
import com.aggmoread.sdk.client.AMAdLoader;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.AMSdk;
import com.aggmoread.sdk.client.AMVideoConfigs;
import com.aggmoread.sdk.client.reward.AMRewardAd;
import com.aggmoread.sdk.client.reward.AMRewardAdListener;
import com.aggmoread.sdk.client.reward.AMRewardInteractionListener;
import com.join.mgps.Util.h1;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class s extends d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private AMRewardAd f58410o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    AMAdLoader f58411p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private AMVideoConfigs f58412q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f58413r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a f58414s;

    class a implements AMRewardAdListener, AMRewardInteractionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f58415a = false;

        a() {
        }

        public void a(boolean showAd) {
            this.f58415a = showAd;
        }

        @Override // com.aggmoread.sdk.client.reward.AMRewardInteractionListener
        public void onAdClicked() {
            d.h(s.this.f58359a, 2);
            h1.c(s.this.f58362d, "rewardVideoAd bar click");
        }

        @Override // com.aggmoread.sdk.client.reward.AMRewardInteractionListener
        public void onAdClosed() {
            d.h(s.this.f58359a, 3);
            s.this.onWfADClose();
            s sVar = s.this;
            sVar.onWfADClose(sVar.f58364f);
            s sVar2 = s.this;
            sVar2.onWfADClose(sVar2.f58364f, sVar2.f58365g, sVar2.f58366h);
            s sVar3 = s.this;
            sVar3.onWfADClose(sVar3.f58364f, sVar3.f58365g, sVar3.f58366h, sVar3.f58370l);
        }

        @Override // com.aggmoread.sdk.client.IAMAdInteractionListener
        public void onAdError(AMError amError) {
            s.this.f58413r = false;
            s sVar = s.this;
            sVar.f58369k = false;
            Map<String, Object> map = sVar.f58370l;
            if (map != null) {
                d.i(sVar.f58359a, 5, map);
            } else {
                d.h(sVar.f58359a, 5);
            }
            if (amError != null) {
                s.this.onWfError(amError.code, amError.msg);
            } else {
                s.this.onWfError(-1, "未知错误");
            }
        }

        @Override // com.aggmoread.sdk.client.reward.AMRewardInteractionListener
        public void onAdExposed() {
            s.this.f58413r = false;
            d.h(s.this.f58359a, 1);
            s.this.onWfADShow();
        }

        @Override // com.aggmoread.sdk.client.IAMAdLoadListener
        public void onAdLoadFail(AMError amError) {
            s sVar = s.this;
            Map<String, Object> map = sVar.f58370l;
            if (map != null) {
                d.i(sVar.f58359a, 5, map);
            } else {
                d.h(sVar.f58359a, 5);
            }
            if (amError != null) {
                s.this.onWfError(amError.code, amError.msg);
            } else {
                s.this.onWfError(-1, "未知错误");
            }
        }

        @Override // com.aggmoread.sdk.client.IAMAdLoadListener
        public void onAdLoaded(List<AMRewardAd> list) {
            h1.c(s.this.f58362d, "rewardVideoAd loaded");
            s.this.f58413r = true;
            s sVar = s.this;
            sVar.f58369k = false;
            if (list != null) {
                sVar.f58410o = list.get(0);
            }
        }

        @Override // com.aggmoread.sdk.client.reward.AMRewardAdListener
        public void onAdVideoCached() {
            h1.c(s.this.f58362d, "rewardVideoAd video cached");
            s.this.f58413r = true;
            s sVar = s.this;
            sVar.f58369k = false;
            sVar.onWfVideoCached();
            s.this.onWfADLoad(this.f58415a);
        }

        @Override // com.aggmoread.sdk.client.reward.AMRewardInteractionListener
        public void onReward(Map map) {
            d.h(s.this.f58359a, 6);
        }

        @Override // com.aggmoread.sdk.client.reward.AMRewardInteractionListener
        public void onVideoComplete() {
            d.h(s.this.f58359a, 4);
            s.this.onWfVideoComplete();
        }
    }

    public s(Context ctx, String appId, String posId) {
        super("RE", ctx, appId, posId);
        this.f58413r = false;
    }

    private void w(boolean b10) {
        AMVideoConfigs.Builder builder = new AMVideoConfigs.Builder();
        builder.setAutoPlayMuted(true);
        builder.setAutoPlayPolicy(1);
        builder.setEnableDetailPage(true);
        builder.setDetailPageMuted(true);
        builder.setEnableUserControl(true);
        builder.setNeedCoverImage(true);
        builder.setNeedProgressBar(true);
        this.f58412q = builder.build();
    }

    @Override // com.join.mgps.ad.d
    public void a() {
        if (this.f58414s == null) {
            this.f58414s = new a();
        }
        com.join.mgps.ad.adapter.d.a(this.f58359a, this.f58360b, new e6.a() { // from class: com.join.mgps.ad.r
            @Override // e6.a
            public final void a() {
                this.f58409a.onWfInitSuccess();
            }
        });
    }

    @Override // com.join.mgps.ad.d
    protected boolean b() {
        if (d.f58357m) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RewardVideoAd:");
            sb2.append(this.f58410o != null);
            sb2.append("hasLoaded:");
            sb2.append(this.f58413r);
        }
        return this.f58410o != null && this.f58413r;
    }

    @Override // com.join.mgps.ad.d
    public void d(boolean showAd) {
        try {
            this.f58413r = false;
            if (d.f58357m) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("load:");
                sb2.append(showAd);
            }
            w(showAd);
            if (this.f58414s == null) {
                this.f58414s = new a();
            }
            this.f58414s.a(showAd);
            if (this.f58369k) {
                return;
            }
            this.f58369k = true;
            if (this.f58411p == null) {
                this.f58411p = AMSdk.makeAdLoader(new AMAdLoadSlot.Builder().setSlotId(this.f58361c).setVideoConfig(this.f58412q).setAdCount(1).setSSBidToken(null).build());
            }
            AMAdLoader aMAdLoader = this.f58411p;
            if (aMAdLoader != null) {
                aMAdLoader.loadRewardAd(this.f58359a, this.f58414s);
                return;
            }
            Map<String, Object> map = this.f58370l;
            if (map != null) {
                d.i(this.f58359a, 5, map);
            } else {
                d.h(this.f58359a, 5);
            }
            onWfError(-1, "广告加载错误");
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f58369k = false;
            Map<String, Object> map2 = this.f58370l;
            if (map2 != null) {
                d.i(this.f58359a, 5, map2);
            } else {
                d.h(this.f58359a, 5);
            }
            onWfError(-1, "广告加载错误");
        }
    }

    @Override // com.join.mgps.ad.d
    protected void t(Activity activity) {
        super.t(activity);
        this.f58410o.show(activity, this.f58414s);
        this.f58410o = null;
    }
}
