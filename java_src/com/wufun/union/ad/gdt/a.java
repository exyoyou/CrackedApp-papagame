package com.wufun.union.ad.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.util.AdError;
import com.wufun.union.ad.AdChannel;
import com.wufun.union.ad.AdService;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class a extends AdChannel {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f88184k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f88185l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f88186m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f88187n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f88188o = 4;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f88189p = 5;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f88190q = 6;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f88191r = 7;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f88192s = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    RewardVideoAD f88193j;

    /* JADX INFO: renamed from: com.wufun.union.ad.gdt.a$a, reason: collision with other inner class name */
    class C1094a implements RewardVideoADListener {
        C1094a() {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClick() {
            a.this.i(5, Boolean.TRUE, "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClose() {
            a.this.i(6, Boolean.TRUE, "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADExpose() {
            a.this.i(3, Boolean.TRUE, "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADLoad() {
            a.this.i(1, Boolean.TRUE, "");
            ((AdChannel) a.this).f88139a = true;
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADShow() {
            a.this.i(2, Boolean.TRUE, "");
            AdService.i(((AdChannel) a.this).f88143e, ((AdChannel) a.this).f88147i, "smallExpAdSDK", ((AdChannel) a.this).f88145g + "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onError(AdError adError) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (adError != null) {
                    jSONObject.putOpt("code", Integer.valueOf(adError.getErrorCode()));
                    jSONObject.putOpt("msg", adError.getErrorMsg());
                }
                a.this.i(8, Boolean.TRUE, jSONObject.toString());
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onReward(Map<String, Object> map) {
            a.this.i(7, Boolean.TRUE, map.get("transId") + "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoCached() {
            ((AdChannel) a.this).f88139a = true;
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoComplete() {
            a.this.i(4, Boolean.TRUE, "");
            AdService.i(((AdChannel) a.this).f88143e, ((AdChannel) a.this).f88147i, "smallVideoDoneAdSDK", ((AdChannel) a.this).f88145g + "");
        }
    }

    public a() {
        this.f88141c = AdChannel.Type.GDT;
    }

    @Override // com.wufun.union.ad.AdChannel
    public void d(Context context, String str) {
        this.f88143e = context;
        try {
            if (context.getSharedPreferences("PrefDef", 0).getBoolean("sdkInit", false)) {
                return;
            }
            GDTAdSdk.init(context, str);
            GlobalSetting.setChannel(1);
            GlobalSetting.setEnableMediationTool(true);
            this.f88140b = true;
            i(0, Boolean.TRUE, "");
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f88140b = false;
            i(0, Boolean.FALSE, "");
        }
    }

    @Override // com.wufun.union.ad.AdChannel
    public void h(String str, float f10, float f11) {
        if (this.f88143e.getSharedPreferences("PrefDef", 0).getBoolean("sdkInit", false)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            i(1, Boolean.FALSE, "ad code id is must not null");
            return;
        }
        this.f88146h = str;
        this.f88193j = new RewardVideoAD(this.f88143e, str, new C1094a());
        this.f88193j.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().build());
        this.f88193j.loadAD();
    }

    @Override // com.wufun.union.ad.AdChannel
    public void m(Activity activity) {
        this.f88193j.showAD(activity);
        this.f88139a = false;
        if (!this.f88144f || TextUtils.isEmpty(this.f88146h)) {
            return;
        }
        g(this.f88146h);
    }
}
