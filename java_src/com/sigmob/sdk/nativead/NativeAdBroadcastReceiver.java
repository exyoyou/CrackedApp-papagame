package com.sigmob.sdk.nativead;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.IntentActions;

/* JADX INFO: loaded from: classes3.dex */
public class NativeAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static IntentFilter f81329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f81330b;

    public NativeAdBroadcastReceiver(g listener, String broadcastIdentifier) {
        super(broadcastIdentifier);
        this.f81330b = listener;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f81329a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f81329a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_NATIVE_TEMPLIE_SHOW);
            f81329a.addAction(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
            f81329a.addAction(IntentActions.ACTION_NATIVE_TEMPLE_DISMISS);
            f81329a.addAction(IntentActions.ACTION_LANDPAGE_SHOW);
            f81329a.addAction(IntentActions.ACTION_LANDPAGE_DISMISS);
        }
        return f81329a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f81330b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f81330b != null && a(intent)) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                return;
            }
            action.hashCode();
            switch (action) {
                case "action.native.temple.dismiss":
                    this.f81330b.i();
                    break;
                case "action.native.temple.click":
                    this.f81330b.h();
                    break;
                case "action.native.temple.show":
                    this.f81330b.g();
                    break;
                case "action.loadpage.show":
                    this.f81330b.a();
                    break;
                case "action.loadpage.dismiss":
                    this.f81330b.b();
                    break;
            }
        }
    }
}
