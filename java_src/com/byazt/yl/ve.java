package com.byazt.yl;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.fb.uj;
import com.byazt.me.da;
import com.byazt.me.i;
import com.byazt.me.x;
import com.byazt.nc.sp;
import com.byazt.nc.t;
import com.byazt.nr.m;
import com.byazt.vx.my;
import com.byazt.zh.n;
import com.byazt.zq.a;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.gromore.R;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 509, 54})
public abstract class ve extends uj implements Comparable<ve> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.fy.c f22289a;
    public String az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f22290b;
    public double bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.me.tt f22291c;
    public String cf;
    public String cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f22292d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f22293da;
    public boolean dz;
    public long eo;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f22294f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f22295g;
    public String gt;
    public int gu;
    public String gx;
    public String gy;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f22296h;
    public String hj;
    public int hq;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f22298i;
    public String ij;
    public int ir;
    public c is;
    public int iu;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f22300j;
    public boolean kp;
    public String kz;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f22301l;
    public int lo;
    public String lr;
    public String lt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f22302m;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    public String f22303ma;
    public boolean md;
    public boolean mm;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public i f22304n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public Map<String, Object> f22305nb;
    public String nt;
    public String nu;
    public String or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f22306p;
    public double pf;
    public volatile boolean pn;
    public String pu;
    public Map<String, String> qp;
    public String qy;
    public double rh;
    public double rl;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f22309s;
    public String sl;
    public a sp;
    public int sv;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f22310t;
    public String tk;
    public String to;
    public x tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f22311u;
    public n uj;
    public com.byazt.zh.tt ve;
    public String vi;
    public long vp;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public com.byazt.dhf.c f22313w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f22314x;
    public String xd;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f22315y;
    public volatile boolean yo;
    public int yp;
    public boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f22316z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public String f22317zb;
    public int zm;
    public List<String> my = new ArrayList();
    public int gr = -1;
    public int aw = 1;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public int f22299ic = 1;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public int f22297hd = 1;
    public int bm = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile boolean f22307q = false;
    public volatile boolean kk = false;
    public volatile boolean tx = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile boolean f22312v = false;
    public final Map<String, Object> os = new my();
    public boolean oz = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f22308r = false;
    public boolean yf = false;
    public String ny = "1";
    public Map<String, Object> mq = new HashMap();
    public Map<String, Object> jt = new ConcurrentHashMap();

    public interface c {
        void c();

        void c(ve veVar);
    }

    private void c(ViewGroup viewGroup, da daVar) {
        c(viewGroup);
        View viewFindViewById = viewGroup.findViewById(R.id.tt_mediation_mtg_ad_choice);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        if (daVar != null) {
            clearLogoView(viewGroup.findViewById(daVar.f16889t));
        }
    }

    public boolean adnHasAdVideoCachedApi() {
        return false;
    }

    @Override // com.byazt.fb.uj
    public <T> T applyFunction(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        return null;
    }

    public void bidLoseNotify(Map<String, Object> map) {
    }

    public void bidWinNotify(Map<String, Object> map) {
    }

    public boolean canAdReuse() {
        int i10 = this.f22295g;
        return i10 == 0 || i10 == 100;
    }

    public void cancelDownload() {
    }

    public void clearLogoView(View view) {
        if (view != null) {
            view.setVisibility(0);
            if (view instanceof ViewGroup) {
                ((ViewGroup) view).removeAllViews();
            } else if (view instanceof ImageView) {
                ((ImageView) view).setImageDrawable(null);
            }
        }
    }

    public void dislikeClick(String str, Map<String, Object> map) {
    }

    public String getActionText() {
        return this.f22302m;
    }

    public String getAdDescription() {
        return this.f22298i;
    }

    public String getAdExtra() {
        return this.lt;
    }

    public long getAdId() {
        return 0L;
    }

    public String getAdLifecycleId() {
        return null;
    }

    public Bitmap getAdLogo() {
        return null;
    }

    public String getAdNetWorkName() {
        return this.gx;
    }

    public int getAdNetworkPlatformId() {
        return this.hq;
    }

    public String getAdNetworkSlotId() {
        return this.xd;
    }

    public int getAdNetworkSlotType() {
        return this.f22295g;
    }

    public String getAdTitle() {
        return this.f22314x;
    }

    public int getAdType() {
        return this.zm;
    }

    public View getAdView() {
        return null;
    }

    public String getAdnName() {
        return TextUtils.isEmpty(this.gx) ? this.gy : this.gx;
    }

    public String getAid() {
        return this.pu;
    }

    public int getAppCommentNum() {
        return 0;
    }

    public Map<String, Object> getAppInfoExtra() {
        return this.f22305nb;
    }

    public String getAppName() {
        return this.f22296h;
    }

    public int getAppSize() {
        return this.sv;
    }

    public String getAuthorName() {
        return this.f22292d;
    }

    public double getBiddingCpmWithOutExchangeRate() {
        if (!isServerBiddingAd()) {
            return this.rl;
        }
        if (getServerBiddingShowCpm() < 0.0d) {
            return 0.0d;
        }
        return getServerBiddingShowCpm();
    }

    public c getCallBack() {
        return this.is;
    }

    public double getCpm() {
        try {
            if (isServerBiddingAd()) {
                if (getServerBiddingShowCpm() < 0.0d) {
                    return 0.0d;
                }
                return getServerBiddingShowCpm();
            }
            if (isClientBiddingAd() || isMultiBiddingAd()) {
                return this.rl * Double.valueOf(this.ny).doubleValue();
            }
            return this.rl;
        } catch (NumberFormatException e10) {
            m.c(e10);
        }
    }

    public long getCreativeId() {
        return 0L;
    }

    public String getCustomAdNetWorkName() {
        return this.gy;
    }

    public String getDiscount() {
        return this.qy;
    }

    public com.byazt.dhf.c getDislikeCallback() {
        return this.f22313w;
    }

    public sp getDislikeDialog(Activity activity) {
        return null;
    }

    public com.byazt.nc.uj getDislikeInfo() {
        return null;
    }

    public int getDownloadStatus() {
        return -1;
    }

    public com.byazt.nc.n getDownloadStatusController() {
        return null;
    }

    public String getErrorMsg() {
        return this.vi;
    }

    public Map<String, Object> getEventMap() {
        return this.jt;
    }

    public String getExchangeRate() {
        return this.ny;
    }

    public final Map<String, Object> getExtraMsg() {
        return this.mq;
    }

    public String getFailCallback() {
        return this.tk;
    }

    public final long getFillTime() {
        return this.vp;
    }

    public String getFunctionDescUrl() {
        return this.cf;
    }

    public com.byazt.zh.tt getGMAdAppDownloadListener() {
        return this.ve;
    }

    public com.byazt.fy.c getGMDrawAdListener() {
        return this.f22289a;
    }

    public com.byazt.me.tt getGMNativeAdListener() {
        return this.f22291c;
    }

    public com.byazt.me.n getGMNativeCustomVideoReporter() {
        return null;
    }

    public x getGMVideoListener() {
        return this.tt;
    }

    public String getIconUrl() {
        return this.f22293da;
    }

    public int getIfReuseAds() {
        return this.f22309s;
    }

    public int getImageHeight() {
        return this.f22311u;
    }

    public int getImageMode() {
        return this.gu;
    }

    public String getImageUrl() {
        return this.sl;
    }

    public int getImageWidth() {
        return this.f22310t;
    }

    public List<String> getImages() {
        return this.my;
    }

    public int getInteractionType() {
        return this.gr;
    }

    public boolean getIsAppDownload() {
        return this.md;
    }

    public int getIsRefresh() {
        return this.iu;
    }

    public String getLevelTag() {
        return this.kz;
    }

    public int getLoadSort() {
        return this.ir;
    }

    public Map<String, Object> getMediaExtraInfo() {
        return this.os;
    }

    public int getMediationRitReqType(String str) {
        return TextUtils.equals(str, this.lr) ? this.f22297hd : this.aw;
    }

    public int getMediationRitReqTypeSrc(String str) {
        return TextUtils.equals(str, this.lr) ? this.bm : this.f22299ic;
    }

    public int[] getMinWindowSize() {
        return null;
    }

    public String getMultiCpm() {
        if (isServerBiddingAd()) {
            return getServerBiddingLoadCpm() < 0.0d ? WMConstants.TIMER_STAGE_NONE : String.valueOf(getServerBiddingLoadCpm());
        }
        return String.valueOf(getCpm());
    }

    public String getNetWorkPlatFormCpm() {
        if (isServerBiddingAd()) {
            return getServerBiddingShowCpm() < 0.0d ? WMConstants.TIMER_STAGE_NONE : String.valueOf(getServerBiddingShowCpm());
        }
        return String.valueOf(getCpm());
    }

    public String getOriginLinkId() {
        return this.f22300j;
    }

    public String getOriginPrimeRit() {
        return this.f22303ma;
    }

    public int getOriginType() {
        return this.f22301l;
    }

    public String getPackageName() {
        return this.nu;
    }

    public long getPackageSizeBytes() {
        return this.eo;
    }

    public Map<String, String> getPermissionsMap() {
        return this.qp;
    }

    public String getPermissionsUrl() {
        return this.f22317zb;
    }

    public int getPricingType() {
        return this.f22290b;
    }

    public String getPrivacyAgreement() {
        return this.or;
    }

    public String getRegNumber() {
        return this.az;
    }

    public String getRegUrl() {
        return this.ij;
    }

    public String getReqId() {
        return null;
    }

    @Deprecated
    public int getSdkNum() {
        return this.hq;
    }

    public String getSdkVersion() {
        return this.nt;
    }

    public double getServerBiddingLoadCpm() {
        return this.bx;
    }

    public double getServerBiddingShowCpm() {
        return this.pf;
    }

    public int getShowSort() {
        return this.f22294f;
    }

    public String getSource() {
        return this.gt;
    }

    public Bitmap getSplashBitMap() {
        return null;
    }

    public View getSplashCardView() {
        return null;
    }

    public double getStarRating() {
        return this.rh;
    }

    public String getStore() {
        return this.f22306p;
    }

    public double getStrategyCpm() {
        if (TextUtils.isEmpty(this.qy)) {
            return getCpm();
        }
        try {
            double d10 = Double.parseDouble(this.qy);
            if (d10 > 0.0d && d10 <= 100.0d) {
                return (getCpm() * d10) / 100.0d;
            }
            return getCpm();
        } catch (Exception unused) {
            return getCpm();
        }
    }

    public int getSubAdType() {
        return this.lo;
    }

    public int getSupportRender() {
        return this.f22315y;
    }

    public a getTTAdatperCallback() {
        return this.sp;
    }

    public String getVersionName() {
        return this.cu;
    }

    public t getVideoCoverImage() {
        return null;
    }

    public double getVideoDuration() {
        return 0.0d;
    }

    public int getVideoHeight() {
        return this.f22316z;
    }

    public String getVideoUrl() {
        return null;
    }

    public View getVideoView() {
        return null;
    }

    public int getVideoWidth() {
        return this.yp;
    }

    public String getWinCallback() {
        return this.to;
    }

    public boolean hasAppInfo() {
        if (!TextUtils.isEmpty(this.f22296h) || !TextUtils.isEmpty(this.f22292d) || this.eo > 0 || !TextUtils.isEmpty(this.f22317zb)) {
            return true;
        }
        Map<String, String> map = this.qp;
        return ((map == null || map.size() <= 0) && TextUtils.isEmpty(this.or) && TextUtils.isEmpty(this.cu) && TextUtils.isEmpty(this.cf)) ? false : true;
    }

    public abstract boolean hasDestroyed();

    public boolean hasDislike() {
        return false;
    }

    public void hideSkipBtn() {
    }

    public void hideSkipButton() {
    }

    public boolean isAdnPreload() {
        return false;
    }

    public boolean isCacheSuccess() {
        return this.mm;
    }

    public boolean isClickListenRepeatOnce() {
        if (this.tx) {
            return true;
        }
        this.tx = true;
        return false;
    }

    public boolean isClickListenRepeatPlayAgainOnce() {
        if (this.f22312v) {
            return true;
        }
        this.f22312v = true;
        return false;
    }

    public boolean isClientBiddingAd() {
        return this.f22295g == 1;
    }

    public boolean isCustomAd() {
        return (this instanceof com.byazt.zm.tt) || (this instanceof com.byazt.uj.ve);
    }

    public boolean isExpressAd() {
        return this.yv;
    }

    public boolean isHasShowCallback() {
        return this.yo;
    }

    public boolean isHasShown() {
        return this.pn;
    }

    public boolean isIsCallback() {
        return this.f22308r;
    }

    public boolean isLoadByDexPl() {
        return this.yf;
    }

    public boolean isMultiBiddingAd() {
        return this.f22295g == 3;
    }

    public boolean isNormalAd() {
        return this.f22295g == 0;
    }

    public boolean isPAd() {
        return this.f22295g == 100;
    }

    public final boolean isReady(String str) {
        Integer numIsReadyStatus = isReadyStatus();
        if (numIsReadyStatus.intValue() == 1) {
            return !com.byazt.hk.c.c().c(str, this);
        }
        return numIsReadyStatus.intValue() == 2;
    }

    public Integer isReadyStatus() {
        return 1;
    }

    public boolean isServerBiddingAd() {
        return this.f22295g == 2;
    }

    public boolean isShowListenRepeatOnce() {
        if (this.kk) {
            return true;
        }
        this.kk = true;
        return false;
    }

    public boolean isShowRepeatOnce() {
        if (this.f22307q) {
            return true;
        }
        this.f22307q = true;
        return false;
    }

    public boolean isTimeoutFill() {
        return this.oz;
    }

    public boolean isUseCustomVideo() {
        return this.kp;
    }

    public boolean isUseFromCache() {
        return this.dz;
    }

    public void onDestroy() {
        this.f22291c = null;
        this.tt = null;
        this.ve = null;
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void pauseAppDownload() {
    }

    public void putEventParam(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.jt.put(str, obj);
    }

    public void putEventParams(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.jt.putAll(map);
    }

    public void putExtraMsg(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.mq.put(str, obj);
    }

    public void registerView(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
        c(viewGroup, null);
    }

    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, da daVar, List<View> list4) {
        if (list3 != null) {
            if (list2 == null) {
                list2 = new ArrayList<>();
            }
            list2.addAll(list3);
        }
        c(viewGroup, daVar);
    }

    public void removeSelfFromParent(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent == null || !(parent instanceof ViewGroup)) {
                    return;
                }
                ((ViewGroup) parent).removeView(view);
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    public void render() {
    }

    public void resumeAppDownload() {
    }

    public void setActionText(String str) {
        this.f22302m = str;
    }

    public void setActivityForDownloadApp(Activity activity) {
    }

    public void setAdDescription(String str) {
        this.f22298i = str;
    }

    public void setAdExtra(String str) {
        this.lt = str;
    }

    public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
    }

    public void setAdNetWorkName(String str) {
        this.gx = str;
    }

    public void setAdNetworkSlotId(String str) {
        this.xd = str;
    }

    public void setAdNetworkSlotType(int i10) {
        this.f22295g = i10;
    }

    public void setAdType(int i10) {
        this.zm = i10;
    }

    public void setAid(String str) {
        this.pu = str;
    }

    public void setAppInfoExtra(Map<String, Object> map) {
        this.f22305nb = map;
    }

    public void setAppName(String str) {
        this.f22296h = str;
    }

    public void setAppSize(int i10) {
        this.sv = i10;
    }

    public void setAuthorName(String str) {
        this.f22292d = str;
    }

    public void setCacheSuccess(boolean z10) {
        this.mm = z10;
    }

    public void setCallBack(c cVar) {
        this.is = cVar;
    }

    public void setCanInterruptVideoPlay(boolean z10) {
    }

    public void setCpm(double d10) {
        this.rl = d10;
    }

    public void setCustomAdNetWorkName(String str) {
        this.gy = str;
    }

    public void setDiscount(String str) {
        this.qy = str;
    }

    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
        this.f22313w = cVar;
    }

    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
    }

    public void setDownloadListener(com.byazt.ocd.ve veVar) {
    }

    public void setDrawVideoListener(com.byazt.uz.c cVar) {
    }

    public void setErrorMsg(String str) {
        this.vi = str;
    }

    public void setExchangeRate(String str) {
        this.ny = str;
    }

    public void setExpressAd(boolean z10) {
        this.yv = z10;
    }

    public void setFailCallback(String str) {
        this.tk = str;
    }

    public final void setFillTime(long j10) {
        if (this.vp == 0) {
            this.vp = j10;
        }
    }

    public void setFunctionDescUrl(String str) {
        this.cf = str;
    }

    public void setGMDrawAdListener(com.byazt.fy.c cVar) {
        this.f22289a = cVar;
    }

    public void setGMVideoRewardListener(i iVar) {
        this.f22304n = iVar;
    }

    public void setGmShakeViewListener(n nVar) {
        this.uj = nVar;
    }

    public void setHasShowCallback(boolean z10) {
        this.yo = z10;
    }

    public void setHasShown(boolean z10) {
        this.pn = z10;
    }

    public void setIconUrl(String str) {
        this.f22293da = str;
    }

    public void setIfReuseAds(int i10) {
        this.f22309s = i10;
    }

    public void setImageHeight(int i10) {
        this.f22311u = i10;
    }

    public void setImageMode(int i10) {
        this.gu = i10;
    }

    public void setImageUrl(String str) {
        this.sl = str;
    }

    public void setImageWidth(int i10) {
        this.f22310t = i10;
    }

    public void setImages(List<String> list) {
        if (list != null) {
            this.my.addAll(list);
        }
    }

    public void setInteractionType(int i10) {
        this.gr = i10;
    }

    public void setIsAppDownload(boolean z10) {
        this.md = z10;
    }

    public void setIsCallback(boolean z10) {
        this.f22308r = z10;
    }

    public void setIsRefresh(int i10) {
        this.iu = i10;
    }

    public void setLevelTag(String str) {
        this.kz = str;
    }

    public void setLinkIdFromRealReq(String str) {
        this.lr = str;
    }

    public void setLoadByDexPl(boolean z10) {
        this.yf = z10;
    }

    public void setLoadSort(int i10) {
        this.ir = i10;
    }

    public void setMediaExtraInfo(Map<String, Object> map) {
        if (map != null) {
            this.os.putAll(map);
        }
    }

    public void setMediationRitReqType(int i10) {
        this.aw = i10;
    }

    public void setMediationRitReqTypeFromRealReq(int i10) {
        this.f22297hd = i10;
    }

    public void setMediationRitReqTypeSrc(int i10) {
        this.f22299ic = i10;
    }

    public void setMediationRitReqTypeSrcFromRealReq(int i10) {
        this.bm = i10;
    }

    public void setOriginLinkId(String str) {
        this.f22300j = str;
    }

    public void setOriginPrimeRit(String str) {
        this.f22303ma = str;
    }

    public void setOriginType(int i10) {
        this.f22301l = i10;
    }

    public void setPackageName(String str) {
        this.nu = str;
    }

    public void setPackageSizeBytes(long j10) {
        this.eo = j10;
    }

    public void setPauseIcon(Bitmap bitmap, int i10) {
    }

    public void setPermissionsMap(Map<String, String> map) {
        this.qp = map;
    }

    public void setPermissionsUrl(String str) {
        this.f22317zb = str;
    }

    public void setPricingType(int i10) {
        this.f22290b = i10;
    }

    public void setPrivacyAgreement(String str) {
        this.or = str;
    }

    public void setRating(double d10) {
        this.rh = d10;
    }

    public void setRegNumber(String str) {
        this.az = str;
    }

    public void setRegUrl(String str) {
        this.ij = str;
    }

    public void setRewardAdPlayAgainController(Object obj) {
    }

    public void setRit(String str) {
        this.hj = str;
    }

    public void setSdkNum(int i10) {
        this.hq = i10;
    }

    public void setSdkVersion(String str) {
        this.nt = str;
    }

    public void setServerBiddingLoadCpm(double d10) {
        this.bx = d10;
    }

    public void setServerBiddingShowCpm(double d10) {
        this.pf = d10;
    }

    public void setShowSort(int i10) {
        this.f22294f = i10;
    }

    public void setSlideIntervalTime(int i10) {
    }

    public void setSource(String str) {
        this.gt = str;
    }

    public void setStore(String str) {
        this.f22306p = str;
    }

    public void setSubAdType(int i10) {
        this.lo = i10;
    }

    public void setSupportRender(int i10) {
        this.f22315y = i10;
    }

    public void setTTAdAppDownloadListener(final com.byazt.zh.tt ttVar) {
        if (ttVar != null) {
            this.ve = new com.byazt.zh.tt() { // from class: com.byazt.yl.ve.1
                @Override // com.byazt.zh.tt
                public void c() {
                    com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.yl.ve.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ttVar.c();
                        }
                    });
                }

                @Override // com.byazt.zh.tt
                public void tt() {
                    com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.yl.ve.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ttVar.tt();
                        }
                    });
                }

                @Override // com.byazt.zh.tt
                public void c(final long j10, final long j11, final int i10, final int i11, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.yl.ve.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            ttVar.c(j10, j11, i10, i11, str, str2);
                        }
                    });
                }

                @Override // com.byazt.zh.tt
                public void tt(final long j10, final long j11, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.yl.ve.1.5
                        @Override // java.lang.Runnable
                        public void run() {
                            ttVar.tt(j10, j11, str, str2);
                        }
                    });
                }

                @Override // com.byazt.zh.tt
                public void c(final long j10, final long j11, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.yl.ve.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            ttVar.c(j10, j11, str, str2);
                        }
                    });
                }

                @Override // com.byazt.zh.tt
                public void c(final long j10, @Nullable final String str, @Nullable final String str2) {
                    com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.yl.ve.1.6
                        @Override // java.lang.Runnable
                        public void run() {
                            ttVar.c(j10, str, str2);
                        }
                    });
                }

                @Override // com.byazt.zh.tt
                public void c(@Nullable final String str, @Nullable final String str2) {
                    com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.yl.ve.1.7
                        @Override // java.lang.Runnable
                        public void run() {
                            ttVar.c(str, str2);
                        }
                    });
                }
            };
        }
    }

    public void setTTAdatperCallback(a aVar) {
        this.sp = aVar;
    }

    public void setTTNativeAdListener(com.byazt.me.tt ttVar) {
        this.f22291c = ttVar;
    }

    public void setTTVideoListener(x xVar) {
        this.tt = xVar;
    }

    public void setTimeoutFill(boolean z10) {
        this.oz = z10;
    }

    public void setTitle(String str) {
        this.f22314x = str;
    }

    public void setUseCustomVideo(boolean z10) {
        this.kp = z10;
    }

    public void setUseFromCache(boolean z10) {
        this.dz = z10;
    }

    public void setVersionName(String str) {
        this.cu = str;
    }

    public void setVideoAdListener(com.byazt.ft.ve veVar) {
    }

    public void setVideoHeight(int i10) {
        this.f22316z = i10;
    }

    public void setVideoWidth(int i10) {
        this.yp = i10;
    }

    public void setWinCallback(String str) {
        this.to = str;
    }

    public void showAd(Activity activity, Object obj, String str) {
    }

    public void showMinWindow(Rect rect, a aVar) {
    }

    public void showSplashAd(ViewGroup viewGroup) {
    }

    public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
    }

    public void splashMinWindowAnimationFinish() {
    }

    public void unregisterView() {
    }

    public void uploadDislikeEvent(String str) {
    }

    @Override // java.lang.Comparable
    public int compareTo(ve veVar) {
        if (veVar == null || this.ir > veVar.getLoadSort()) {
            return 1;
        }
        if (this.ir < veVar.getLoadSort()) {
            return -1;
        }
        if (this.f22294f > veVar.getShowSort()) {
            return 1;
        }
        return this.f22294f < veVar.getShowSort() ? -1 : 0;
    }

    public sp getDislikeDialog(Dialog dialog, Integer[] numArr) {
        return null;
    }

    public void putExtraMsg(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.mq.putAll(map);
    }

    private void c(@NonNull ViewGroup viewGroup) {
        try {
            if (viewGroup.getChildCount() == 0 || getAdNetworkPlatformId() == 3) {
                return;
            }
            int i10 = 0;
            if (viewGroup.getChildAt(0) instanceof ViewGroup) {
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
                if (MediationConstant.TT_GDT_NATIVE_ROOT_VIEW_TAG.equals(viewGroup2.getTag(R.id.tt_mediation_gdt_developer_view_root_tag_key)) || MediationConstant.TT_GDT_NATIVE_ROOT_VIEW_TAG.equals(viewGroup2.getTag(2114387452))) {
                    viewGroup.removeView(viewGroup2);
                    while (i10 < viewGroup2.getChildCount()) {
                        View childAt = viewGroup2.getChildAt(i10);
                        if (childAt == null || !(MediationConstant.TT_GDT_NATIVE_VIEW_TAG.equals(childAt.getTag(R.id.tt_mediation_gdt_developer_view_tag_key)) || MediationConstant.TT_GDT_NATIVE_VIEW_TAG.equals(childAt.getTag(2114387451)))) {
                            i10++;
                        } else {
                            viewGroup2.removeView(childAt);
                            viewGroup.addView(childAt, childAt.getLayoutParams());
                        }
                    }
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }
}
