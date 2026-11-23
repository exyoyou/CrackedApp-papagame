package com.switfpass.pay.activity.zxing.decoding;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.join.android.app.mgsim.wufun.R;
import com.switfpass.pay.activity.PaySDKCaptureActivity;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes2.dex */
final class k extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f82638c = "k";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PaySDKCaptureActivity f82639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MultiFormatReader f82640b;

    k(PaySDKCaptureActivity paySDKCaptureActivity, Hashtable hashtable) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f82640b = multiFormatReader;
        multiFormatReader.setHints(hashtable);
        this.f82639a = paySDKCaptureActivity;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Result resultDecodeWithState;
        int i10 = message.what;
        if (i10 != R.dimen.abc_action_bar_content_inset_with_nav) {
            if (i10 == R.dimen.abc_action_bar_overflow_padding_end_material) {
                Looper.myLooper().quit();
                return;
            }
            return;
        }
        byte[] bArr = (byte[]) message.obj;
        int i11 = message.arg1;
        int i12 = message.arg2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        byte[] bArr2 = new byte[bArr.length];
        for (int i13 = 0; i13 < i12; i13++) {
            for (int i14 = 0; i14 < i11; i14++) {
                bArr2[(((i14 * i12) + i12) - i13) - 1] = bArr[(i13 * i11) + i14];
            }
        }
        com.switfpass.pay.activity.zxing.camera.b bVarA = com.switfpass.pay.activity.zxing.camera.a.c().a(bArr2, i12, i11);
        try {
            resultDecodeWithState = this.f82640b.decodeWithState(new BinaryBitmap(new HybridBinarizer(bVarA)));
            this.f82640b.reset();
        } catch (ReaderException unused) {
            this.f82640b.reset();
            resultDecodeWithState = null;
        } catch (Throwable th) {
            this.f82640b.reset();
            throw th;
        }
        if (resultDecodeWithState == null) {
            Message.obtain(this.f82639a.getHandler(), R.dimen.abc_action_bar_default_height_material).sendToTarget();
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder("Found barcode (");
        sb2.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
        sb2.append(" ms):\n");
        sb2.append(resultDecodeWithState.toString());
        Message messageObtain = Message.obtain(this.f82639a.getHandler(), R.dimen.abc_action_bar_default_padding_end_material, resultDecodeWithState);
        Bundle bundle = new Bundle();
        bundle.putParcelable("barcode_bitmap", bVarA.c());
        messageObtain.setData(bundle);
        messageObtain.sendToTarget();
    }
}
