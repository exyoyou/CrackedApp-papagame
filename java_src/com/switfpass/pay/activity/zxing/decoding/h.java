package com.switfpass.pay.activity.zxing.decoding;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.switfpass.pay.activity.PaySDKCaptureActivity;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends Handler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f82629d = "h";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PaySDKCaptureActivity f82630a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f82631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f82632c;

    public h(PaySDKCaptureActivity paySDKCaptureActivity, Vector vector, String str) {
        this.f82630a = paySDKCaptureActivity;
        a aVar = new a(paySDKCaptureActivity, vector, str, new i(paySDKCaptureActivity.getViewfinderView()));
        this.f82631b = aVar;
        aVar.start();
        this.f82632c = d.SUCCESS;
        com.switfpass.pay.activity.zxing.camera.a.c().j();
        a();
    }

    private void a() {
        if (this.f82632c == d.SUCCESS) {
            this.f82632c = d.PREVIEW;
            com.switfpass.pay.activity.zxing.camera.a.c().i(this.f82631b.a(), R.dimen.abc_action_bar_content_inset_with_nav);
            com.switfpass.pay.activity.zxing.camera.a.c().h(this, R.dimen.abc_action_bar_content_inset_material);
            this.f82630a.drawViewfinder();
        }
    }

    public final void b() {
        this.f82632c = d.DONE;
        com.switfpass.pay.activity.zxing.camera.a.c().k();
        Message.obtain(this.f82631b.a(), R.dimen.abc_action_bar_overflow_padding_end_material).sendToTarget();
        try {
            this.f82631b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(R.dimen.abc_action_bar_default_padding_end_material);
        removeMessages(R.dimen.abc_action_bar_default_height_material);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == R.dimen.abc_action_bar_content_inset_material) {
            if (this.f82632c == d.PREVIEW) {
                com.switfpass.pay.activity.zxing.camera.a.c().h(this, R.dimen.abc_action_bar_content_inset_material);
                return;
            }
            return;
        }
        if (i10 == R.dimen.abc_action_bar_overflow_padding_start_material) {
            a();
            return;
        }
        if (i10 == R.dimen.abc_action_bar_default_padding_end_material) {
            this.f82632c = d.SUCCESS;
            Bundle data = message.getData();
            if (data != null) {
                data.getParcelable("barcode_bitmap");
            }
            this.f82630a.submitData(((Result) message.obj).getText(), true);
            return;
        }
        if (i10 == R.dimen.abc_action_bar_default_height_material) {
            this.f82632c = d.PREVIEW;
            com.switfpass.pay.activity.zxing.camera.a.c().i(this.f82631b.a(), R.dimen.abc_action_bar_content_inset_with_nav);
        } else if (i10 == R.dimen.abc_action_bar_stacked_max_height) {
            String text = ((Result) message.obj).getText();
            Intent intent = new Intent();
            intent.putExtra("code", text);
            this.f82630a.setResult(-1, intent);
            this.f82630a.finish();
        }
    }
}
