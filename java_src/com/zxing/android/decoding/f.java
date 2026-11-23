package com.zxing.android.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes8.dex */
final class f extends Thread {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f90492f = "barcode_bitmap";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f90493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f90494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f90495d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CountDownLatch f90496e = new CountDownLatch(1);

    f(FaceTransferScanQrCodeActivity activity, Vector<BarcodeFormat> decodeFormats, String characterSet, ResultPointCallback resultPointCallback) {
        this.f90493b = activity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        this.f90494c = hashtable;
        if (decodeFormats == null || decodeFormats.isEmpty()) {
            decodeFormats = new Vector<>();
            decodeFormats.addAll(b.f90478c);
            decodeFormats.addAll(b.f90479d);
            decodeFormats.addAll(b.f90480e);
        }
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, decodeFormats);
        if (characterSet != null) {
            hashtable.put(DecodeHintType.CHARACTER_SET, characterSet);
        }
        hashtable.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultPointCallback);
    }

    Handler a() {
        try {
            this.f90496e.await();
        } catch (InterruptedException unused) {
        }
        return this.f90495d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f90495d = new d(this.f90493b, this.f90494c);
        this.f90496e.countDown();
        Looper.loop();
    }
}
