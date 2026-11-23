package com.sigmob.sdk.base.models;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
import com.czhj.wire.Wire;
import com.czhj.wire.okio.ByteString;
import com.sigmob.sdk.b;
import com.sigmob.sdk.base.common.ag;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.common.h;
import com.sigmob.sdk.base.common.i;
import com.sigmob.sdk.base.common.n;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AdPrivacy;
import com.sigmob.sdk.base.models.rtb.AdSetting;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.models.rtb.ClickAreaSetting;
import com.sigmob.sdk.base.models.rtb.Color;
import com.sigmob.sdk.base.models.rtb.FrequencyControl;
import com.sigmob.sdk.base.models.rtb.InterstitialSetting;
import com.sigmob.sdk.base.models.rtb.LinkAction;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.NativeAdSetting;
import com.sigmob.sdk.base.models.rtb.ResponseAsset;
import com.sigmob.sdk.base.models.rtb.ResponseAssetImage;
import com.sigmob.sdk.base.models.rtb.ResponseAssetVideo;
import com.sigmob.sdk.base.models.rtb.ResponseNativeAd;
import com.sigmob.sdk.base.models.rtb.RvAdSetting;
import com.sigmob.sdk.base.models.rtb.SingleNativeAdSetting;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import com.sigmob.sdk.base.models.rtb.SplashAdSetting;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.sdk.base.models.rtb.Tracking;
import com.sigmob.sdk.base.models.rtb.WXProgramRes;
import com.sigmob.sdk.base.models.rtb.Widget;
import com.sigmob.sdk.base.utils.o;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.sdk.base.views.l;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.nativead.e;
import com.sigmob.sdk.videoAd.d;
import com.sigmob.windad.natives.AdAppInfo;
import java.io.File;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class BaseAdUnit implements Serializable {
    private static final String TAG = "BaseAdUnit";
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private Ad f79507ad;
    private transient AdAppInfo adAppInfo;
    private transient i adConfig;
    private int adHeight;
    private LoadAdRequest adRequest;
    private HashMap<String, List<ah>> adTrackersMap;
    private int adWidth;
    private String ad_scene_desc;
    private String ad_scene_id;
    private String ad_source_channel;
    private int ad_type;
    private String adslot_id;
    private String adx_id;
    private String apkName;
    private String apkPackageName;
    private String bid_token;
    public BiddingResponse bidding_response;
    private String camp_id;
    private ClickCommon clickCommon;
    private long create_time;
    private String crid;
    private transient Uri deeplinkUri;
    private Long downloadId;
    private transient f downloadTask;
    private String downloadUrl;
    private List<d> download_trackers;
    private String endcard_md5;
    public int expiration_time;
    private transient List<SigImage> imageUrlList;
    private boolean isHalfInterstitial;
    private String landUrl;
    private String load_id;
    private AndroidMarket mCustomAndroidMarket;
    private String mCustomDeeplink;
    private String mCustomLandPageUrl;
    private transient HashMap<String, Integer> mRedirectCountMap;
    private transient ag mSessionManager;
    private SigMacroCommon macroCommon;
    private int mraidInteractionType;
    private SigVideo nativeVideo;
    private String originVid;
    private int requestSceneType;
    private String request_id;
    private String rv_callback_url;
    private Map<String, String> saasOptions;
    public Template scene;
    public SlotAdSetting slotAdSetting;
    private String traceId;
    public String uid;
    private String uuid;
    private VideoStatusCommon videoCommon;
    private String video_md5;
    private double adPercent = -1.0d;
    private double realAdPercent = -1.0d;
    private boolean useDownloadedApk = false;
    private boolean isDislikeReported = false;
    private boolean record = true;
    private boolean catchVideo = false;
    private final Map<String, Integer> mMaxRedirectCountMap = new HashMap();

    public static BaseAdUnit adUnit(Ad ad2, String request_id, LoadAdRequest adRequest, SlotAdSetting slotAdSetting, Template scene, String uid, Integer expiration_time, BiddingResponse bidding_response) {
        List<MaterialMeta> list;
        MaterialMeta materialMeta;
        ByteString byteString;
        ResponseNativeAd nativeAd;
        BaseAdUnit baseAdUnit = null;
        if (ad2 == null || (list = ad2.materials) == null || list.isEmpty() || (materialMeta = ad2.materials.get(0)) == null) {
            return null;
        }
        try {
            BaseAdUnit baseAdUnit2 = new BaseAdUnit();
            try {
                baseAdUnit2.create_time = System.currentTimeMillis();
                baseAdUnit2.adslot_id = ad2.adslot_id;
                baseAdUnit2.ad_type = ad2.ad_type.intValue();
                baseAdUnit2.f79507ad = ad2;
                baseAdUnit2.crid = ad2.crid;
                baseAdUnit2.camp_id = ad2.camp_id;
                baseAdUnit2.request_id = request_id;
                baseAdUnit2.endcard_md5 = materialMeta.endcard_md5;
                baseAdUnit2.video_md5 = materialMeta.video_md5;
                baseAdUnit2.load_id = adRequest.getLoadId();
                baseAdUnit2.ad_source_channel = ad2.ad_source_channel;
                if ((materialMeta.creative_type.intValue() == n.CreativeTypeVideo_Html_Snippet.a() || materialMeta.creative_type.intValue() == n.CreativeTypeVideo_transparent_html.a()) && (byteString = materialMeta.html_snippet) != null) {
                    byteString.size();
                }
                baseAdUnit2.slotAdSetting = slotAdSetting;
                baseAdUnit2.adRequest = adRequest;
                baseAdUnit2.scene = scene;
                baseAdUnit2.uid = uid;
                if (expiration_time != null) {
                    baseAdUnit2.expiration_time = expiration_time.intValue();
                }
                BiddingResponse biddingResponse = ad2.bidding_response;
                if (biddingResponse != null) {
                    bidding_response = biddingResponse;
                }
                baseAdUnit2.bidding_response = bidding_response;
                baseAdUnit2.useDownloadedApk = ((Boolean) Wire.get(slotAdSetting.use_downloaded_apk, Boolean.FALSE)).booleanValue();
                initAdTrackerMap(baseAdUnit2);
                if (ad2.ad_track_macro != null) {
                    baseAdUnit2.getMacroCommon().setServerMacroMap(ad2.ad_track_macro);
                }
                if (baseAdUnit2.ad_type != 5 || (nativeAd = baseAdUnit2.getNativeAd()) == null) {
                    return baseAdUnit2;
                }
                if (nativeAd.type.intValue() == 1) {
                    baseAdUnit2.getNativeVideo();
                    return baseAdUnit2;
                }
                baseAdUnit2.getImageUrlList();
                return baseAdUnit2;
            } catch (Throwable th) {
                th = th;
                baseAdUnit = baseAdUnit2;
                SigmobLog.e("adUnit error", th);
                return baseAdUnit;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean checkFileMD5(String path, String md5) {
        String strFileMd5 = Md5Util.fileMd5(path);
        SigmobLog.d("path: [ " + path + " ] calc [ " + strFileMd5 + " ] origin " + md5);
        return strFileMd5 != null && strFileMd5.equalsIgnoreCase(md5);
    }

    public static List<ah> createTrackersForUrls(List<String> urls, String event, String requestId, Integer retryNum) {
        Preconditions.NoThrow.checkNotNull(urls);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = urls.iterator();
        while (it2.hasNext()) {
            ah ahVar = new ah(it2.next(), event, requestId);
            ahVar.setRetryNum(retryNum);
            arrayList.add(ahVar);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getAppSize() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy != null && (map = adPrivacy.privacy_template_info) != null) {
            String str = map.get("app_size");
            if (t.a((CharSequence) str)) {
                return 0;
            }
            try {
                return Integer.parseInt(str);
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static long getSerialVersionUID() {
        return 1L;
    }

    public static String getTAG() {
        return TAG;
    }

    private static void initAdTrackerMap(BaseAdUnit adUnit) {
        List<Tracking> ad_tracking = adUnit.getAd_tracking();
        adUnit.adTrackersMap = new HashMap<>();
        for (Tracking tracking : ad_tracking) {
            String str = tracking.tracking_event_type;
            adUnit.adTrackersMap.put(str, createTrackersForUrls(tracking.tracking_url, str, adUnit.request_id, Integer.valueOf(adUnit.getTrackingRetryNum())));
        }
    }

    public void addRedirectCount(Uri uri) {
        if (uri == null || uri.getScheme() == null) {
            return;
        }
        String str = uri.getScheme() + ":" + uri.getHost();
        int redirectCount = getRedirectCount(uri) + 1;
        synchronized (this) {
            if (this.mRedirectCountMap == null) {
                this.mRedirectCountMap = new HashMap<>();
            }
            this.mRedirectCountMap.put(str, Integer.valueOf(redirectCount));
        }
    }

    public Boolean allowClickToAutoClose() {
        InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
        if (newInterstitialSetting == null) {
            return null;
        }
        return newInterstitialSetting.click_close_ad;
    }

    public Integer allowCountdownEndsClose() {
        InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
        if (newInterstitialSetting == null) {
            return null;
        }
        return newInterstitialSetting.seconds_close_ad;
    }

    public boolean canInstall(String apkName) {
        boolean z10 = (!t.b(getApkMd5()) && getDownloadTask() == null && getDownloadId() == null) ? false : true;
        if (canUseDownloadApk() && !t.a((CharSequence) apkName) && z10) {
            Context contextE = b.e();
            File file = new File(o.a(contextE), apkName);
            if (file.exists()) {
                return w.b(ClientMetadata.getPackageInfoWithUri(contextE, file.getAbsolutePath()));
            }
        }
        return false;
    }

    public boolean canOpen() {
        return com.sigmob.sdk.base.o.a().b(getPackageName()).booleanValue();
    }

    public boolean canUseDownloadApk() {
        return this.useDownloadedApk;
    }

    public boolean checkEndCardZipValid() {
        if (t.a((CharSequence) getEndcard_url()) || t.a((CharSequence) this.endcard_md5)) {
            return true;
        }
        return checkFileMD5(getEndCardZipPath(), getEndcard_md5());
    }

    public boolean checkVideoValid() {
        if (t.a((CharSequence) getVideo_url()) || t.a((CharSequence) this.video_md5)) {
            return true;
        }
        return checkFileMD5(getVideoPath(), getVideo_OriginMD5());
    }

    public void destroy() {
        if (w.b(this.adConfig)) {
            this.adConfig.k();
            this.adConfig = null;
        }
        if (w.b(this.mSessionManager)) {
            this.mSessionManager.a();
        }
    }

    public void dislikeReport() {
        this.isDislikeReported = true;
    }

    public boolean enableDetectPkg() {
        return com.sigmob.sdk.base.o.a().N().booleanValue();
    }

    public boolean enableDevToRender(int index) {
        Widget widget = getWidget(index);
        if (widget == null) {
            return false;
        }
        return widget.enable_developer_render.booleanValue();
    }

    public Boolean enableSmallWindow() {
        Ad ad2 = getAd();
        if (ad2 == null) {
            return null;
        }
        return ad2.enable_small_window;
    }

    public void enableUseDownloadApk(boolean enable) {
        this.useDownloadedApk = enable;
    }

    public boolean enableWidgetInteraction() {
        NativeAdSetting nativeAdSetting = getNativeAdSetting();
        if (nativeAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(nativeAdSetting.enable_advanced_interaction, Boolean.FALSE)).booleanValue();
    }

    public boolean enable_full_click() {
        SplashAdSetting splashAdSetting = getSplashAdSetting();
        if (splashAdSetting == null) {
            return false;
        }
        return splashAdSetting.enable_full_click.booleanValue();
    }

    public boolean expiredAdCanReload() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(adSetting.can_expire_reload, Boolean.FALSE)).booleanValue();
    }

    public int expiredAdReloadNum() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.expire_reload_count.intValue();
    }

    public Integer getAcDelayMs() {
        SplashAdSetting splashAdSetting;
        if (getAd_type() != 2 || (splashAdSetting = getSplashAdSetting()) == null) {
            return null;
        }
        return splashAdSetting.ac_delay_ms;
    }

    public Ad getAd() {
        return this.f79507ad;
    }

    public AdAppInfo getAdAppInfo() {
        AdPrivacy adPrivacy = getadPrivacy();
        if (this.adAppInfo == null && adPrivacy != null) {
            try {
                this.adAppInfo = new AdAppInfo() { // from class: com.sigmob.sdk.base.models.BaseAdUnit.1
                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getAppName() {
                        return BaseAdUnit.this.getPrivacyAppName();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public int getAppSize() {
                        return BaseAdUnit.this.getAppSize();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getAuthorName() {
                        return BaseAdUnit.this.getCompanyName();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getDescription() {
                        return BaseAdUnit.this.getDescription();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getDescriptionUrl() {
                        return BaseAdUnit.this.getDescriptionUrl();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPermissions() {
                        return BaseAdUnit.this.getPermissions();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPermissionsUrl() {
                        return BaseAdUnit.this.getPermissionsUrl();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPrivacyAgreement() {
                        return BaseAdUnit.this.getPrivacyAgreement();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getPrivacyAgreementUrl() {
                        return BaseAdUnit.this.getPrivacyAgreementUrl();
                    }

                    @Override // com.sigmob.windad.natives.AdAppInfo
                    public String getVersionName() {
                        return BaseAdUnit.this.getAppVersion();
                    }

                    public String toString() {
                        return String.format(Locale.getDefault(), "appName %s \n AuthorName %s \n  versionName %s \n permissionsUrl %s \n permissions %s \nprivacyAgreementUrl %s \n privacyAgreement %s \n descriptionUrl %s \n description %s \n  appsize %d", getAppName(), getAuthorName(), getVersionName(), getPermissionsUrl(), getPermissions(), getPrivacyAgreementUrl(), getPrivacyAgreement(), getDescriptionUrl(), getDescription(), Integer.valueOf(getAppSize()));
                    }
                };
            } catch (Throwable unused) {
            }
        }
        return this.adAppInfo;
    }

    public i getAdConfig() {
        i iVarD;
        if (this.adConfig == null) {
            switch (getAd_type()) {
                case 1:
                case 4:
                    iVarD = com.sigmob.sdk.videoAd.a.d(this);
                    break;
                case 2:
                    iVarD = com.sigmob.sdk.splash.a.d(this);
                    break;
                case 3:
                case 6:
                    iVarD = com.sigmob.sdk.newInterstitial.d.d(this);
                    break;
                case 5:
                    iVarD = e.d(this);
                    break;
            }
            this.adConfig = iVarD;
            return iVarD;
        }
        return this.adConfig;
    }

    public Integer getAdExpiredTime() {
        Integer num;
        Ad ad2 = this.f79507ad;
        return Integer.valueOf((ad2 == null || (num = ad2.expired_time) == null) ? 0 : num.intValue() * 1000);
    }

    public List<LinkAction> getAdLinkActions() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return null;
        }
        return adSetting.link_actions;
    }

    public String getAdLogo() {
        return getAd_source_logo();
    }

    public double getAdPercent() {
        double d10 = this.adPercent;
        if (d10 > 0.0d) {
            return d10;
        }
        double d11 = this.realAdPercent;
        if (d11 > 0.0d) {
            return d11;
        }
        return 1.7777777910232544d;
    }

    public File getAdPrivacyTemplateFile() {
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null) {
            return null;
        }
        String str = adPrivacy.privacy_template_url;
        if (t.a((CharSequence) str)) {
            return null;
        }
        String strMd5 = Md5Util.md5(str);
        return o.a(o.d(o.f79756b), strMd5 + ".html");
    }

    public LoadAdRequest getAdRequest() {
        return this.adRequest;
    }

    public AdSetting getAdSetting() {
        Ad ad2 = this.f79507ad;
        if (ad2 == null) {
            return null;
        }
        return ad2.ad_setting;
    }

    public List<ah> getAdTracker(String event) {
        HashMap<String, List<ah>> map = this.adTrackersMap;
        if (map == null) {
            return null;
        }
        return map.get(event);
    }

    public String getAd_scene_desc() {
        return this.ad_scene_desc;
    }

    public String getAd_scene_id() {
        return this.ad_scene_id;
    }

    public String getAd_source_channel() {
        return this.ad_source_channel;
    }

    public String getAd_source_logo() {
        Ad ad2 = this.f79507ad;
        if (ad2 == null) {
            return null;
        }
        return ad2.ad_source_logo;
    }

    public List<Tracking> getAd_tracking() {
        Ad ad2 = this.f79507ad;
        if (ad2 == null) {
            return null;
        }
        return ad2.ad_tracking;
    }

    public int getAd_type() {
        return this.ad_type;
    }

    public String getAdslot_id() {
        return this.adslot_id;
    }

    public String getAdxEncPrice() {
        BiddingResponse biddingResponse = this.bidding_response;
        return biddingResponse == null ? "" : biddingResponse.price_for_ssp_enc;
    }

    public int getAdxPrice() {
        BiddingResponse biddingResponse = this.bidding_response;
        if (biddingResponse == null) {
            return 0;
        }
        return biddingResponse.price_for_ssp.intValue();
    }

    public String getAdx_id() {
        return this.adx_id;
    }

    public AndroidMarket getAndroidMarket() {
        MaterialMeta material = getMaterial();
        AndroidMarket androidMarket = material == null ? null : material.android_market;
        return (androidMarket == null && w.b(this.mCustomAndroidMarket)) ? this.mCustomAndroidMarket : androidMarket;
    }

    public int getApkDownloadType() {
        SlotAdSetting slotAdSetting = getSlotAdSetting();
        if (slotAdSetting == null) {
            return 0;
        }
        return slotAdSetting.apk_download_type.intValue();
    }

    public String getApkMd5() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.apk_md5;
    }

    public String getApkName() {
        return this.apkName;
    }

    public String getApkPackageName() {
        return this.apkPackageName;
    }

    public String getAppName() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.app_name;
    }

    public String getAppVersion() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_version");
    }

    public int getBP() {
        Ad ad2 = this.f79507ad;
        if (ad2 == null) {
            return 0;
        }
        return ad2.bid_price.intValue();
    }

    public int getBidEcpm() {
        BiddingResponse biddingResponse = this.bidding_response;
        if (biddingResponse == null) {
            return 0;
        }
        return biddingResponse.ecpm.intValue();
    }

    public String getBid_token() {
        return this.bid_token;
    }

    public int getButtonColor() {
        Color color;
        MaterialMeta material = getMaterial();
        return (material == null || (color = material.button_color) == null) ? android.graphics.Color.parseColor("#FF5A57") : android.graphics.Color.argb((int) (color.alpha.floatValue() * 255.0f), material.button_color.red.intValue(), material.button_color.green.intValue(), material.button_color.blue.intValue());
    }

    public String getCTAText() {
        MaterialMeta material = getMaterial();
        String str = material == null ? null : material.button_text;
        int interactionType = getInteractionType();
        if (t.b(str)) {
            return str;
        }
        return interactionType == 2 ? "立即下载" : "查看详情";
    }

    public String getCamp_id() {
        return this.camp_id;
    }

    public int getChargePercent() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.charge_percent.intValue();
    }

    public int getChargeSeconds() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.charge_seconds.intValue();
    }

    public ClickAreaSetting getClickAreaSetting() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return null;
        }
        ClickAreaSetting clickAreaSetting = rvAdSetting.click_setting;
        if (clickAreaSetting != null) {
            return clickAreaSetting;
        }
        ClickAreaSetting.Builder builder = new ClickAreaSetting.Builder();
        builder.bottom = Float.valueOf(0.1f);
        builder.right = Float.valueOf(0.1f);
        builder.top = Float.valueOf(0.1f);
        builder.left = Float.valueOf(0.1f);
        return builder.build();
    }

    public ClickCommon getClickCommon() {
        if (this.clickCommon == null) {
            this.clickCommon = new ClickCommon();
        }
        return this.clickCommon;
    }

    public int getClickType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.click_type.intValue();
    }

    public String getCloseCardHtmlData() {
        ByteString byteString;
        MaterialMeta material = getMaterial();
        if (material == null || (byteString = material.closecard_html_snippet) == null || byteString.size() < 10) {
            return null;
        }
        return material.closecard_html_snippet.utf8();
    }

    public String getCompanyName() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_company");
    }

    public int getConfirmDialog() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.confirm_dialog.intValue();
    }

    public long getCreate_time() {
        return this.create_time;
    }

    public l.b getCreativeResourceType() {
        int creativeType = getCreativeType();
        if (t.b(getEndcard_url()) && (creativeType == n.CreativeTypeVideo_Tar.a() || creativeType == n.CreativeTypeVideo_Tar_Companion.a())) {
            return l.b.NATIVE_RESOURCE;
        }
        if (t.b(getHtmlData())) {
            return l.b.HTML_RESOURCE;
        }
        return t.b(getHtmlUrl()) ? l.b.URL_RESOURCE : l.b.NATIVE_RESOURCE;
    }

    public String getCreativeTitle() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.creative_title;
    }

    public int getCreativeType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.creative_type.intValue();
    }

    public String getCrid() {
        return this.crid;
    }

    public Uri getDeeplinkUri() {
        return this.deeplinkUri;
    }

    public String getDeeplinkUrl() {
        MaterialMeta material = getMaterial();
        String str = material == null ? null : material.deeplink_url;
        return (t.a((CharSequence) str) && t.b(this.mCustomDeeplink)) ? this.mCustomDeeplink : str;
    }

    public String getDesc() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.desc;
    }

    public String getDescription() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_func");
    }

    public String getDescriptionUrl() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_func_url");
    }

    public boolean getDisableAutoLoad() {
        Boolean bool;
        if (this.ad_type == 6) {
            InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
            if (newInterstitialSetting == null) {
                return false;
            }
            bool = newInterstitialSetting.disable_auto_load;
        } else {
            RvAdSetting rvAdSetting = getRvAdSetting();
            if (rvAdSetting == null) {
                return false;
            }
            bool = rvAdSetting.disable_auto_load;
        }
        return bool.booleanValue();
    }

    public int getDisplay_orientation() {
        Ad ad2 = getAd();
        if (ad2 == null) {
            return 0;
        }
        return ad2.display_orientation.intValue();
    }

    public Long getDownloadId() {
        return this.downloadId;
    }

    public List<d> getDownloadQuarterTrack() {
        return this.download_trackers;
    }

    public f getDownloadTask() {
        return this.downloadTask;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public int getDuration() {
        int endTime = getEndTime();
        if (endTime > 0) {
            return endTime * 1000;
        }
        return 33333;
    }

    public boolean getEnableDeeplinkAndLandingPage() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(slotAdSetting.enable_deeplink_and_landing_page, Boolean.FALSE)).booleanValue();
    }

    public String getEndCardDirPath() {
        return o.b() + String.format("/%s/", getEndcard_md5());
    }

    public String getEndCardImageUrl() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.endcard_image_src;
    }

    public String getEndCardIndexPath() {
        return getEndCardDirPath() + "endcard.html";
    }

    public String getEndCardZipPath() {
        return o.b() + String.format("/%s.tgz", this.endcard_md5);
    }

    public String getEndCard_OriginMD5() {
        return this.endcard_md5;
    }

    public int getEndTime() {
        RvAdSetting rvAdSetting;
        if (this.ad_type == 6 || (rvAdSetting = getRvAdSetting()) == null) {
            return 0;
        }
        return rvAdSetting.end_time.intValue();
    }

    public int getEndcardCloseImage() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.endcard_close_image.intValue();
    }

    public String getEndcard_md5() {
        return t.b(this.endcard_md5) ? this.endcard_md5 : Md5Util.md5(getCrid());
    }

    public String getEndcard_url() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.endcard_url;
    }

    public float getFinishedTime() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 1.0f;
        }
        return rvAdSetting.finished.floatValue();
    }

    public int getFloor() {
        NativeAdSetting nativeAdSetting = getNativeAdSetting();
        if (nativeAdSetting == null) {
            return 0;
        }
        return ((Integer) Wire.get(nativeAdSetting.media_expected_floor, 0)).intValue();
    }

    public List<FrequencyControl> getFrequencyControl() {
        Ad ad2;
        if (t.b(this.bid_token) || (ad2 = getAd()) == null) {
            return null;
        }
        return ad2.frequency_control;
    }

    public boolean getFullClickOnVideo() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return false;
        }
        return rvAdSetting.full_click_on_video.booleanValue();
    }

    public String getHtmlData() {
        ByteString byteString;
        MaterialMeta material = getMaterial();
        if (material == null || (byteString = material.html_snippet) == null || byteString.size() < 10) {
            return null;
        }
        return material.html_snippet.utf8();
    }

    public String getHtmlUrl() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.html_url;
    }

    public String getIconUrl() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.icon_url;
    }

    public List<SigImage> getImageUrlList() {
        ResponseNativeAd nativeAd = getNativeAd();
        if (this.imageUrlList == null) {
            this.imageUrlList = new ArrayList();
            if (nativeAd == null || nativeAd.type.intValue() == 1) {
                return this.imageUrlList;
            }
            Iterator<ResponseAsset> it2 = nativeAd.assets.iterator();
            while (it2.hasNext()) {
                ResponseAssetImage responseAssetImage = it2.next().image;
                if (responseAssetImage != null) {
                    SigImage sigImage = new SigImage(responseAssetImage.url, responseAssetImage.f79511w.intValue(), responseAssetImage.f79510h.intValue());
                    if (this.adPercent < 0.0d && responseAssetImage.f79511w.intValue() > 0 && responseAssetImage.f79510h.intValue() > 0) {
                        this.adPercent = (responseAssetImage.f79511w.intValue() * 1.0f) / responseAssetImage.f79510h.intValue();
                    }
                    this.imageUrlList.add(sigImage);
                }
            }
        }
        return this.imageUrlList;
    }

    public int getInteractionType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 1;
        }
        return material.interaction_type.intValue();
    }

    public boolean getInvisibleAdLabel() {
        RvAdSetting rvAdSetting;
        Boolean bool;
        int ad_type = getAd_type();
        if (ad_type == 2) {
            SplashAdSetting splashAdSetting = getSplashAdSetting();
            if (splashAdSetting == null) {
                return false;
            }
            bool = splashAdSetting.invisible_ad_label;
        } else {
            if ((ad_type != 1 && ad_type != 4) || (rvAdSetting = getRvAdSetting()) == null) {
                return false;
            }
            bool = rvAdSetting.invisible_ad_label;
        }
        return bool.booleanValue();
    }

    public int getIsMute() {
        if (this.ad_type == 6) {
            InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
            if (newInterstitialSetting == null) {
                return 0;
            }
            return newInterstitialSetting.if_mute.intValue();
        }
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.if_mute.intValue();
    }

    public String getLandUrl() {
        return this.landUrl;
    }

    public String getLanding_page() {
        MaterialMeta material = getMaterial();
        String str = material == null ? null : material.landing_page;
        return (t.a((CharSequence) str) && t.b(this.mCustomLandPageUrl)) ? this.mCustomLandPageUrl : str;
    }

    public String getLoad_id() {
        return this.load_id;
    }

    public SigMacroCommon getMacroCommon() {
        if (this.macroCommon == null) {
            this.macroCommon = new SigMacroCommon();
            String video_url = getVideo_url();
            if (t.b(video_url)) {
                try {
                    String strEncode = URLEncoder.encode(video_url, "UTF-8");
                    if (t.b(strEncode)) {
                        this.macroCommon.addMarcoKey(SigMacroCommon._VURL_, strEncode);
                    }
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return this.macroCommon;
    }

    public String getMainImage() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.image_src;
    }

    public List<String> getMarketPackageNameList() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.market_package_name;
    }

    public MaterialMeta getMaterial() {
        List<MaterialMeta> list;
        Ad ad2 = this.f79507ad;
        if (ad2 == null || (list = ad2.materials) == null || list.isEmpty()) {
            return null;
        }
        return this.f79507ad.materials.get(0);
    }

    public int getMraidInteractionType() {
        return this.mraidInteractionType;
    }

    public ResponseNativeAd getNativeAd() {
        List<MaterialMeta> list;
        Ad ad2 = this.f79507ad;
        if (ad2 == null || (list = ad2.materials) == null || list.isEmpty()) {
            return null;
        }
        return this.f79507ad.materials.get(0).native_ad;
    }

    public NativeAdSetting getNativeAdSetting() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.native_setting;
    }

    public SigVideo getNativeVideo() {
        ResponseNativeAd nativeAd = getNativeAd();
        if (this.nativeVideo == null) {
            if (nativeAd == null) {
                return null;
            }
            if (nativeAd.type.intValue() == 1) {
                for (ResponseAsset responseAsset : nativeAd.assets) {
                    ResponseAssetVideo responseAssetVideo = responseAsset.video;
                    if (responseAssetVideo != null) {
                        if (this.nativeVideo == null) {
                            this.nativeVideo = new SigVideo();
                        }
                        SigVideo sigVideo = this.nativeVideo;
                        sigVideo.url = responseAssetVideo.url;
                        sigVideo.height = responseAssetVideo.f79514h.intValue();
                        this.nativeVideo.width = responseAssetVideo.f79515w.intValue();
                        if (this.adPercent < 0.0d && responseAssetVideo.f79514h.intValue() > 0 && responseAssetVideo.f79515w.intValue() > 0) {
                            this.adPercent = (responseAssetVideo.f79515w.intValue() * 1.0f) / responseAssetVideo.f79514h.intValue();
                        }
                    }
                    ResponseAssetImage responseAssetImage = responseAsset.image;
                    if (responseAssetImage != null) {
                        if (this.nativeVideo == null) {
                            this.nativeVideo = new SigVideo();
                        }
                        this.nativeVideo.thumbUrl = responseAssetImage.url;
                    }
                }
            }
        }
        return this.nativeVideo;
    }

    public InterstitialSetting getNewInterstitialSetting() {
        SlotAdSetting slotAdSetting = getSlotAdSetting();
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.interstitial_setting;
    }

    public String getOriginVid() {
        return this.originVid;
    }

    public String getPackageName() {
        return t.a((CharSequence) this.apkPackageName) ? getProductId() : this.apkPackageName;
    }

    public String getPermissions() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_permission");
    }

    public String getPermissionsUrl() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_permission_url");
    }

    public int getPlayMode() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.play_mode.intValue();
    }

    public String getPrivacyAgreement() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_privacy_text");
    }

    public String getPrivacyAgreementUrl() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_privacy_url");
    }

    public String getPrivacyAppName() {
        Map<String, String> map;
        AdPrivacy adPrivacy = getadPrivacy();
        if (adPrivacy == null || (map = adPrivacy.privacy_template_info) == null) {
            return null;
        }
        return map.get("app_name");
    }

    public String getProductId() {
        Ad ad2 = getAd();
        if (ad2 == null) {
            return null;
        }
        return ad2.product_id;
    }

    public String getProxyVideoUrl() {
        String video_url = getVideo_url();
        return t.a((CharSequence) video_url) ? video_url : h.d().getProxyUrl(video_url);
    }

    public int getQuickAppMaxRedirectCount() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.max_redirect_count.intValue();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0051 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:23:0x0053 A[Catch: all -> 0x0059, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:8:0x000b, B:12:0x002d, B:14:0x0033, B:15:0x003b, B:23:0x0053, B:16:0x003e, B:18:0x0044, B:19:0x004b), top: B:31:0x0004 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x0051, please report this as an issue */
    public synchronized int getRedirectCount(Uri uri) {
        Integer num;
        Object orDefault;
        if (uri != null) {
            if (uri.getScheme() != null) {
                String str = uri.getScheme() + ":" + uri.getHost();
                HashMap<String, Integer> map = this.mRedirectCountMap;
                if (map == null) {
                    return 0;
                }
                if (Build.VERSION.SDK_INT < 24) {
                    if (map.containsKey(str)) {
                        orDefault = this.mRedirectCountMap.get(str);
                    } else {
                        num = 0;
                    }
                    if (num == null) {
                        return 0;
                    }
                    return num.intValue();
                }
                orDefault = map.getOrDefault(str, 0);
                num = (Integer) orDefault;
                if (num == null) {
                    return 0;
                }
                return num.intValue();
            }
        }
        return 0;
    }

    public String getRequestId() {
        return this.request_id;
    }

    public int getRequestSceneType() {
        return this.requestSceneType;
    }

    public int getRewardPercent() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.reward_percent.intValue();
    }

    public int getRewardSeconds() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.reward_seconds.intValue();
    }

    public int getRewardStyle() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return 0;
        }
        return rvAdSetting.reward_style.intValue();
    }

    public RvAdSetting getRvAdSetting() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.rv_setting;
    }

    public String getRvCallBackUrl() {
        return this.rv_callback_url;
    }

    public Map<String, String> getSaasOptions() {
        return this.saasOptions;
    }

    public Template getScene() {
        return this.scene;
    }

    public int getSensitivity() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.sensitivity.intValue();
    }

    public ag getSessionManager() {
        return this.mSessionManager;
    }

    public int getShakeCount() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.shake_count.intValue();
    }

    public int getShakeTimeThreshold() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.shake_time_threshold.intValue();
    }

    public int getShakeTriggerType() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.shake_trigger_type.intValue();
    }

    public SingleNativeAdSetting getSingleNativeSetting() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return null;
        }
        return adSetting.single_native_setting;
    }

    public int getSkipPercent() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return -1;
        }
        return ((Integer) Wire.get(rvAdSetting.skip_percent, 0)).intValue();
    }

    public int getSkipSeconds() {
        Integer num;
        if (this.ad_type == 6) {
            InterstitialSetting newInterstitialSetting = getNewInterstitialSetting();
            if (newInterstitialSetting == null) {
                return -1;
            }
            num = newInterstitialSetting.show_skip_seconds;
        } else {
            RvAdSetting rvAdSetting = getRvAdSetting();
            if (rvAdSetting == null) {
                return -1;
            }
            num = (Integer) Wire.get(rvAdSetting.skip_seconds, 0);
        }
        return num.intValue();
    }

    public List<LinkAction> getSlotAdLinkActions() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.link_actions;
    }

    public SlotAdSetting getSlotAdSetting() {
        return this.slotAdSetting;
    }

    public SplashAdSetting getSplashAdSetting() {
        SlotAdSetting slotAdSetting = getSlotAdSetting();
        if (slotAdSetting == null) {
            return null;
        }
        return slotAdSetting.splash_setting;
    }

    public String getSplashFilePath() {
        String splashURL = getSplashURL();
        return o.e() + File.separator + Md5Util.md5(splashURL);
    }

    public String getSplashURL() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return "";
        }
        return n.CreativeTypeSplashVideo.a() == material.creative_type.intValue() ? material.video_url : material.image_src;
    }

    public int getTemplateId() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.template_id.intValue();
    }

    public int getTemplateType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.template_type.intValue();
    }

    public String getTitle() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.title;
    }

    public String getTraceId() {
        return this.traceId;
    }

    public int getTrackingRetryNum() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return 0;
        }
        return slotAdSetting.retry_count.intValue();
    }

    public String getUuid() {
        if (this.uuid == null) {
            this.uuid = UUID.randomUUID().toString();
        }
        return this.uuid;
    }

    public String getVid() {
        Ad ad2 = getAd();
        if (ad2 == null) {
            return null;
        }
        return ad2.vid;
    }

    public VideoStatusCommon getVideoCommon() {
        if (this.videoCommon == null) {
            this.videoCommon = new VideoStatusCommon();
        }
        return this.videoCommon;
    }

    public String getVideoCoverImageUrl() {
        SigVideo sigVideo = this.nativeVideo;
        if (sigVideo == null) {
            return null;
        }
        return sigVideo.thumbUrl;
    }

    public boolean getVideoErrorReward() {
        RvAdSetting rvAdSetting = getRvAdSetting();
        if (rvAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(rvAdSetting.video_error_reward, Boolean.FALSE)).booleanValue();
    }

    public String getVideoPath() {
        File videoProxyFile = getVideoProxyFile();
        if (videoProxyFile == null) {
            return null;
        }
        return videoProxyFile.getAbsolutePath();
    }

    public File getVideoProxyFile() {
        String video_url = getVideo_url();
        if (t.a((CharSequence) video_url)) {
            return null;
        }
        return h.d().getCacheFile(video_url);
    }

    public String getVideoTmpPath() {
        return o.a() + String.format("/%s.mp4.tmp", getVideo_md5());
    }

    public String getVideo_OriginMD5() {
        return this.video_md5;
    }

    public String getVideo_md5() {
        return t.b(this.video_md5) ? this.video_md5 : Md5Util.md5(getVideo_url());
    }

    public String getVideo_url() {
        List<MaterialMeta> list;
        Ad ad2 = this.f79507ad;
        if (ad2 == null || (list = ad2.materials) == null || list.isEmpty()) {
            return null;
        }
        if (this.ad_type == 5) {
            SigVideo nativeVideo = getNativeVideo();
            if (nativeVideo == null) {
                return null;
            }
            return StringUtil.getUrl(nativeVideo.url);
        }
        MaterialMeta materialMeta = this.f79507ad.materials.get(0);
        if (materialMeta == null) {
            return null;
        }
        return StringUtil.getUrl(materialMeta.video_url);
    }

    public WXProgramRes getWXProgramRes() {
        WXProgramRes wXProgramRes;
        Ad ad2 = getAd();
        if (ad2 == null || (wXProgramRes = ad2.wx_program_res) == null) {
            return null;
        }
        return wXProgramRes;
    }

    public Widget getWidget(int index) {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        List<Widget> list = material.Widget_list;
        if (!com.sigmob.sdk.base.utils.e.a(list) && com.sigmob.sdk.base.utils.e.a(index, list.size())) {
            return list.get(index);
        }
        return null;
    }

    public long getWidgetId(int index) {
        Widget widget = getWidget(index);
        if (widget == null) {
            return 0L;
        }
        return widget.widget_id.longValue();
    }

    public int getWidgetIntervalTime() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return 0;
        }
        return adSetting.widget_interval_time.intValue();
    }

    public AdPrivacy getadPrivacy() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return null;
        }
        return material.ad_privacy;
    }

    public int getsubInteractionType() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return 0;
        }
        return material.sub_interaction_type.intValue();
    }

    public boolean hasEndCard() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return false;
        }
        return material.has_endcard.booleanValue();
    }

    public boolean hasReachedMaxRedirectCount() {
        String vid = getVid();
        int quickAppMaxRedirectCount = getQuickAppMaxRedirectCount();
        if (t.a((CharSequence) vid) || quickAppMaxRedirectCount <= 0) {
            return true;
        }
        Integer num = this.mMaxRedirectCountMap.get(vid);
        return (num == null || num.intValue() == 0 || num.intValue() < quickAppMaxRedirectCount) ? false : true;
    }

    public void incrementRedirectCount() {
        String vid = getVid();
        Integer num = this.mMaxRedirectCountMap.get(vid);
        int iIntValue = 1;
        if (num != null && num.intValue() != 0) {
            iIntValue = 1 + num.intValue();
        }
        this.mMaxRedirectCountMap.put(vid, Integer.valueOf(iIntValue));
    }

    public boolean isCatchVideo() {
        return this.catchVideo;
    }

    public boolean isClickAutoCloseSplash() {
        return false;
    }

    public boolean isDisable_download_listener() {
        AdSetting adSetting = getAdSetting();
        if (adSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(adSetting.disable_download_listener, Boolean.FALSE)).booleanValue();
    }

    public boolean isDisablexRequestWith() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(slotAdSetting.disable_x_requested_with, Boolean.FALSE)).booleanValue();
    }

    public boolean isDislikeReported() {
        return this.isDislikeReported;
    }

    public boolean isDownloadDialog() {
        MaterialMeta material = getMaterial();
        if (material == null) {
            return false;
        }
        return material.download_dialog.booleanValue();
    }

    public boolean isEndCardIndexExist() {
        if (!t.b(getEndcard_url())) {
            return true;
        }
        if (getCreativeType() == n.CreativeTypeVideo_Tar.a() || getCreativeType() == n.CreativeTypeVideo_Tar_Companion.a()) {
            return new File(getEndCardIndexPath()).exists();
        }
        return true;
    }

    public boolean isExpiredAd() {
        long jIntValue = getAdExpiredTime().intValue();
        return (jIntValue == 0 || this.create_time == 0 || System.currentTimeMillis() - this.create_time < jIntValue) ? false : true;
    }

    public boolean isHalfInterstitial() {
        return this.isHalfInterstitial;
    }

    public boolean isNativeAdH5() {
        return true;
    }

    public boolean isRecord() {
        return this.record;
    }

    public boolean isResumableDownload() {
        SlotAdSetting slotAdSetting = this.slotAdSetting;
        if (slotAdSetting == null) {
            return false;
        }
        return ((Boolean) Wire.get(slotAdSetting.resumable_download, Boolean.FALSE)).booleanValue();
    }

    public boolean isSkipSigmobBrowser() {
        AdSetting adSetting = getAdSetting();
        return (adSetting == null || ((Boolean) Wire.get(adSetting.in_app, Boolean.FALSE)).booleanValue()) ? false : true;
    }

    public boolean isUse_floating_btn() {
        SplashAdSetting splashAdSetting = getSplashAdSetting();
        if (splashAdSetting == null) {
            return false;
        }
        return splashAdSetting.use_floating_btn.booleanValue();
    }

    public boolean isValid(int interactionType) {
        return (interactionType == 1 && t.b(getDeeplinkUrl())) || interactionType == 9;
    }

    public boolean isVideoExist() {
        if (t.a((CharSequence) getVideo_url())) {
            return true;
        }
        String videoPath = getVideoPath();
        boolean zExists = new File(videoPath).exists();
        SigmobLog.d("isVideoExist: path = " + videoPath + ", exist = " + zExists);
        return zExists;
    }

    public boolean noHasDownloadDialog() {
        int interactionType = getInteractionType();
        return ((interactionType == 2 || interactionType == 3) && getadPrivacy() != null && isDownloadDialog()) ? false : true;
    }

    public String resourcePath() {
        int creativeType = getCreativeType();
        if (t.b(getEndcard_url()) && (creativeType == n.CreativeTypeVideo_Tar.a() || creativeType == n.CreativeTypeVideo_Tar_Companion.a())) {
            return getEndCardIndexPath();
        }
        return t.b(getHtmlData()) ? getHtmlData() : getHtmlUrl();
    }

    public void setAd(Ad ad2) {
        this.f79507ad = ad2;
    }

    public void setAdSize(int width, int height) {
        this.adWidth = width;
        this.adHeight = height;
        getMacroCommon().addMarcoKey(SigMacroCommon._WIDTH_, String.valueOf(width));
        getMacroCommon().addMarcoKey(SigMacroCommon._HEIGHT_, String.valueOf(height));
    }

    public void setAd_scene_desc(String adSceneDesc) {
        this.ad_scene_desc = adSceneDesc;
    }

    public void setAd_scene_id(String adSceneId) {
        this.ad_scene_id = adSceneId;
    }

    public void setAd_source_channel(String adSourceChannel) {
        this.ad_source_channel = adSourceChannel;
    }

    public void setAd_type(int adType) {
        this.ad_type = adType;
    }

    public void setAdslot_id(String adSlotId) {
        this.adslot_id = adSlotId;
    }

    public void setAdx_id(String adxId) {
        this.adx_id = adxId;
    }

    public void setApkName(String apkName) {
        this.apkName = apkName;
    }

    public void setApkPackageName(String packageName) {
        this.apkPackageName = packageName;
    }

    public void setBid_token(String bidToken) {
        this.bid_token = bidToken;
    }

    public void setCamp_id(String campId) {
        this.camp_id = campId;
    }

    public void setCatchVideo(boolean catchVideo) {
        this.catchVideo = catchVideo;
    }

    public void setCreate_time(long createTime) {
        this.create_time = createTime;
    }

    public void setCrid(String crid) {
        this.crid = crid;
    }

    public void setCustomAndroidMarket(AndroidMarket customAndroidMarket) {
        this.mCustomAndroidMarket = customAndroidMarket;
    }

    public void setCustomDeeplink(String customDeeplink) {
        this.mCustomDeeplink = customDeeplink;
    }

    public void setCustomLandPageUrl(String customLandPageUrl) {
        this.mCustomLandPageUrl = customLandPageUrl;
    }

    public void setDeeplinkUri(Uri uri) {
        this.deeplinkUri = uri;
    }

    public void setDownloadId(Long downloadId) {
        this.downloadId = downloadId;
    }

    public void setDownloadQuarterTrack(List<d> tracks) {
        this.download_trackers = tracks;
    }

    public void setDownloadTask(f task) {
        this.downloadTask = task;
    }

    public void setDownloadUrl(String url) {
        this.downloadUrl = url;
    }

    public void setEndcard_md5(String endcardMd5) {
        this.endcard_md5 = endcardMd5;
    }

    public void setHalfInterstitial(boolean halfInterstitial) {
        this.isHalfInterstitial = halfInterstitial;
    }

    public void setLoad_id(String loadId) {
        this.load_id = loadId;
    }

    public void setMacroCommon(SigMacroCommon macroCommon) {
        this.macroCommon = macroCommon;
    }

    public void setMraidInteractionType(int interactionType) {
        this.mraidInteractionType = interactionType;
    }

    public void setOriginVid(String originVid) {
        this.originVid = originVid;
    }

    public void setRecord(boolean record) {
        this.record = record;
    }

    public void setRequestSceneType(int sceneType) {
        this.requestSceneType = sceneType;
    }

    public void setRequest_id(String requestId) {
        this.request_id = requestId;
    }

    public void setRvCallBackUrl(String rvCallbackUrl) {
        this.rv_callback_url = rvCallbackUrl;
    }

    public void setSaasOptions(Map<String, String> saasOptions) {
        this.saasOptions = saasOptions;
    }

    public void setSessionManager(ag sessionManager) {
        this.mSessionManager = sessionManager;
    }

    public void setTraceId(String traceId) {
        this.traceId = traceId;
    }

    public void setUrl(String url) {
        this.landUrl = url;
    }

    public void setVideo_md5(String videoMd5) {
        this.video_md5 = videoMd5;
    }

    public void updateRealAdPercent(double adPercent) {
        this.realAdPercent = adPercent;
    }

    public boolean enableSmallWindow(Integer interactionType) {
        int interactionType2 = interactionType == null ? getInteractionType() : interactionType.intValue();
        Boolean boolEnableSmallWindow = enableSmallWindow();
        return boolEnableSmallWindow != null && isValid(interactionType2) && boolEnableSmallWindow.booleanValue();
    }
}
