package com.qq.e.ads.banner2;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.UBVI;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
class UnifiedBannerAD extends LiteAbstractAD<UBVI> implements NFBI, IReward {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private UnifiedBannerADListener f78126i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AtomicInteger f78127j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f78128k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private LoadAdParams f78129l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private UnifiedBannerView f78130m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ADListenerAdapter f78131n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile ServerSideVerificationOptions f78132o;

    UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public UBVI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getUnifiedBannerViewDelegate(this.f78130m, (Activity) context, str, str2, str3, this.f78131n);
    }

    void destroy() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UBVI) t10).destroy();
        } else {
            a("destroy");
        }
    }

    public String getAdNetWorkName() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((UBVI) t10).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    void h(int i10) {
        this.f78128k = i10;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UBVI) t10).setRefresh(i10);
        }
    }

    void loadAD() {
        if (a()) {
            if (!b()) {
                this.f78127j.incrementAndGet();
                return;
            }
            T t10 = this.f78107a;
            if (t10 != 0) {
                ((UBVI) t10).fetchAd();
            } else {
                a("loadAD");
            }
        }
    }

    void onWindowFocusChanged(boolean z10) {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UBVI) t10).onWindowFocusChanged(z10);
        }
    }

    void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f78129l = loadAdParams;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UBVI) t10).setLoadAdParams(loadAdParams);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f78131n.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f78131n.setAdRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f78132o = serverSideVerificationOptions;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UBVI) t10).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, String str2, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    public void a(UBVI ubvi) {
        h(this.f78128k);
        setLoadAdParams(this.f78129l);
        ubvi.setServerSideVerificationOptions(this.f78132o);
        while (this.f78127j.getAndDecrement() > 0) {
            loadAD();
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        UnifiedBannerADListener unifiedBannerADListener = this.f78126i;
        if (unifiedBannerADListener != null) {
            unifiedBannerADListener.onNoAD(AdErrorConvertor.formatErrorCode(i10));
        }
    }

    private UnifiedBannerAD(UnifiedBannerView unifiedBannerView, UnifiedBannerADListener unifiedBannerADListener) {
        this.f78127j = new AtomicInteger(0);
        this.f78128k = 30;
        this.f78129l = null;
        this.f78126i = unifiedBannerADListener;
        this.f78130m = unifiedBannerView;
        this.f78131n = new ADListenerAdapter(unifiedBannerADListener);
    }
}
