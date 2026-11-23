package com.windmill.toutiao;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
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
import com.windmill.sdk.custom.WMCustomBannerAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.widget.BannerViewInteractionListener;
import com.windmill.sdk.widget.BannerViewManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class TouTiaoNBAdapter extends WMCustomBannerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f87670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TTFeedAd f87671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f87672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87673d;

    static /* synthetic */ void d(TouTiaoNBAdapter touTiaoNBAdapter) {
        try {
            View view = touTiaoNBAdapter.f87670a;
            if (view == null || view.getParent() == null) {
                return;
            }
            ViewParent parent = touTiaoNBAdapter.f87670a.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(touTiaoNBAdapter.f87670a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        TTFeedAd tTFeedAd = this.f87671b;
        if (tTFeedAd != null) {
            tTFeedAd.destroy();
            this.f87671b = null;
        }
        if (this.f87670a != null) {
            this.f87670a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter, com.windmill.sdk.custom.WMAdBaseAdapter
    public View getBannerView() {
        return this.f87670a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f87671b;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        Map<String, Object> mediaExtraInfo;
        Object obj;
        TTFeedAd tTFeedAd = this.f87671b;
        if (tTFeedAd == null || (mediaExtraInfo = tTFeedAd.getMediaExtraInfo()) == null || (obj = mediaExtraInfo.get("request_id")) == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("request_id", obj);
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        return (this.f87671b == null || this.f87670a == null) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomBannerAdapter
    public void loadAd(final Context context, Map<String, Object> map, final Map<String, Object> map2) {
        try {
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + " loadAd:" + str);
            if (context == null) {
                callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "loadAd with context is null"));
                return;
            }
            if (map != null) {
                try {
                    Object obj = map.get(WMConstants.AD_WIDTH);
                    if (obj != null && ((Integer) obj).intValue() != 0) {
                        this.f87672c = WMBidUtil.parseInt(String.valueOf(obj)).intValue();
                    }
                    Object obj2 = map.get(WMConstants.AD_HEIGHT);
                    if (obj2 != null && ((Integer) obj2).intValue() != 0) {
                        this.f87673d = WMBidUtil.parseInt(String.valueOf(obj2)).intValue();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
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
            TouTiaoAdapterProxy.getTTAdNative().loadFeedAd(userID.build(), new TTAdNative.FeedAdListener() { // from class: com.windmill.toutiao.TouTiaoNBAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(TouTiaoNBAdapter.this.getClass().getSimpleName() + " onError " + i10 + ":" + str2);
                    TouTiaoNBAdapter.this.callLoadFail(new WMAdapterError(i10, TouTiaoAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(final List<TTFeedAd> list) {
                    SigmobLog.i(TouTiaoNBAdapter.this.getClass().getSimpleName() + " onFeedAdLoad()");
                    if (list != null && !list.isEmpty()) {
                        TouTiaoNBAdapter.this.f87671b = list.get(0);
                        new BannerViewManager(context, TouTiaoNBAdapter.this.f87672c, TouTiaoNBAdapter.this.f87673d, new e(TouTiaoNBAdapter.this.f87671b, TouTiaoNBAdapter.this.getChannelId()), map2, new BannerViewInteractionListener() { // from class: com.windmill.toutiao.TouTiaoNBAdapter.1.1
                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClick() {
                                TouTiaoNBAdapter.this.callBannerAdClick();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdClose() {
                                TouTiaoNBAdapter.d(TouTiaoNBAdapter.this);
                                TouTiaoNBAdapter.this.callBannerAdClosed();
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderError(WMAdapterError wMAdapterError) {
                                TouTiaoNBAdapter.this.callLoadFail(wMAdapterError);
                            }

                            @Override // com.windmill.sdk.widget.BannerViewInteractionListener
                            public final void onAdRenderSuccess(View view) {
                                Object obj4;
                                if (view != null) {
                                    TouTiaoNBAdapter.this.f87670a = view;
                                    if (TouTiaoNBAdapter.this.getBiddingType() == 1) {
                                        Map<String, Object> mediaExtraInfo = TouTiaoNBAdapter.this.f87671b.getMediaExtraInfo();
                                        TouTiaoNBAdapter.this.callLoadBiddingSuccess(new BidPrice((mediaExtraInfo == null || (obj4 = mediaExtraInfo.get("price")) == null) ? "0" : String.valueOf(obj4)));
                                    }
                                    TouTiaoNBAdapter.this.callLoadSuccess(list);
                                    return;
                                }
                                TouTiaoNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "onAdRenderSuccess view is null  " + str));
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShow() {
                                TouTiaoNBAdapter.this.callBannerAdShow();
                            }

                            @Override // com.windmill.sdk.widget.ViewInteractionListener
                            public final void onAdShowError(WMAdapterError wMAdapterError) {
                                TouTiaoNBAdapter.this.callBannerAdShowError(wMAdapterError);
                            }
                        }).render();
                        return;
                    }
                    TouTiaoNBAdapter.this.callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "ads is null or size be 0 " + str));
                }
            });
        } catch (Throwable th) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), "catch TT loadAd error " + th.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult:" + z10 + ":" + str);
        try {
            if (this.f87671b != null) {
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
                    this.f87671b.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f87671b.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
