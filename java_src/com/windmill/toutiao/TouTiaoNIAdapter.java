package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.custom.WMCustomInterstitialAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.widget.InterstitialViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoNIAdapter extends WMCustomInterstitialAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTFeedAd f87680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f87681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f87682c = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        e eVar = this.f87681b;
        if (eVar != null) {
            eVar.destroy();
            this.f87681b = null;
        }
        this.f87682c = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87680a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mediaExtraInfo;
        Object obj;
        TTFeedAd tTFeedAd = this.f87680a;
        if (tTFeedAd == null || (mediaExtraInfo = tTFeedAd.getMediaExtraInfo()) == null || (obj = mediaExtraInfo.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f87682c || this.f87680a == null || this.f87681b == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87682c = false;
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setAdCount(1).setUserID(getUserId());
            Object obj = map2.get(WMConstants.IMAGE_TYPE);
            if (obj == null || obj.equals("") || obj.equals("0")) {
                userID.setImageAcceptedSize(690, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT);
            } else {
                userID.setImageAcceptedSize(Constants.CHECK_PLAYING_CID_ACTION, 150);
            }
            if (getBiddingType() == 0) {
                userID.withBid(getHbResponseStr());
            }
            tTAdNative.loadFeedAd(userID.build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.toutiao.TouTiaoNIAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(TouTiaoNIAdapter.this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    TouTiaoNIAdapter.this.callLoadFail(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    Object obj2;
                    SigmobLog.i(TouTiaoNIAdapter.this.getClass().getSimpleName() + " onFeedAdLoad()");
                    if (list == null || list.isEmpty()) {
                        TouTiaoNIAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                        return;
                    }
                    TouTiaoNIAdapter.a(TouTiaoNIAdapter.this);
                    TouTiaoNIAdapter.this.f87680a = list.get(0);
                    TouTiaoNIAdapter touTiaoNIAdapter = TouTiaoNIAdapter.this;
                    touTiaoNIAdapter.f87681b = new e(touTiaoNIAdapter.f87680a, TouTiaoNIAdapter.this.getChannelId());
                    if (TouTiaoNIAdapter.this.getBiddingType() == 1) {
                        Map<String, Object> mediaExtraInfo = TouTiaoNIAdapter.this.f87680a.getMediaExtraInfo();
                        TouTiaoNIAdapter.this.callLoadBiddingSuccess(new BidPrice((mediaExtraInfo == null || (obj2 = mediaExtraInfo.get("price")) == null) ? "0" : String.valueOf(obj2)));
                    }
                    TouTiaoNIAdapter.this.callLoadSuccess(list);
                }
            });
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f87680a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : TouTiaoAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f87680a.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f87680a.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomInterstitialAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        Object obj;
        try {
            if (this.f87680a == null || this.f87681b == null || !this.f87682c) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
                return;
            }
            if (getBiddingType() == 1 && (obj = map2.get("eCpm")) != null) {
                this.f87680a.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
            }
            InterstitialViewManager interstitialViewManager = new InterstitialViewManager(activity, this.f87681b, map2, new ViewInteractionListener() { // from class: com.windmill.toutiao.TouTiaoNIAdapter.2
                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdClick() {
                    TouTiaoNIAdapter.this.callVideoAdClick();
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdClose() {
                    TouTiaoNIAdapter.this.callVideoAdClosed();
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdShow() {
                    TouTiaoNIAdapter.this.callVideoAdShow();
                }

                @Override // com.windmill.sdk.widget.ViewInteractionListener
                public final void onAdShowError(WMAdapterError wMAdapterError) {
                    TouTiaoNIAdapter.this.callVideoAdPlayError(wMAdapterError);
                }
            });
            this.f87681b.setDownloadListener(new WMNativeAdData.AppDownloadListener() { // from class: com.windmill.toutiao.TouTiaoNIAdapter.3

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private boolean f87687b = false;

                @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                public final void onDownloadActive(long j10, long j11, String str, String str2) {
                    if (this.f87687b) {
                        return;
                    }
                    this.f87687b = true;
                    TouTiaoNIAdapter.this.callVideoAdClickDownload();
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                public final void onDownloadFailed(long j10, long j11, String str, String str2) {
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                public final void onDownloadFinished(long j10, String str, String str2) {
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                public final void onDownloadPaused(long j10, long j11, String str, String str2) {
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                public final void onIdle() {
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
                public final void onInstalled(String str, String str2) {
                }
            });
            interstitialViewManager.setTips(getTips());
            interstitialViewManager.show();
        } catch (Throwable th) {
            th.printStackTrace();
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }

    static /* synthetic */ boolean a(TouTiaoNIAdapter touTiaoNIAdapter) {
        touTiaoNIAdapter.f87682c = true;
        return true;
    }
}
