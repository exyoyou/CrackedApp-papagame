package com.alipay.security.mobile.module.deviceinfo;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes7.dex */
final class g extends PhoneStateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f7305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ TelephonyManager f7306b;

    g(f fVar, TelephonyManager telephonyManager) {
        this.f7305a = fVar;
        this.f7306b = telephonyManager;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
        super.onSignalStrengthsChanged(signalStrength);
        if (signalStrength != null) {
            this.f7305a.f7304l = signalStrength.getGsmSignalStrength();
        }
        this.f7306b.listen(this, 0);
    }
}
