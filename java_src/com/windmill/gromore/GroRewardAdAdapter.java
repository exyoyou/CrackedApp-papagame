package com.windmill.gromore;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.bytedance.pangle.activity.GenerateProxyActivity;
import com.bytedance.pangle.activity.GenerateProxyAppCompatActivity;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationAdSlot;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationRewardManager;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMBidUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMCustomRewardAdapter;
import com.windmill.sdk.models.BidPrice;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class GroRewardAdAdapter extends WMCustomRewardAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TTRewardVideoAd f86204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f86205b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86206c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<WeakReference<Activity>> f86207d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86208e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q f86209f;

    static /* synthetic */ boolean d(GroRewardAdAdapter groRewardAdAdapter) {
        groRewardAdAdapter.f86205b = false;
        return false;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void destroyAd() {
        TTRewardVideoAd tTRewardVideoAd = this.f86204a;
        if (tTRewardVideoAd != null) {
            tTRewardVideoAd.getMediationManager().destroy();
            this.f86204a = null;
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Object getChannelObject() {
        return this.f86204a;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getMediaExtraOption() {
        TTRewardVideoAd tTRewardVideoAd = this.f86204a;
        if (tTRewardVideoAd != null) {
            return GroAdapterProxy.getRequestId(tTRewardVideoAd.getMediaExtraInfo());
        }
        return null;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public Map<String, Object> getNetworkOption() {
        MediationRewardManager mediationManager;
        MediationAdEcpmInfo showEcpm;
        HashMap map = new HashMap();
        TTRewardVideoAd tTRewardVideoAd = this.f86204a;
        if (tTRewardVideoAd != null && (mediationManager = tTRewardVideoAd.getMediationManager()) != null && (showEcpm = mediationManager.getShowEcpm()) != null) {
            map.put(MediationConstant.KEY_ADN_NAME, showEcpm.getSdkName());
            map.put("adnNetworkRitId", showEcpm.getSlotId());
            map.put("adnEcpm", showEcpm.getEcpm());
        }
        return map;
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public boolean isReady() {
        TTRewardVideoAd tTRewardVideoAd = this.f86204a;
        return (tTRewardVideoAd == null || tTRewardVideoAd.getMediationManager() == null || !this.f86204a.getMediationManager().isReady()) ? false : true;
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void loadAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f86205b = false;
            this.f86208e = n.a(map2);
            final String str = (String) map2.get("placementId");
            SigmobLog.i(getClass().getSimpleName() + "---loadAd " + str + "serverExtra: " + map2);
            TTAdNative.RewardVideoAdListener rewardVideoAdListener = new TTAdNative.RewardVideoAdListener() { // from class: com.windmill.gromore.GroRewardAdAdapter.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onError(int i10, String str2) {
                    SigmobLog.i(AnonymousClass1.class.getSimpleName() + "---Gro--onError " + i10 + ":" + str2);
                    GroRewardAdAdapter.this.callLoadFail(new WMAdapterError(i10, GroAdapterProxy.getReason(str2), str2));
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
                    SigmobLog.i(AnonymousClass1.class.getSimpleName() + "---onRewardVideoAdLoad ");
                    GroRewardAdAdapter.this.f86204a = tTRewardVideoAd;
                    tTRewardVideoAd.setRewardAdInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() { // from class: com.windmill.gromore.GroRewardAdAdapter.1.1
                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdClose() {
                            if (GroRewardAdAdapter.this.f86205b) {
                                GroRewardAdAdapter.d(GroRewardAdAdapter.this);
                                GroRewardAdAdapter.this.callVideoAdClosed();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdShow() {
                            if (GroRewardAdAdapter.this.f86204a != null && GroRewardAdAdapter.this.f86204a.getMediationManager() != null) {
                                GroRewardAdAdapter groRewardAdAdapter = GroRewardAdAdapter.this;
                                groRewardAdAdapter.setGroEcpm(n.a(groRewardAdAdapter.f86204a.getMediationManager().getShowEcpm()));
                            }
                            GroRewardAdAdapter.this.callVideoAdShow();
                            GroRewardAdAdapter groRewardAdAdapter2 = GroRewardAdAdapter.this;
                            c.a(groRewardAdAdapter2, groRewardAdAdapter2.f86209f);
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onAdVideoBarClick() {
                            if (GroRewardAdAdapter.this.f86204a != null && GroRewardAdAdapter.this.f86204a.getMediationManager() != null) {
                                GroRewardAdAdapter groRewardAdAdapter = GroRewardAdAdapter.this;
                                groRewardAdAdapter.setGroEcpm(n.a(groRewardAdAdapter.f86204a.getMediationManager().getShowEcpm()));
                            }
                            GroRewardAdAdapter.this.callVideoAdClick();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onRewardArrived(boolean z10, int i10, Bundle bundle) {
                            SigmobLog.i(C10741.class.getSimpleName() + "---onRewardArrived:" + z10);
                            if (GroRewardAdAdapter.this.f86204a != null && GroRewardAdAdapter.this.f86204a.getMediationManager() != null) {
                                GroRewardAdAdapter groRewardAdAdapter = GroRewardAdAdapter.this;
                                groRewardAdAdapter.setGroEcpm(n.a(groRewardAdAdapter.f86204a.getMediationManager().getShowEcpm()));
                            }
                            if (bundle == null) {
                                GroRewardAdAdapter.this.callVideoAdReward(z10);
                                return;
                            }
                            boolean z11 = bundle.containsKey("reward_extra_key_is_server_verify") ? bundle.getBoolean("reward_extra_key_is_server_verify") : false;
                            if (bundle.containsKey(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY)) {
                                z11 = bundle.getBoolean(MediationConstant.KEY_IS_GROMORE_SERVER_SIDE_VERIFY);
                            }
                            int i11 = bundle.getInt("reward_extra_key_error_code");
                            String string = bundle.getString("reward_extra_key_error_msg");
                            HashMap map3 = new HashMap();
                            if (bundle.containsKey("transId")) {
                                String string2 = bundle.getString("transId");
                                map3.put("transId", string2);
                                WMLogUtil.i("---------GroRew: " + string2 + " " + bundle);
                            }
                            map3.put("rewardVerify", Boolean.valueOf(z11));
                            map3.put("errorCode", Integer.valueOf(i11));
                            map3.put("errorMsg", string);
                            GroRewardAdAdapter.this.callVideoAdRewardWithData(z10, map3);
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onRewardVerify(boolean z10, int i10, String str2, int i11, String str3) {
                            SigmobLog.i(C10741.class.getSimpleName() + "---onRewardVerify:" + z10 + ":" + i11 + ":" + str3);
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onSkippedVideo() {
                            if (GroRewardAdAdapter.this.f86204a != null && GroRewardAdAdapter.this.f86204a.getMediationManager() != null) {
                                GroRewardAdAdapter groRewardAdAdapter = GroRewardAdAdapter.this;
                                groRewardAdAdapter.setGroEcpm(n.a(groRewardAdAdapter.f86204a.getMediationManager().getShowEcpm()));
                            }
                            GroRewardAdAdapter.this.callVideoAdSkipped();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onVideoComplete() {
                            if (GroRewardAdAdapter.this.f86204a != null && GroRewardAdAdapter.this.f86204a.getMediationManager() != null) {
                                GroRewardAdAdapter groRewardAdAdapter = GroRewardAdAdapter.this;
                                groRewardAdAdapter.setGroEcpm(n.a(groRewardAdAdapter.f86204a.getMediationManager().getShowEcpm()));
                            }
                            GroRewardAdAdapter.this.callVideoAdPlayComplete();
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                        public final void onVideoError() {
                            GroRewardAdAdapter.this.callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "tt onVideoError"));
                        }
                    });
                    tTRewardVideoAd.setDownloadListener(new TTAppDownloadListener() { // from class: com.windmill.gromore.GroRewardAdAdapter.1.2
                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadActive(long j10, long j11, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadFailed(long j10, long j11, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadFinished(long j10, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onDownloadPaused(long j10, long j11, String str2, String str3) {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onIdle() {
                        }

                        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
                        public final void onInstalled(String str2, String str3) {
                        }
                    });
                    if (GroRewardAdAdapter.this.getBiddingType() == 1) {
                        GroRewardAdAdapter groRewardAdAdapter = GroRewardAdAdapter.this;
                        groRewardAdAdapter.f86209f = n.a(groRewardAdAdapter.f86204a, GroRewardAdAdapter.this.f86208e, str, 0);
                        BidPrice bidPrice = new BidPrice(String.valueOf(GroRewardAdAdapter.this.f86209f.f86346a));
                        GroRewardAdAdapter groRewardAdAdapter2 = GroRewardAdAdapter.this;
                        groRewardAdAdapter2.setGroC2sPriceInfo(groRewardAdAdapter2.f86209f.f86346a, GroRewardAdAdapter.this.f86209f.f86350e, GroRewardAdAdapter.this.f86209f.f86349d, GroRewardAdAdapter.this.f86209f.f86353h, GroRewardAdAdapter.this.f86209f.f86351f, GroRewardAdAdapter.this.f86209f.f86354i);
                        GroRewardAdAdapter.this.callLoadBiddingSuccess(bidPrice);
                    }
                    if (GroRewardAdAdapter.this.getFillType() == 1) {
                        GroRewardAdAdapter.this.callLoadSuccess();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onRewardVideoCached() {
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
                public final void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
                    SigmobLog.i(AnonymousClass1.class.getSimpleName() + "---onRewardVideoCached");
                    if (GroRewardAdAdapter.this.getFillType() == 0) {
                        GroRewardAdAdapter.this.callLoadSuccess();
                    }
                }
            };
            TTAdNative tTAdNative = GroAdapterProxy.getTTAdNative();
            AdSlot.Builder userID = new AdSlot.Builder().setCodeId(str).setSupportDeepLink(true).setUserID(getUserId());
            if (map != null) {
                try {
                    String strSerialize = JSONSerializer.Serialize(map);
                    SigmobLog.i(getClass().getSimpleName() + " json " + strSerialize);
                    MediationAdSlot.Builder builder = new MediationAdSlot.Builder();
                    builder.setExtraObject(MediationConstant.ADN_PANGLE, strSerialize);
                    builder.setExtraObject("gromoreExtra", strSerialize);
                    userID.setMediationAdSlot(builder.build());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            Object obj = map2.get("templateType");
            if (obj == null || obj.equals("") || obj.equals("0")) {
                userID.setExpressViewAcceptedSize(500.0f, 500.0f);
            }
            tTAdNative.loadRewardVideoAd(userID.build(), rewardVideoAdListener);
        } catch (Throwable th2) {
            callLoadFail(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_LOAD.getErrorCode(), th2.getMessage()));
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter
    public void notifyBiddingResult(boolean z10, String str, Map<String, Object> map) {
        SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult " + z10 + ":" + str);
        try {
            if (this.f86204a != null) {
                Map<String, String> bidInfoToOut = WMBidUtil.getBidInfoToOut(z10, map);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----1:" + getChannelId() + ":" + z10 + ":" + map + ":" + bidInfoToOut);
                Map<String, String> bidInfoWithChannel = WMBidUtil.getBidInfoWithChannel(getChannelId(), z10, map, bidInfoToOut);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(getClass().getSimpleName());
                sb2.append(" notifyBiddingResult-----2:");
                sb2.append(bidInfoWithChannel);
                SigmobLog.i(sb2.toString());
                Map<String, Object> mapCastBiddingInfo = bidInfoWithChannel != null ? GroAdapterProxy.castBiddingInfo(z10, bidInfoWithChannel) : GroAdapterProxy.castBiddingInfo(z10, bidInfoToOut);
                SigmobLog.i(getClass().getSimpleName() + " notifyBiddingResult-----3:" + mapCastBiddingInfo);
                if (z10) {
                    this.f86204a.win(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionBidToWin")))));
                } else {
                    this.f86204a.loss(Double.valueOf(Double.parseDouble(String.valueOf(mapCastBiddingInfo.get("auctionPrice")))), String.valueOf(mapCastBiddingInfo.get("lossReason")), String.valueOf(mapCastBiddingInfo.get("winBidder")));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onCreate(Activity activity) {
        if (this.f86206c && this.f86205b) {
            if ((activity instanceof GenerateProxyActivity) || (activity instanceof GenerateProxyAppCompatActivity)) {
                SigmobLog.e(getClass().getSimpleName() + " onCreate " + activity.getClass().getName() + " id " + activity.hashCode());
                this.f86207d.add(new WeakReference<>(activity));
            }
        }
    }

    @Override // com.windmill.sdk.custom.WMAdBaseAdapter, com.windmill.sdk.utils.a.InterfaceC1083a
    public void onDestroy(Activity activity) {
        try {
            if (this.f86206c) {
                if ((activity instanceof GenerateProxyActivity) || (activity instanceof GenerateProxyAppCompatActivity)) {
                    SigmobLog.e(getClass().getSimpleName() + " onDestroy " + activity.getClass().getName() + " id " + activity.hashCode());
                    Iterator<WeakReference<Activity>> it2 = this.f86207d.iterator();
                    while (it2.hasNext()) {
                        if (activity.equals(it2.next().get())) {
                            SigmobLog.e(getClass().getSimpleName() + " remove " + activity.getClass().getName() + " id " + activity.hashCode());
                            it2.remove();
                            break;
                        }
                    }
                    if (this.f86205b && this.f86207d.isEmpty()) {
                        this.f86205b = false;
                        callVideoAdClosed();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.windmill.sdk.custom.WMCustomRewardAdapter
    public void showAd(Activity activity, HashMap<String, String> map, Map<String, Object> map2) {
        Object obj;
        try {
            if (map2.containsKey(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK)) {
                this.f86206c = map2.get(WMConstants.ENABLE_EXTRA_CLOSE_CALLBACK).equals("1");
            }
            if (this.f86204a == null) {
                callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), "成功加载广告后再进行广告展示!"));
                return;
            }
            if (getBiddingType() == 1 && (obj = map2.get("eCpm")) != null) {
                this.f86204a.setPrice(Double.valueOf(Double.parseDouble((String) obj)));
            }
            this.f86207d.clear();
            this.f86205b = true;
            this.f86204a.showRewardVideoAd(activity);
        } catch (Throwable th) {
            callVideoAdPlayError(new WMAdapterError(WindMillError.ERROR_AD_ADAPTER_PLAY.getErrorCode(), th.getMessage()));
        }
    }
}
