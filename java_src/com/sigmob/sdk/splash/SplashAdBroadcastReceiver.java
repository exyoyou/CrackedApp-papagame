package com.sigmob.sdk.splash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.IntentActions;

/* JADX INFO: loaded from: classes3.dex */
public class SplashAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static IntentFilter f81675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f81676b;

    public SplashAdBroadcastReceiver(e adInteractionListener, String uuid) {
        super(uuid);
        this.f81676b = adInteractionListener;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f81675a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f81675a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_SPLAH_STOP_TIME);
            f81675a.addAction(IntentActions.ACTION_SPLAH_PLAYFAIL);
            f81675a.addAction(IntentActions.ACTION_SPLAH_SKIP);
            f81675a.addAction(IntentActions.ACTION_LANDPAGE_SHOW);
            f81675a.addAction(IntentActions.ACTION_LANDPAGE_DISMISS);
        }
        return f81675a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f81676b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, final Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f81676b != null && a(intent)) {
            String action = intent.getAction();
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) action)) {
                return;
            }
            action.hashCode();
            switch (action) {
                case "action.splash.playFail":
                    this.f81676b.b_();
                    break;
                case "action.splash.play":
                    this.f81676b.d_();
                    break;
                case "action.splash.skip":
                    this.f81676b.c_();
                    break;
                case "action.loadpage.show":
                    this.f81676b.a();
                    break;
                case "action.splash.stoptime":
                    this.f81676b.a_();
                    break;
                case "action.loadpage.dismiss":
                    this.f81676b.b();
                    break;
            }
        }
    }
}
