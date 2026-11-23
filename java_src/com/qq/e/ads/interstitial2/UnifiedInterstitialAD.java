package com.qq.e.ads.interstitial2;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.UIADI;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class UnifiedInterstitialAD extends LiteAbstractAD<UIADI> implements NFBI, IReward {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicInteger f78191i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AtomicInteger f78192j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile VideoOption f78193k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile int f78194l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile int f78195m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile LoadAdParams f78196n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private UnifiedInterstitialADListener f78197o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ServerSideVerificationOptions f78198p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ADListenerAdapter f78199q;

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener) {
        this(activity, str, unifiedInterstitialADListener, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public UIADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getUnifiedInterstitialADDelegate((Activity) context, str, str2, str3, this.f78199q);
    }

    public void close() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).close();
        }
    }

    public void destroy() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).destroy();
        } else {
            a("destroy");
        }
    }

    public String getAdNetWorkName() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((UIADI) t10).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public int getAdPatternType() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((UIADI) t10).getAdPatternType();
        }
        a("getAdPatternType");
        return 0;
    }

    public int getVideoDuration() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((UIADI) t10).getVideoDuration();
        }
        a("getVideoDuration");
        return 0;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f78191i.incrementAndGet();
                return;
            }
            T t10 = this.f78107a;
            if (t10 != 0) {
                ((UIADI) t10).loadAd();
            } else {
                a("loadAD");
            }
        }
    }

    public void loadFullScreenAD() {
        if (a()) {
            if (!b()) {
                this.f78192j.incrementAndGet();
                return;
            }
            T t10 = this.f78107a;
            if (t10 != 0) {
                ((UIADI) t10).loadFullScreenAD();
            } else {
                a("loadFullScreenAD");
            }
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f78196n = loadAdParams;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).setLoadAdParams(this.f78196n);
        }
    }

    public void setMaxVideoDuration(int i10) {
        this.f78195m = i10;
        if (this.f78195m > 0 && this.f78194l > this.f78195m) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).setMaxVideoDuration(i10);
        }
    }

    public void setMediaListener(UnifiedInterstitialMediaListener unifiedInterstitialMediaListener) {
        this.f78199q.setMediaListener(unifiedInterstitialMediaListener);
    }

    public void setMinVideoDuration(int i10) {
        this.f78194l = i10;
        if (this.f78195m > 0 && this.f78194l > this.f78195m) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).setMinVideoDuration(i10);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f78199q.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(com.qq.e.comm.listeners.ADRewardListener aDRewardListener) {
        this.f78199q.setAdRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f78198p = serverSideVerificationOptions;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void setVideoOption(VideoOption videoOption) {
        this.f78193k = videoOption;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).setVideoOption(videoOption);
        }
    }

    public void show() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).show();
        } else {
            a("show");
        }
    }

    public void showFullScreenAD(Activity activity) {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).showFullScreenAD(activity);
        } else {
            a("showFullScreenAD");
        }
    }

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener, Map map) {
        this.f78191i = new AtomicInteger(0);
        this.f78192j = new AtomicInteger(0);
        this.f78197o = unifiedInterstitialADListener;
        this.f78199q = new ADListenerAdapter(this.f78197o);
        a(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    public void a(UIADI uiadi) {
        setVideoOption(this.f78193k);
        setMinVideoDuration(this.f78194l);
        setMaxVideoDuration(this.f78195m);
        setLoadAdParams(this.f78196n);
        setServerSideVerificationOptions(this.f78198p);
        while (this.f78191i.getAndDecrement() > 0) {
            loadAD();
        }
        while (this.f78192j.getAndDecrement() > 0) {
            loadFullScreenAD();
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        UnifiedInterstitialADListener unifiedInterstitialADListener = this.f78197o;
        if (unifiedInterstitialADListener != null) {
            unifiedInterstitialADListener.onNoAD(AdErrorConvertor.formatErrorCode(i10));
        }
    }

    public void show(Activity activity) {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((UIADI) t10).show(activity);
        } else {
            a("show");
        }
    }

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener, Map map, String str2) {
        this.f78191i = new AtomicInteger(0);
        this.f78192j = new AtomicInteger(0);
        this.f78197o = unifiedInterstitialADListener;
        this.f78199q = new ADListenerAdapter(this.f78197o);
        a(activity, str, str2);
    }
}
