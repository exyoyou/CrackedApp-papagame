package com.sigmob.sdk.nativead;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.IntentActions;

/* JADX INFO: loaded from: classes3.dex */
public class APKStatusBroadcastReceiver extends BaseBroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.sigmob.sdk.base.common.b f81325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    IntentFilter f81326b;

    public APKStatusBroadcastReceiver(com.sigmob.sdk.base.common.b listener, String broadcastIdentifier) {
        super(broadcastIdentifier);
        this.f81325a = listener;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (this.f81326b == null) {
            IntentFilter intentFilter = new IntentFilter();
            this.f81326b = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_START);
            this.f81326b.addAction(IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_PAUSE);
            this.f81326b.addAction(IntentActions.ACTION_INTERSTITIAL_DOWNLOAD_END);
            this.f81326b.addAction(IntentActions.ACTION_INTERSTITIAL_INSTALL_START);
            this.f81326b.addAction(IntentActions.ACTION_INTERSTITIAL_INSTALL_END);
        }
        return this.f81326b;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f81325a = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f81325a == null || !a(intent) || (action = intent.getAction()) == null) {
            return;
        }
        boolean zEqualsIgnoreCase = "1".equalsIgnoreCase(intent.getStringExtra("result"));
        long longExtra = intent.getLongExtra("downloadId", -1L);
        switch (action) {
            case "action.interstitial.download.end":
                this.f81325a.b(zEqualsIgnoreCase, longExtra);
                break;
            case "action.interstitial.download.pause":
                this.f81325a.c(zEqualsIgnoreCase, longExtra);
                break;
            case "action.interstitial.download.start":
                this.f81325a.a(zEqualsIgnoreCase, longExtra);
                break;
            case "action.interstitial.install.end":
                this.f81325a.b(zEqualsIgnoreCase);
                break;
            case "action.interstitial.install.start":
                this.f81325a.a(zEqualsIgnoreCase);
                break;
        }
    }
}
