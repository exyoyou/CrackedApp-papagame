package com.kwad.sdk.core.b.a;

import com.byazt.bv.BaseConstants;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdStatusInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.response.model.AdVideoPreCacheConfig;
import com.kwad.sdk.core.response.model.LiveDetailReward;
import com.kwad.sdk.core.response.model.LiveInfo;
import com.kwad.sdk.core.response.model.PageInfo;
import com.kwad.sdk.core.response.model.VideoPlayerStatus;
import com.kwad.sdk.internal.api.SceneImpl;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ax implements com.kwad.sdk.core.d<AdTemplate> {
    private static void l(AdTemplate adTemplate, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        adTemplate.mOriginJString = jSONObject.optString("mOriginJString");
        if (JSONObject.NULL.toString().equals(adTemplate.mOriginJString)) {
            adTemplate.mOriginJString = "";
        }
        adTemplate.posId = jSONObject.optLong("posId");
        adTemplate.adStyle = jSONObject.optInt("adStyle");
        adTemplate.type = jSONObject.optInt("type");
        adTemplate.subType = jSONObject.optInt(WMConstants.SUBTYPE);
        adTemplate.defaultType = jSONObject.optInt("defaultType");
        adTemplate.contentType = jSONObject.optInt("contentType");
        adTemplate.adInfoList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("adInfo");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                AdInfo adInfo = new AdInfo();
                adInfo.parseJson(jSONArrayOptJSONArray.optJSONObject(i10));
                adTemplate.adInfoList.add(adInfo);
            }
        }
        LiveInfo liveInfo = new LiveInfo();
        adTemplate.liveInfo = liveInfo;
        liveInfo.parseJson(jSONObject.optJSONObject("liveInfo"));
        adTemplate.impAdExtra = jSONObject.optString("impAdExtra");
        if (JSONObject.NULL.toString().equals(adTemplate.impAdExtra)) {
            adTemplate.impAdExtra = "";
        }
        adTemplate.llsid = jSONObject.optLong("llsid");
        adTemplate.mIsFromContent = jSONObject.optBoolean("mIsFromContent");
        adTemplate.extra = jSONObject.optString(BaseConstants.EVENT_LABEL_EXTRA);
        if (JSONObject.NULL.toString().equals(adTemplate.extra)) {
            adTemplate.extra = "";
        }
        adTemplate.mUniqueId = jSONObject.optString("mUniqueId");
        if (JSONObject.NULL.toString().equals(adTemplate.mUniqueId)) {
            adTemplate.mUniqueId = "";
        }
        adTemplate.mBidEcpm = jSONObject.optLong("mBidEcpm");
        SceneImpl sceneImpl = new SceneImpl();
        adTemplate.mAdScene = sceneImpl;
        sceneImpl.parseJson(jSONObject.optJSONObject("mAdScene"));
        adTemplate.realShowType = jSONObject.optInt("realShowType");
        adTemplate.mInitVoiceStatus = jSONObject.optInt("mInitVoiceStatus");
        adTemplate.mMediaPlayerType = jSONObject.optInt("mMediaPlayerType");
        VideoPlayerStatus videoPlayerStatus = new VideoPlayerStatus();
        adTemplate.mVideoPlayerStatus = videoPlayerStatus;
        videoPlayerStatus.parseJson(jSONObject.optJSONObject("mVideoPlayerStatus"));
        LiveDetailReward liveDetailReward = new LiveDetailReward();
        adTemplate.mLiveDetailRewardFromAdLive = liveDetailReward;
        liveDetailReward.parseJson(jSONObject.optJSONObject("mLiveDetailRewardFromAdLive"));
        adTemplate.mOutClickTimeParam = jSONObject.optLong("mOutClickTimeParam", new Long(WMConstants.TIMER_STAGE_NONE).longValue());
        adTemplate.mVisibleTimeParam = jSONObject.optLong("mVisibleTimeParam", new Long(WMConstants.TIMER_STAGE_NONE).longValue());
        adTemplate.mIsLeftSlipStatus = jSONObject.optInt("mIsLeftSlipStatus");
        adTemplate.mPhotoResponseType = jSONObject.optInt("mPhotoResponseType");
        PageInfo pageInfo = new PageInfo();
        adTemplate.mPageInfo = pageInfo;
        pageInfo.parseJson(jSONObject.optJSONObject("mPageInfo"));
        adTemplate.mIsForceJumpLandingPage = jSONObject.optBoolean("mIsForceJumpLandingPage", new Boolean("false").booleanValue());
        adTemplate.mIsAudioEnable = jSONObject.optBoolean("mIsAudioEnable");
        adTemplate.mRewardVerifyCalled = jSONObject.optBoolean("mRewardVerifyCalled");
        adTemplate.isWebViewDownload = jSONObject.optBoolean("isWebViewDownload");
        adTemplate.watched = jSONObject.optBoolean("watched");
        adTemplate.swipeAngle = jSONObject.optInt("swipeAngle");
        adTemplate.converted = jSONObject.optBoolean("converted");
        adTemplate.fromCache = jSONObject.optBoolean("fromCache", new Boolean("false").booleanValue());
        adTemplate.requestStartTime = jSONObject.optLong("requestStartTime");
        adTemplate.loadDataTime = jSONObject.optLong("loadDataTime");
        adTemplate.showStartTime = jSONObject.optLong("showStartTime");
        adTemplate.addStartTime = jSONObject.optLong("addStartTime");
        adTemplate.showTime = jSONObject.optLong("showTime");
        adTemplate.notNetworkRequest = jSONObject.optBoolean("notNetworkRequest");
        adTemplate.downloadDuration = jSONObject.optLong("downloadDuration");
        adTemplate.adLoadTotalTime = jSONObject.optLong("adLoadTotalTime");
        adTemplate.adShowStartTimeStamp = jSONObject.optLong("adShowStartTimeStamp");
        AdStatusInfo adStatusInfo = new AdStatusInfo();
        adTemplate.mAdStatusInfo = adStatusInfo;
        adStatusInfo.parseJson(jSONObject.optJSONObject("mAdStatusInfo"));
        AdVideoPreCacheConfig adVideoPreCacheConfig = new AdVideoPreCacheConfig();
        adTemplate.adVideoPreCacheConfig = adVideoPreCacheConfig;
        adVideoPreCacheConfig.parseJson(jSONObject.optJSONObject("adVideoPreCacheConfig"));
        adTemplate.isNativeRewardPreview = jSONObject.optBoolean("isNativeRewardPreview");
        adTemplate.mInstallApkFromSDK = jSONObject.optBoolean("mInstallApkFromSDK");
        adTemplate.mInstallApkFormUser = jSONObject.optBoolean("mInstallApkFormUser");
        adTemplate.mClickOpenAppStore = jSONObject.optBoolean("mClickOpenAppStore");
        adTemplate.mDataLoadTraceElement = jSONObject.optString("mDataLoadTraceElement");
        if (JSONObject.NULL.toString().equals(adTemplate.mDataLoadTraceElement)) {
            adTemplate.mDataLoadTraceElement = "";
        }
        adTemplate.mDataCacheTraceElement = jSONObject.optString("mDataCacheTraceElement");
        if (JSONObject.NULL.toString().equals(adTemplate.mDataCacheTraceElement)) {
            adTemplate.mDataCacheTraceElement = "";
        }
        adTemplate.downLoadType = jSONObject.optInt("downLoadType", new Integer("3").intValue());
        adTemplate.hasInnerEcFailed = jSONObject.optBoolean("hasInnerEcFailed");
        adTemplate.isDoAuth = jSONObject.optBoolean("isDoAuth");
    }

    private static JSONObject m(AdTemplate adTemplate, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = adTemplate.mOriginJString;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mOriginJString", adTemplate.mOriginJString);
        }
        long j10 = adTemplate.posId;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "posId", j10);
        }
        int i10 = adTemplate.adStyle;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adStyle", i10);
        }
        int i11 = adTemplate.type;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i11);
        }
        int i12 = adTemplate.subType;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, WMConstants.SUBTYPE, i12);
        }
        int i13 = adTemplate.defaultType;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "defaultType", i13);
        }
        int i14 = adTemplate.contentType;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "contentType", i14);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "adInfo", adTemplate.adInfoList);
        com.kwad.sdk.utils.ac.a(jSONObject, "liveInfo", adTemplate.liveInfo);
        String str2 = adTemplate.impAdExtra;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "impAdExtra", adTemplate.impAdExtra);
        }
        long j11 = adTemplate.llsid;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "llsid", j11);
        }
        boolean z10 = adTemplate.mIsFromContent;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsFromContent", z10);
        }
        String str3 = adTemplate.extra;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, BaseConstants.EVENT_LABEL_EXTRA, adTemplate.extra);
        }
        String str4 = adTemplate.mUniqueId;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mUniqueId", adTemplate.mUniqueId);
        }
        long j12 = adTemplate.mBidEcpm;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mBidEcpm", j12);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mAdScene", adTemplate.mAdScene);
        int i15 = adTemplate.realShowType;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realShowType", i15);
        }
        int i16 = adTemplate.mInitVoiceStatus;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mInitVoiceStatus", i16);
        }
        int i17 = adTemplate.mMediaPlayerType;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mMediaPlayerType", i17);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mVideoPlayerStatus", adTemplate.mVideoPlayerStatus);
        com.kwad.sdk.utils.ac.a(jSONObject, "mLiveDetailRewardFromAdLive", adTemplate.mLiveDetailRewardFromAdLive);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "mOutClickTimeParam", adTemplate.mOutClickTimeParam);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "mVisibleTimeParam", adTemplate.mVisibleTimeParam);
        int i18 = adTemplate.mIsLeftSlipStatus;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsLeftSlipStatus", i18);
        }
        int i19 = adTemplate.mPhotoResponseType;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mPhotoResponseType", i19);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mPageInfo", adTemplate.mPageInfo);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsForceJumpLandingPage", adTemplate.mIsForceJumpLandingPage);
        boolean z11 = adTemplate.mIsAudioEnable;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsAudioEnable", z11);
        }
        boolean z12 = adTemplate.mRewardVerifyCalled;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mRewardVerifyCalled", z12);
        }
        boolean z13 = adTemplate.isWebViewDownload;
        if (z13) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isWebViewDownload", z13);
        }
        boolean z14 = adTemplate.watched;
        if (z14) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "watched", z14);
        }
        int i20 = adTemplate.swipeAngle;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "swipeAngle", i20);
        }
        boolean z15 = adTemplate.converted;
        if (z15) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "converted", z15);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "fromCache", adTemplate.fromCache);
        long j13 = adTemplate.requestStartTime;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "requestStartTime", j13);
        }
        long j14 = adTemplate.loadDataTime;
        if (j14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "loadDataTime", j14);
        }
        long j15 = adTemplate.showStartTime;
        if (j15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showStartTime", j15);
        }
        long j16 = adTemplate.addStartTime;
        if (j16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "addStartTime", j16);
        }
        long j17 = adTemplate.showTime;
        if (j17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showTime", j17);
        }
        boolean z16 = adTemplate.notNetworkRequest;
        if (z16) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "notNetworkRequest", z16);
        }
        long j18 = adTemplate.downloadDuration;
        if (j18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "downloadDuration", j18);
        }
        long j19 = adTemplate.adLoadTotalTime;
        if (j19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adLoadTotalTime", j19);
        }
        long j20 = adTemplate.adShowStartTimeStamp;
        if (j20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "adShowStartTimeStamp", j20);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "mAdStatusInfo", adTemplate.mAdStatusInfo);
        com.kwad.sdk.utils.ac.a(jSONObject, "adVideoPreCacheConfig", adTemplate.adVideoPreCacheConfig);
        boolean z17 = adTemplate.isNativeRewardPreview;
        if (z17) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isNativeRewardPreview", z17);
        }
        boolean z18 = adTemplate.mInstallApkFromSDK;
        if (z18) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mInstallApkFromSDK", z18);
        }
        boolean z19 = adTemplate.mInstallApkFormUser;
        if (z19) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mInstallApkFormUser", z19);
        }
        boolean z20 = adTemplate.mClickOpenAppStore;
        if (z20) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mClickOpenAppStore", z20);
        }
        String str5 = adTemplate.mDataLoadTraceElement;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mDataLoadTraceElement", adTemplate.mDataLoadTraceElement);
        }
        String str6 = adTemplate.mDataCacheTraceElement;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mDataCacheTraceElement", adTemplate.mDataCacheTraceElement);
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "downLoadType", adTemplate.downLoadType);
        boolean z21 = adTemplate.hasInnerEcFailed;
        if (z21) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "hasInnerEcFailed", z21);
        }
        boolean z22 = adTemplate.isDoAuth;
        if (z22) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "isDoAuth", z22);
        }
        return jSONObject;
    }

    @Override // com.kwad.sdk.core.d
    public final /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        l((AdTemplate) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return m((AdTemplate) bVar, jSONObject);
    }
}
