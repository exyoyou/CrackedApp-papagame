package com.zxing.android.decoding;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.zxing.android.CaptureActivity;
import java.util.Vector;

/* JADX INFO: loaded from: classes8.dex */
public final class CaptureActivityHandler extends Handler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f90467d = "CaptureActivityHandler";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CaptureActivity f90468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f90469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private State f90470c;

    private enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandler(CaptureActivity activity, Vector<BarcodeFormat> decodeFormats, String characterSet) {
        this.f90468a = activity;
        e eVar = new e(activity, decodeFormats, characterSet, new com.zxing.android.view.a(activity.d()));
        this.f90469b = eVar;
        eVar.start();
        this.f90470c = State.SUCCESS;
        activity.b().k();
        b();
    }

    private void b() {
        if (this.f90470c == State.SUCCESS) {
            this.f90470c = State.PREVIEW;
            this.f90468a.b().i(this.f90469b.a(), 2);
            this.f90468a.b().h(this, 1);
            this.f90468a.a();
        }
    }

    public void a() {
        this.f90470c = State.DONE;
        this.f90468a.b().l();
        Message.obtain(this.f90469b.a(), 8).sendToTarget();
        try {
            this.f90469b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(4);
        removeMessages(3);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            if (this.f90470c == State.PREVIEW) {
                this.f90468a.b().h(this, 1);
                return;
            }
            return;
        }
        if (i10 == 3) {
            this.f90470c = State.PREVIEW;
            this.f90468a.b().i(this.f90469b.a(), 2);
            return;
        }
        if (i10 == 4) {
            this.f90470c = State.SUCCESS;
            Bundle data = message.getData();
            this.f90468a.e((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i10 == 7) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f90468a.startActivity(intent);
        } else if (i10 == 8) {
            b();
        } else {
            if (i10 != 9) {
                return;
            }
            this.f90468a.setResult(-1, (Intent) message.obj);
            this.f90468a.finish();
        }
    }
}
