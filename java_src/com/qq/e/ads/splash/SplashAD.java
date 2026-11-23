package com.qq.e.ads.splash;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NSPVI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class SplashAD extends LiteAbstractAD<NSPVI> implements IReward {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile ViewGroup f78260i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile SplashADListener f78261j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile ADRewardListener f78262k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile LoadAdParams f78263l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile boolean f78264m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile boolean f78265n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile boolean f78266o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile int f78267p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile byte[] f78268q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile ServerSideVerificationOptions f78269r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f78270s;

    private class ADListenerAdapter implements ADListener {
        private ADListenerAdapter() {
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (SplashAD.this.f78261j == null) {
                return;
            }
            int type = aDEvent.getType();
            if (type == 112) {
                Long l10 = (Long) aDEvent.getParam(Long.class);
                if (l10 != null) {
                    SplashAD.this.f78261j.onADTick(l10.longValue());
                }
                return;
            }
            switch (type) {
                case 100:
                    Long l11 = (Long) aDEvent.getParam(Long.class);
                    if (l11 != null) {
                        SplashAD.this.f78261j.onADLoaded(l11.longValue());
                    }
                    break;
                case 101:
                    SplashAD.this.f78261j.onNoAD(AdErrorConvertor.getAdError(aDEvent));
                    break;
                case 102:
                    SplashAD.this.f78261j.onADPresent();
                    break;
                case 103:
                    SplashAD.this.f78261j.onADExposure();
                    break;
                case 104:
                    if (SplashAD.this.f78262k != null) {
                        HashMap map = new HashMap();
                        String str = (String) aDEvent.getParam(String.class);
                        if (str != null) {
                            map.put("transId", str);
                        }
                        String str2 = (String) aDEvent.getParam(1, String.class);
                        if (!TextUtils.isEmpty(str2)) {
                            map.put(IReward.DEV_EXT, str2);
                        }
                        SplashAD.this.f78262k.onReward(map);
                    }
                    break;
                case 105:
                    SplashAD.this.f78261j.onADClicked();
                    break;
                case 106:
                    SplashAD.this.f78261j.onADDismissed();
                    break;
            }
        }
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener) {
        this(context, str, splashADListener, 0);
    }

    private void fetchAndShowIn(ViewGroup viewGroup) {
        i(viewGroup, false);
    }

    private void fetchFullScreenAndShowIn(ViewGroup viewGroup) {
        i(viewGroup, true);
    }

    private void i(ViewGroup viewGroup, boolean z10) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数有误：传入container参数为空");
            a(4001);
            return;
        }
        T t10 = this.f78107a;
        if (t10 == 0) {
            this.f78266o = z10;
            this.f78260i = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t10;
        if (z10) {
            nspvi.fetchFullScreenAndShowIn(viewGroup);
        } else {
            nspvi.fetchAndShowIn(viewGroup);
        }
    }

    private void j(boolean z10) {
        if (a()) {
            if (!b()) {
                this.f78266o = z10;
                this.f78265n = true;
                return;
            }
            T t10 = this.f78107a;
            if (t10 == 0) {
                a("fetchAdInner");
                return;
            }
            NSPVI nspvi = (NSPVI) t10;
            if (z10) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
        }
    }

    private void l(ViewGroup viewGroup, boolean z10) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数错误，container参数为空");
            a(4001);
            return;
        }
        T t10 = this.f78107a;
        if (t10 == 0) {
            this.f78260i = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t10;
        if (z10) {
            nspvi.showFullScreenAd(viewGroup);
        } else {
            nspvi.showAd(viewGroup);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public NSPVI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeSplashAdView(context, str, str2, str3);
    }

    public void fetchAdOnly() {
        j(false);
    }

    public void fetchFullScreenAdOnly() {
        j(true);
    }

    public String getAdNetWorkName() {
        T t10 = this.f78107a;
        if (t10 != 0) {
            return ((NSPVI) t10).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    @Deprecated
    public Bitmap getZoomOutBitmap() {
        GDTLogger.e("注意！开屏V+功能已废弃，调用不生效");
        return null;
    }

    public void preLoad() {
        if (a()) {
            if (!b()) {
                this.f78264m = true;
                return;
            }
            T t10 = this.f78107a;
            if (t10 != 0) {
                ((NSPVI) t10).preload();
            } else {
                a("preLoad");
            }
        }
    }

    @Deprecated
    public void setAdLogoMargin(int i10, int i11) {
    }

    public void setDeveloperLogo(int i10) {
        T t10 = this.f78107a;
        if (t10 == 0) {
            this.f78267p = i10;
        } else {
            ((NSPVI) t10).setDeveloperLogo(i10);
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NSPVI) t10).setLoadAdParams(loadAdParams);
        } else {
            this.f78263l = loadAdParams;
        }
    }

    @Deprecated
    public void setPreloadView(View view) {
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f78262k = aDRewardListener;
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f78269r = serverSideVerificationOptions;
        T t10 = this.f78107a;
        if (t10 != 0) {
            ((NSPVI) t10).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void showAd(ViewGroup viewGroup) {
        l(viewGroup, false);
    }

    public void showFullScreenAd(ViewGroup viewGroup) {
        l(viewGroup, true);
    }

    @Deprecated
    public void zoomOutAnimationFinish() {
        GDTLogger.e("注意！开屏V+功能已废弃，调用不生效");
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i10) {
        this.f78264m = false;
        this.f78261j = splashADListener;
        this.f78270s = i10;
        a(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    public void a(NSPVI nspvi) {
        if (this.f78263l != null) {
            nspvi.setLoadAdParams(this.f78263l);
        }
        if (this.f78267p != 0) {
            nspvi.setDeveloperLogo(this.f78267p);
        }
        if (this.f78268q != null) {
            nspvi.setDeveloperLogo(this.f78268q);
        }
        nspvi.setFetchDelay(this.f78270s);
        nspvi.setAdListener(new ADListenerAdapter());
        nspvi.setServerSideVerificationOptions(this.f78269r);
        if (this.f78260i != null) {
            if (this.f78266o) {
                fetchFullScreenAndShowIn(this.f78260i);
            } else {
                fetchAndShowIn(this.f78260i);
            }
        }
        if (this.f78264m) {
            nspvi.preload();
            this.f78264m = false;
        }
        if (this.f78265n) {
            if (this.f78266o) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
            this.f78265n = false;
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        if (this.f78261j != null) {
            this.f78261j.onNoAD(AdErrorConvertor.formatErrorCode(i10));
        }
    }

    public void setDeveloperLogo(byte[] bArr) {
        T t10 = this.f78107a;
        if (t10 == 0) {
            this.f78268q = bArr;
        } else {
            ((NSPVI) t10).setDeveloperLogo(bArr);
        }
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i10, String str2) {
        this.f78264m = false;
        this.f78261j = splashADListener;
        this.f78270s = i10;
        a(context, str, str2);
    }
}
