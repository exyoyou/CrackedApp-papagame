package com.zxing.android.decoding;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.zxing.android.CaptureActivity;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes8.dex */
final class c extends Handler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f90481c = "c";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CaptureActivity f90482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MultiFormatReader f90483b;

    c(CaptureActivity activity, Hashtable<DecodeHintType, Object> hints) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f90483b = multiFormatReader;
        multiFormatReader.setHints(hints);
        this.f90482a = activity;
    }

    private void a(byte[] data, int width, int height) {
        Result resultDecodeWithState;
        long jCurrentTimeMillis = System.currentTimeMillis();
        byte[] bArr = new byte[data.length];
        for (int i10 = 0; i10 < height; i10++) {
            for (int i11 = 0; i11 < width; i11++) {
                bArr[(((i11 * height) + height) - i10) - 1] = data[(i10 * width) + i11];
            }
        }
        com.zxing.android.camera.e eVarA = this.f90482a.b().a(bArr, height, width);
        try {
            resultDecodeWithState = this.f90483b.decodeWithState(new BinaryBitmap(new HybridBinarizer(eVarA)));
            this.f90483b.reset();
        } catch (ReaderException unused) {
            this.f90483b.reset();
            resultDecodeWithState = null;
        } catch (Throwable th) {
            this.f90483b.reset();
            throw th;
        }
        if (resultDecodeWithState == null) {
            Message.obtain(this.f90482a.c(), 3).sendToTarget();
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Found barcode (");
        sb2.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
        sb2.append(" ms):\n");
        sb2.append(resultDecodeWithState.toString());
        Message messageObtain = Message.obtain(this.f90482a.c(), 4, resultDecodeWithState);
        Bundle bundle = new Bundle();
        bundle.putParcelable("barcode_bitmap", eVarA.a());
        messageObtain.setData(bundle);
        messageObtain.sendToTarget();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 2) {
            a((byte[]) message.obj, message.arg1, message.arg2);
        } else {
            if (i10 != 8) {
                return;
            }
            Looper.myLooper().quit();
        }
    }
}
