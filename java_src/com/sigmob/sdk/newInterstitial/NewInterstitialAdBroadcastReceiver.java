package com.sigmob.sdk.newInterstitial;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;

/* JADX INFO: loaded from: classes3.dex */
public class NewInterstitialAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static IntentFilter f81586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f81587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseAdUnit f81588c;

    public NewInterstitialAdBroadcastReceiver(BaseAdUnit adUnit, e listener, String broadcastIdentifier) {
        super(broadcastIdentifier);
        this.f81588c = adUnit;
        this.f81587b = listener;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f81586a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f81586a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAY);
            f81586a.addAction(IntentActions.ACTION_REWARDED_VIDEO_SKIP);
            f81586a.addAction(IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
            f81586a.addAction(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            f81586a.addAction(IntentActions.ACTION_REWARDED_VIDEO_CLOSE);
        }
        return f81586a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f81587b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f81587b == null || this.f81588c == null || !a(intent)) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return;
        }
        action.hashCode();
        switch (action) {
            case "action.rewardedvideo.playFail":
                this.f81587b.c(this.f81588c, intent.getStringExtra("error"));
                break;
            case "action.rewardedvideo.play":
                this.f81587b.r(this.f81588c);
                return;
            case "action.rewardedvideo.skip":
                this.f81587b.q(this.f81588c);
                return;
            case "action.rewardedvideo.Close":
                this.f81587b.p(this.f81588c);
                break;
            default:
                return;
        }
        b(this);
        this.f81588c = null;
    }
}
