package com.switfpass.pay.activity;

import android.os.CountDownTimer;
import com.haima.hmcp.cloud.BaseCloudFileManager;

/* JADX INFO: loaded from: classes2.dex */
final class u extends CountDownTimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f82545a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(QrcodeActivity qrcodeActivity) {
        super(BaseCloudFileManager.STOKEN_VALID_TIME, 2000L);
        this.f82545a = qrcodeActivity;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        this.f82545a.runOnUiThread(new v(this));
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
        if (QrcodeActivity.e(this.f82545a) != null) {
            QrcodeActivity qrcodeActivity = this.f82545a;
            QrcodeActivity.a(qrcodeActivity, QrcodeActivity.e(qrcodeActivity).getTokenId(), QrcodeActivity.e(this.f82545a).getMchId());
        }
    }
}
