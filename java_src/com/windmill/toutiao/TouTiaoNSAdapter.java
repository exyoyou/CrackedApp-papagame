package com.windmill.toutiao;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
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
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.SplashViewManager;
import com.windmill.sdk.widget.ViewInteractionListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoNSAdapter extends WMCustomSplashAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f87688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TTFeedAd f87690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f87691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f87692e = false;

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        e eVar = this.f87691d;
        if (eVar != null) {
            eVar.destroy();
            this.f87691d = null;
        }
        this.f87692e = false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87690c;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mediaExtraInfo;
        Object obj;
        TTFeedAd tTFeedAd = this.f87690c;
        if (tTFeedAd == null || (mediaExtraInfo = tTFeedAd.getMediaExtraInfo()) == null || (obj = mediaExtraInfo.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (!this.f87692e || this.f87690c == null || this.f87691d == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void loadAd(Context context, ViewGroup viewGroup, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f87692e = false;
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "activity is null"));
                return;
            }
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd " + str);
            this.f87688a = context.getResources().getDisplayMetrics().widthPixels;
            this.f87689b = context.getResources().getDisplayMetrics().heightPixels;
            try {
                Object obj = map.get(WMConstants.AD_WIDTH);
                if (obj != null && ((Integer) obj).intValue() != 0) {
                    this.f87688a = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                }
                Object obj2 = map.get(WMConstants.AD_HEIGHT);
                if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                    this.f87689b = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            TTAdNative tTAdNative = TouTiaoAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setAdCount(1).setUserID(getUserId());
            if (getBiddingType() == 0) {
                userID.withBid(getHbResponseStr());
            }
            Object obj3 = map2.get(WMConstants.IMAGE_TYPE);
            if (obj3 == null || obj3.equals("") || obj3.equals("0")) {
                userID.setImageAcceptedSize(690, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_INIT_RTT);
            } else {
                userID.setImageAcceptedSize(Constants.CHECK_PLAYING_CID_ACTION, 150);
            }
            tTAdNative.loadFeedAd(userID.build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.toutiao.TouTiaoNSAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(TouTiaoNSAdapter.this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    TouTiaoNSAdapter.this.callLoadFail(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    Object obj4;
                    SigmobLog.i(TouTiaoNSAdapter.this.getClass().getSimpleName() + " onFeedAdLoad()");
                    if (list == null || list.isEmpty()) {
                        TouTiaoNSAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                        return;
                    }
                    TouTiaoNSAdapter.a(TouTiaoNSAdapter.this);
                    TouTiaoNSAdapter.this.f87690c = list.get(0);
                    TouTiaoNSAdapter touTiaoNSAdapter = TouTiaoNSAdapter.this;
                    touTiaoNSAdapter.f87691d = new e(touTiaoNSAdapter.f87690c, TouTiaoNSAdapter.this.getChannelId());
                    if (TouTiaoNSAdapter.this.getBiddingType() == 1) {
                        Map<String, Object> mediaExtraInfo = TouTiaoNSAdapter.this.f87690c.getMediaExtraInfo();
                        TouTiaoNSAdapter.this.callLoadBiddingSuccess(new BidPrice((mediaExtraInfo == null || (obj4 = mediaExtraInfo.get("price")) == null) ? "0" : String.valueOf(obj4)));
                    }
                    TouTiaoNSAdapter.this.callLoadSuccess(list);
                }
            });
        } catch (Exception e11) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), e11.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f87690c != null) {
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
                    this.f87690c.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f87690c.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomSplashAdapter
    public void showAd(Activity activity, ViewGroup viewGroup, Map<String, Object> map) {
        Object obj;
        try {
            if (this.f87690c == null || this.f87691d == null || !this.f87692e) {
                callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示！"));
            } else {
                if (getBiddingType() == 1 && (obj = map.get("eCpm")) != null) {
                    this.f87690c.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
                }
                new SplashViewManager(this.f87688a, this.f87689b, this.f87691d, map, new ViewInteractionListener() { // from class: com.windmill.toutiao.TouTiaoNSAdapter.2
                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClick() {
                        TouTiaoNSAdapter.this.callSplashAdClick();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdClose() {
                        TouTiaoNSAdapter.this.callSplashAdClosed();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShow() {
                        TouTiaoNSAdapter.this.callSplashAdShow();
                    }

                    @Override // com.windmill.sdk.widget.ViewInteractionListener
                    public final void onAdShowError(WMAdapterError wMAdapterError) {
                        TouTiaoNSAdapter.this.callSplashAdShowError(wMAdapterError);
                    }
                }).show(viewGroup);
            }
            this.f87692e = false;
        } catch (Exception e10) {
            callSplashAdShowError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), e10.getMessage()));
        }
    }

    static /* synthetic */ boolean a(TouTiaoNSAdapter touTiaoNSAdapter) {
        touTiaoNSAdapter.f87692e = true;
        return true;
    }
}
