package com.sigmob.windad.natives;

import android.os.Handler;
import android.os.Looper;
import com.czhj.sdk.common.models.AdStatus;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.z;
import com.sigmob.sdk.base.m;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.nativead.aa;
import com.sigmob.sdk.nativead.y;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdRequest;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class WindNativeUnifiedAd extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WindNativeAdLoadListener f82187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f82188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y f82189c;

    /* JADX INFO: renamed from: com.sigmob.windad.natives.WindNativeUnifiedAd$1, reason: invalid class name */
    class AnonymousClass1 implements aa {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WindNativeAdRequest f82190a;

        AnonymousClass1(final WindNativeAdRequest val$request) {
            this.f82190a = val$request;
        }

        @Override // com.sigmob.sdk.nativead.aa
        public void onNativeAdLoadFail(final int errorCode, final String errorMsg) {
            ((m) WindNativeUnifiedAd.this).f79498h = AdStatus.AdStatusNone;
            Handler handler = WindNativeUnifiedAd.this.f82188b;
            final WindNativeAdRequest windNativeAdRequest = this.f82190a;
            handler.post(new Runnable() { // from class: com.sigmob.windad.natives.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f82194b.a(errorCode, errorMsg, windNativeAdRequest);
                }
            });
        }

        @Override // com.sigmob.sdk.nativead.aa
        public void onNativeAdLoaded(final List<WindNativeAdData> adUnits) {
            ((m) WindNativeUnifiedAd.this).f79498h = AdStatus.AdStatusNone;
            WindNativeUnifiedAd.this.f82188b.post(new Runnable() { // from class: com.sigmob.windad.natives.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f82198b.a(adUnits);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i10, String str, WindNativeAdRequest windNativeAdRequest) {
            if (WindNativeUnifiedAd.this.f82187a == null) {
                return;
            }
            WindAdError windAdError = WindAdError.getWindAdError(i10);
            if (windAdError == null) {
                windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
                windAdError.setErrorMessage(i10, str);
                windAdError.setMessage(str);
            }
            WindNativeUnifiedAd.this.f82187a.onAdError(windAdError, windNativeAdRequest.getPlacementId());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(List list) {
            if (WindNativeUnifiedAd.this.f82187a == null) {
                return;
            }
            WindNativeUnifiedAd.this.f82187a.onAdLoad(list, WindNativeUnifiedAd.this.e());
        }
    }

    public interface WindNativeAdLoadListener {
        void onAdError(WindAdError error, String placementId);

        void onAdLoad(List<WindNativeAdData> adDataList, String placementId);
    }

    public WindNativeUnifiedAd(WindNativeAdRequest request) {
        super(request, false);
        this.f82188b = new Handler(Looper.getMainLooper());
        this.f82189c = new y(request, new AnonymousClass1(request));
    }

    @Override // com.sigmob.sdk.base.m
    protected com.sigmob.sdk.manager.b c() {
        return null;
    }

    public void destroy() {
        Object[] objArr = new Object[1];
        WindAdRequest windAdRequest = this.f79502l;
        objArr[0] = windAdRequest != null ? windAdRequest.getPlacementId() : "null";
        SigmobLog.i(String.format("native ad %s is Destroy", objArr));
        this.f82187a = null;
    }

    @Override // com.sigmob.sdk.base.m
    public String getCurrency() {
        y yVar = this.f82189c;
        if (yVar == null) {
            return null;
        }
        return yVar.b();
    }

    @Override // com.sigmob.sdk.base.m
    public String getEcpm() {
        y yVar = this.f82189c;
        if (yVar == null) {
            return null;
        }
        return yVar.a();
    }

    @Override // com.sigmob.sdk.base.m
    @Deprecated
    public boolean loadAd() {
        try {
            super.loadAd();
            return a(this.f79502l.getAdCount());
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    public void setNativeAdLoadListener(WindNativeAdLoadListener nativeAdLoadListener) {
        this.f82187a = nativeAdLoadListener;
    }

    public boolean loadAd(int adCount) {
        try {
            super.loadAd();
            int iMax = Math.max(this.f79502l.getAdCount(), adCount);
            this.f79502l.setAdCount(iMax);
            return a(iMax);
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    @Override // com.sigmob.sdk.base.m
    protected void a(final WindAdError error) {
        this.f82188b.post(new Runnable() { // from class: com.sigmob.windad.natives.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f82192b.b(error);
            }
        });
    }

    @Override // com.sigmob.sdk.base.m
    protected Map<String, BiddingResponse> b() {
        y yVar = this.f82189c;
        if (yVar == null) {
            return null;
        }
        return yVar.c();
    }

    @Override // com.sigmob.sdk.base.m
    public boolean loadAd(String bidToken) {
        try {
            super.loadAd(bidToken);
            return a(this.f79502l.getAdCount() > 0 ? this.f79502l.getAdCount() : 1);
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WindAdError windAdError) {
        this.f79498h = AdStatus.AdStatusNone;
        if (this.f82187a == null) {
            return;
        }
        SigmobLog.i("onVideoAdLoadFail " + windAdError.toString() + "|" + e());
        this.f82187a.onAdError(windAdError, e());
    }

    @Override // com.sigmob.sdk.base.m
    protected void a(String key, String value) {
        y yVar = this.f82189c;
        if (yVar == null) {
            return;
        }
        yVar.a(key, value);
    }

    public boolean loadAd(String bidToken, int adCount) {
        try {
            super.loadAd(bidToken);
            return a(adCount);
        } catch (Throwable th) {
            a(th);
            return false;
        }
    }

    private void a(Throwable e10) {
        WindAdError windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
        PointEntitySigmobError pointEntitySigmobErrorSigmobError = PointEntitySigmobError.SigmobError("error", windAdError.getErrorCode(), e10.getMessage());
        pointEntitySigmobErrorSigmobError.setAdtype(String.valueOf(5));
        pointEntitySigmobErrorSigmobError.setPlacement_id(e());
        pointEntitySigmobErrorSigmobError.commit();
        a(windAdError);
    }

    private boolean a(int adCount) {
        try {
            if (!h()) {
                return false;
            }
            String strJ = com.sigmob.sdk.manager.b.j();
            this.f79498h = AdStatus.AdStatusLoading;
            if (this.f82189c.a(adCount, getBid_token(), getBidFloor(), i(), strJ) == 1) {
                a(z.a(e()), strJ);
            }
            return true;
        } catch (Throwable th) {
            SigmobLog.i(getClass().getSimpleName() + " catch throwable " + th);
            if (this.f82187a == null) {
                return false;
            }
            WindAdError windAdError = WindAdError.ERROR_SIGMOB_REQUEST;
            windAdError.setMessage(th.getMessage());
            this.f82187a.onAdError(windAdError, e());
            return false;
        }
    }
}
