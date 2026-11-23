package com.zxing.android.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.zxing.android.CaptureActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes8.dex */
final class e extends Thread {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f90487f = "barcode_bitmap";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CaptureActivity f90488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f90489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f90490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CountDownLatch f90491e = new CountDownLatch(1);

    e(CaptureActivity activity, Vector<BarcodeFormat> decodeFormats, String characterSet, ResultPointCallback resultPointCallback) {
        this.f90488b = activity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>(3);
        this.f90489c = hashtable;
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
            this.f90491e.await();
        } catch (InterruptedException unused) {
        }
        return this.f90490d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f90490d = new c(this.f90488b, this.f90489c);
        this.f90491e.countDown();
        Looper.loop();
    }
}
