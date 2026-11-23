package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;

/* JADX INFO: loaded from: classes5.dex */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78855a = "EventForwardingBroadcastReceiver";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static IntentFilter f78856c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BaseAdUnit f78857b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p f78858d;

    public EventForwardingBroadcastReceiver(BaseAdUnit adUnit, p listener, String broadcastIdentifier) {
        super(broadcastIdentifier);
        this.f78857b = adUnit;
        this.f78858d = listener;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f78856c == null) {
            IntentFilter intentFilter = new IntentFilter();
            f78856c = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_INTERSTITIAL_FAIL);
            f78856c.addAction(IntentActions.ACTION_INTERSTITIAL_SHOW);
            f78856c.addAction(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            f78856c.addAction(IntentActions.ACTION_INTERSTITIAL_CLICK);
            f78856c.addAction(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        }
        return f78856c;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f78858d = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f78858d == null || this.f78857b == null || !a(intent)) {
        }
        String requestId = this.f78857b.getRequestId();
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        SigmobLog.d(f78855a + "#onReceive: action = " + action + ", requestId = " + requestId);
        switch (action) {
            case "action.interstitial.dismiss":
                this.f78858d.d(this.f78857b);
                b(this);
                this.f78857b = null;
                break;
            case "action.interstitial.click":
                this.f78858d.c(this.f78857b);
                break;
            case "action.interstitial.vopen":
                this.f78858d.e(this.f78857b);
                break;
            case "action.interstitial.fail":
                this.f78858d.b(this.f78857b, intent.getStringExtra("error"));
                break;
            case "action.interstitial.show":
                this.f78858d.b(this.f78857b);
                break;
        }
    }
}
