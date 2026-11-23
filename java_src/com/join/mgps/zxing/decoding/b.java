package com.join.mgps.zxing.decoding;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.CaptureActivity;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
final class b extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f73471c = "b";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CaptureActivity f73472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MultiFormatReader f73473b;

    b(CaptureActivity activity, Hashtable<DecodeHintType, Object> hints) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f73473b = multiFormatReader;
        multiFormatReader.setHints(hints);
        this.f73472a = activity;
    }

    private void a(byte[] data, int width, int height) {
        Result resultDecodeWithState;
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.join.mgps.zxing.camera.f fVarA = com.join.mgps.zxing.camera.c.c().a(data, width, height);
        try {
            resultDecodeWithState = this.f73473b.decodeWithState(new BinaryBitmap(new HybridBinarizer(fVarA)));
            this.f73473b.reset();
        } catch (Exception unused) {
            this.f73473b.reset();
            resultDecodeWithState = null;
        } catch (Throwable th) {
            this.f73473b.reset();
            throw th;
        }
        if (resultDecodeWithState == null) {
            Message.obtain(this.f73472a.getHandler(), R.id.decode_failed).sendToTarget();
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Found barcode (");
        sb2.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
        sb2.append(" ms):\n");
        sb2.append(resultDecodeWithState.toString());
        Message messageObtain = Message.obtain(this.f73472a.getHandler(), R.id.decode_succeeded, resultDecodeWithState);
        Bundle bundle = new Bundle();
        bundle.putParcelable("barcode_bitmap", fVarA.c());
        messageObtain.setData(bundle);
        messageObtain.sendToTarget();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == R.id.decode) {
            a((byte[]) message.obj, message.arg1, message.arg2);
        } else if (i10 == R.id.quit) {
            Looper.myLooper().quit();
        }
    }
}
