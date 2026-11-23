package com.sigmob.sdk.videoAd;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;

/* JADX INFO: loaded from: classes3.dex */
public class RewardVideoAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static IntentFilter f81775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f81776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseAdUnit f81777c;

    public RewardVideoAdBroadcastReceiver(BaseAdUnit adUnit, h rewardVideoListener, String broadcastIdentifier) {
        super(broadcastIdentifier);
        this.f81777c = adUnit;
        this.f81776b = rewardVideoListener;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f81775a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f81775a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
            f81775a.addAction(IntentActions.ACTION_REWARDED_VIDEO_SKIP);
            f81775a.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
            f81775a.addAction(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            f81775a.addAction(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
        }
        return f81775a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f81776b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f81776b == null || this.f81777c == null || !a(intent)) {
            return;
        }
        String action = intent.getAction();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) action)) {
            return;
        }
        action.hashCode();
        switch (action) {
            case "action.rewardedvideo.playFail":
                this.f81776b.c(this.f81777c, intent.getStringExtra("error"));
                break;
            case "action.rewardedvideo.play":
                this.f81776b.q(this.f81777c);
                return;
            case "action.rewardedvideo.skip":
                this.f81776b.r(this.f81777c);
                return;
            case "action.rewardedvideo.complete":
                this.f81776b.p(this.f81777c);
                return;
            case "action.rewardedvideo.Close":
                this.f81776b.s(this.f81777c);
                break;
            default:
                return;
        }
        b(this);
        this.f81777c = null;
    }
}
