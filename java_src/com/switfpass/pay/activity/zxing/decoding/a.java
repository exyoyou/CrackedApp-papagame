package com.switfpass.pay.activity.zxing.decoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.switfpass.pay.activity.PaySDKCaptureActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f82605f = "barcode_bitmap";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PaySDKCaptureActivity f82606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Hashtable f82607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f82608d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CountDownLatch f82609e = new CountDownLatch(1);

    public a(PaySDKCaptureActivity paySDKCaptureActivity, Vector vector, String str, ResultPointCallback resultPointCallback) {
        this.f82606b = paySDKCaptureActivity;
        Hashtable hashtable = new Hashtable(3);
        this.f82607c = hashtable;
        if (vector == null || vector.isEmpty()) {
            vector = new Vector();
            vector.addAll(j.f82635b);
            vector.addAll(j.f82636c);
            vector.addAll(j.f82637d);
        }
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, vector);
        if (str != null) {
            hashtable.put(DecodeHintType.CHARACTER_SET, str);
        }
        hashtable.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultPointCallback);
    }

    public final Handler a() {
        try {
            this.f82609e.await();
        } catch (InterruptedException unused) {
        }
        return this.f82608d;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Looper.prepare();
        this.f82608d = new k(this.f82606b, this.f82607c);
        this.f82609e.countDown();
        Looper.loop();
    }
}
