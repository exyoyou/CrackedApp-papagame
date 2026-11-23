package com.join.mgps.zxing.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes3.dex */
public class e extends Thread {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f73482f = "barcode_bitmap";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f73483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f73484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f73485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CountDownLatch f73486e = new CountDownLatch(1);

    e(FaceTransferScanQrCodeActivity activity, Vector<BarcodeFormat> decodeFormats, String characterSet, ResultPointCallback resultPointCallback) {
        this.f73483b = activity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        this.f73484c = hashtable;
        if (decodeFormats == null || decodeFormats.isEmpty()) {
            decodeFormats = new Vector<>();
            decodeFormats.addAll(a.f73468c);
            decodeFormats.addAll(a.f73469d);
            decodeFormats.addAll(a.f73470e);
        }
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, decodeFormats);
        if (characterSet != null) {
            hashtable.put(DecodeHintType.CHARACTER_SET, characterSet);
        }
        hashtable.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultPointCallback);
    }

    Handler a() {
        try {
            this.f73486e.await();
        } catch (InterruptedException unused) {
        }
        return this.f73485d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f73485d = new d(this.f73483b, this.f73484c);
        this.f73486e.countDown();
        Looper.loop();
    }
}
