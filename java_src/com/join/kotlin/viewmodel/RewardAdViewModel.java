package com.join.kotlin.viewmodel;

import android.app.Activity;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.MApplication;
import com.byazt.hv.TTDownloadField;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.ad.adapter.e;
import com.join.mgps.ad.n;
import com.join.mgps.ad.t;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.reward.WMRewardAd;
import com.windmill.sdk.reward.WMRewardAdListener;
import com.windmill.sdk.reward.WMRewardAdRequest;
import com.windmill.sdk.reward.WMRewardInfo;
import f6.a;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\nJ8\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010*\u001a\u00020+2\u0016\b\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020.\u0018\u00010-J\u000e\u0010/\u001a\u00020%2\u0006\u0010(\u001a\u00020)J\b\u00100\u001a\u00020%H\u0002R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u00061"}, d2 = {"Lcom/join/kotlin/viewmodel/RewardAdViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", NotificationCompat.CATEGORY_EVENT, "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/join/mgps/ad/union/bean/AdEvent;", "getEvent", "()Lkotlinx/coroutines/flow/MutableSharedFlow;", "appId", "", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "adId", "getAdId", "setAdId", "channel", "", "getChannel", "()I", "setChannel", "(I)V", "rewardAd", "Lcom/windmill/sdk/reward/WMRewardAd;", "getRewardAd", "()Lcom/windmill/sdk/reward/WMRewardAd;", "setRewardAd", "(Lcom/windmill/sdk/reward/WMRewardAd;)V", "rewardVideoCallback", "Lcom/join/mgps/ad/IRewardVideo;", "getRewardVideoCallback", "()Lcom/join/mgps/ad/IRewardVideo;", "setRewardVideoCallback", "(Lcom/join/mgps/ad/IRewardVideo;)V", "init", "", "adChannel", "load", TTDownloadField.TT_ACTIVITY, "Landroid/app/Activity;", "autoShow", "", QuarkPromptActivity_.ARGS_EXTRA, "", "", "show", "initSdk", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RewardAdViewModel extends BaseViewModel {
    private int channel;

    @Nullable
    private WMRewardAd rewardAd;

    @Nullable
    private n rewardVideoCallback;

    @NotNull
    private final i<a> event = o.b(5, 10, null, 4, null);

    @NotNull
    private String appId = "";

    @NotNull
    private String adId = "";

    private final void initSdk() {
        Context contextN = MApplication.n();
        if (this.channel == 10) {
            e.a(contextN, this.appId, null);
            this.event.d(a.g.f91152a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void load$default(RewardAdViewModel rewardAdViewModel, Activity activity, String str, boolean z10, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        if ((i10 & 8) != 0) {
            map = null;
        }
        rewardAdViewModel.load(activity, str, z10, map);
    }

    @NotNull
    public final String getAdId() {
        return this.adId;
    }

    @NotNull
    public final String getAppId() {
        return this.appId;
    }

    public final int getChannel() {
        return this.channel;
    }

    @NotNull
    public final i<a> getEvent() {
        return this.event;
    }

    @Nullable
    public final WMRewardAd getRewardAd() {
        return this.rewardAd;
    }

    @Nullable
    public final n getRewardVideoCallback() {
        return this.rewardVideoCallback;
    }

    public final void init(int adChannel, @NotNull String appId) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        this.channel = adChannel;
        this.appId = appId;
        initSdk();
    }

    public final void load(@NotNull final Activity activity, @NotNull final String adId, final boolean autoShow, @Nullable Map<String, ? extends Object> args) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.adId = adId;
        String uid = AccountUtil_.getInstance_(activity).getUid();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (args == null) {
            args = MapsKt__MapsKt.emptyMap();
        }
        linkedHashMap.putAll(args);
        if (this.channel != 10) {
            this.rewardVideoCallback = new t() { // from class: com.join.kotlin.viewmodel.RewardAdViewModel.load.1
                @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
                public void onWfADClose() {
                    super.onWfADClose();
                    this.getEvent().d(a.b.f91146a);
                }

                @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
                public void onWfADLoad(boolean showAd) {
                    super.onWfADLoad(showAd);
                    if (autoShow) {
                        com.join.mgps.ad.a.g(activity).i(activity);
                    }
                }

                @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
                public void onWfADShow() {
                    super.onWfADShow();
                }

                @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
                public void onWfError(int err, String msg) {
                    super.onWfError(err, msg);
                    this.getEvent().d(new a.f(Integer.valueOf(err), msg));
                }

                @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
                public void onWfVideoCached() {
                    super.onWfVideoCached();
                }

                @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
                public void onWfVideoComplete() {
                    super.onWfVideoComplete();
                    this.getEvent().d(a.c.f91147a);
                }
            };
            com.join.mgps.ad.a.g(activity).h(this.channel, this.appId, adId, this.rewardVideoCallback);
        } else {
            WMRewardAd wMRewardAd = new WMRewardAd(activity, new WMRewardAdRequest(adId, uid, linkedHashMap));
            wMRewardAd.setRewardedAdListener(new WMRewardAdListener() { // from class: com.join.kotlin.viewmodel.RewardAdViewModel$load$rewardAd$1$1
                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoAdClicked(AdInfo adInfo) {
                    this.this$0.getEvent().d(a.C1159a.f91145a);
                }

                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoAdClosed(AdInfo adInfo) {
                    this.this$0.getEvent().d(a.b.f91146a);
                }

                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoAdLoadError(WindMillError error, String placementId) {
                    this.this$0.getEvent().d(new a.f(error != null ? Integer.valueOf(error.getErrorCode()) : null, error != null ? error.getMessage() : null));
                }

                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoAdLoadSuccess(String placementId) {
                    this.this$0.getEvent().d(a.g.f91152a);
                    if (autoShow && Intrinsics.areEqual(placementId, adId)) {
                        this.this$0.show(activity);
                    }
                }

                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoAdPlayEnd(AdInfo adInfo) {
                    this.this$0.getEvent().d(a.h.f91153a);
                }

                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoAdPlayError(WindMillError error, String placementId) {
                    this.this$0.getEvent().d(new a.i(error != null ? Integer.valueOf(error.getErrorCode()) : null, error != null ? error.getMessage() : null));
                }

                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoAdPlayStart(AdInfo adInfo) {
                }

                @Override // com.windmill.sdk.reward.WMRewardAdListener
                public void onVideoRewarded(AdInfo adInfo, WMRewardInfo rewardInfo) {
                    this.this$0.getEvent().d(a.c.f91147a);
                }
            });
            wMRewardAd.loadAd();
            this.rewardAd = wMRewardAd;
        }
    }

    public final void setAdId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.adId = str;
    }

    public final void setAppId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.appId = str;
    }

    public final void setChannel(int i10) {
        this.channel = i10;
    }

    public final void setRewardAd(@Nullable WMRewardAd wMRewardAd) {
        this.rewardAd = wMRewardAd;
    }

    public final void setRewardVideoCallback(@Nullable n nVar) {
        this.rewardVideoCallback = nVar;
    }

    public final void show(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.channel != 10) {
            com.join.mgps.ad.a.g(activity).i(activity);
            return;
        }
        WMRewardAd wMRewardAd = this.rewardAd;
        if (wMRewardAd != null) {
            wMRewardAd.show(activity, null);
        }
    }
}
