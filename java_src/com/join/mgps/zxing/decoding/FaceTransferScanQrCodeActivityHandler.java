package com.join.mgps.zxing.decoding;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FaceTransferScanQrCodeActivity;
import java.util.Vector;

/* JADX INFO: loaded from: classes3.dex */
public class FaceTransferScanQrCodeActivityHandler extends Handler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f73462d = "FaceTransferScanQrCodeActivityHandler";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FaceTransferScanQrCodeActivity f73463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f73464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private State f73465c;

    private enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public FaceTransferScanQrCodeActivityHandler(FaceTransferScanQrCodeActivity activity, Vector<BarcodeFormat> decodeFormats, String characterSet) {
        this.f73463a = activity;
        e eVar = new e(activity, decodeFormats, characterSet, new com.join.mgps.zxing.view.a(activity.getViewfinderView()));
        this.f73464b = eVar;
        eVar.start();
        this.f73465c = State.SUCCESS;
        com.join.mgps.zxing.camera.c.c().l();
        b();
    }

    private void b() {
        if (this.f73465c == State.SUCCESS) {
            this.f73465c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f73464b.a(), R.id.decode);
            com.join.mgps.zxing.camera.c.c().j(this, R.id.auto_focus);
            this.f73463a.drawViewfinder();
        }
    }

    public void a() {
        this.f73465c = State.DONE;
        com.join.mgps.zxing.camera.c.c().m();
        Message.obtain(this.f73464b.a(), R.id.quit).sendToTarget();
        try {
            this.f73464b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(R.id.decode_succeeded);
        removeMessages(R.id.decode_failed);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == R.id.auto_focus) {
            if (this.f73465c == State.PREVIEW) {
                com.join.mgps.zxing.camera.c.c().j(this, R.id.auto_focus);
                return;
            }
            return;
        }
        if (i10 == R.id.restart_preview) {
            b();
            return;
        }
        if (i10 == R.id.decode_succeeded) {
            this.f73465c = State.SUCCESS;
            Bundle data = message.getData();
            this.f73463a.handleDecode((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i10 == R.id.decode_failed) {
            this.f73465c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f73464b.a(), R.id.decode);
        } else if (i10 == R.id.return_scan_result) {
            this.f73463a.setResult(-1, (Intent) message.obj);
            this.f73463a.finish();
        } else if (i10 == R.id.launch_product_query) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f73463a.startActivity(intent);
        }
    }
}
