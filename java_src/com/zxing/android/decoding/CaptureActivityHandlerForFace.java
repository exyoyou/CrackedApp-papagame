package com.zxing.android.decoding;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Vector;

/* JADX INFO: loaded from: classes8.dex */
public final class CaptureActivityHandlerForFace extends Handler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f90471d = "CaptureActivityHandlerForFace";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f90472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f90473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private State f90474c;

    private enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandlerForFace(FaceTransferScanQrCodeActivity activity, Vector<BarcodeFormat> decodeFormats, String characterSet) {
        this.f90472a = activity;
        f fVar = new f(activity, decodeFormats, characterSet, new com.zxing.android.view.a(activity.getViewfinderView()));
        this.f90473b = fVar;
        fVar.start();
        this.f90474c = State.SUCCESS;
        activity.getCameraManager().k();
        b();
    }

    private void b() {
        if (this.f90474c == State.SUCCESS) {
            this.f90474c = State.PREVIEW;
            this.f90472a.getCameraManager().i(this.f90473b.a(), 2);
            this.f90472a.getCameraManager().h(this, 1);
            this.f90472a.drawViewfinder();
        }
    }

    public void a() {
        this.f90474c = State.DONE;
        this.f90472a.getCameraManager().l();
        Message.obtain(this.f90473b.a(), 8).sendToTarget();
        try {
            this.f90473b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(4);
        removeMessages(3);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            if (this.f90474c == State.PREVIEW) {
                this.f90472a.getCameraManager().h(this, 1);
                return;
            }
            return;
        }
        if (i10 == 3) {
            this.f90474c = State.PREVIEW;
            this.f90472a.getCameraManager().i(this.f90473b.a(), 2);
            return;
        }
        if (i10 == 4) {
            this.f90474c = State.SUCCESS;
            Bundle data = message.getData();
            this.f90472a.handleDecode((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i10 == 7) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f90472a.startActivity(intent);
        } else if (i10 == 8) {
            b();
        } else {
            if (i10 != 9) {
                return;
            }
            this.f90472a.setResult(-1, (Intent) message.obj);
            this.f90472a.finish();
        }
    }
}
