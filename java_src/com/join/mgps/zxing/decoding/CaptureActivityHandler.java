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
import com.join.mgps.zxing.CaptureActivity;
import java.util.Vector;

/* JADX INFO: loaded from: classes3.dex */
public final class CaptureActivityHandler extends Handler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f73458d = "CaptureActivityHandler";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CaptureActivity f73459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f73460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private State f73461c;

    private enum State {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public CaptureActivityHandler(CaptureActivity activity, Vector<BarcodeFormat> decodeFormats, String characterSet) {
        this.f73459a = activity;
        c cVar = new c(activity, decodeFormats, characterSet, new com.join.mgps.zxing.view.b(activity.getViewfinderView()));
        this.f73460b = cVar;
        cVar.start();
        this.f73461c = State.SUCCESS;
        com.join.mgps.zxing.camera.c.c().l();
        b();
    }

    private void b() {
        if (this.f73461c == State.SUCCESS) {
            this.f73461c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f73460b.a(), R.id.decode);
            com.join.mgps.zxing.camera.c.c().j(this, R.id.auto_focus);
            this.f73459a.drawViewfinder();
        }
    }

    public void a() {
        this.f73461c = State.DONE;
        com.join.mgps.zxing.camera.c.c().m();
        Message.obtain(this.f73460b.a(), R.id.quit).sendToTarget();
        try {
            this.f73460b.join();
        } catch (InterruptedException unused) {
        }
        removeMessages(R.id.decode_succeeded);
        removeMessages(R.id.decode_failed);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == R.id.auto_focus) {
            if (this.f73461c == State.PREVIEW) {
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
            this.f73461c = State.SUCCESS;
            Bundle data = message.getData();
            this.f73459a.handleDecode((Result) message.obj, data == null ? null : (Bitmap) data.getParcelable("barcode_bitmap"));
        } else if (i10 == R.id.decode_failed) {
            this.f73461c = State.PREVIEW;
            com.join.mgps.zxing.camera.c.c().k(this.f73460b.a(), R.id.decode);
        } else if (i10 == R.id.return_scan_result) {
            this.f73459a.setResult(-1, (Intent) message.obj);
            this.f73459a.finish();
        } else if (i10 == R.id.launch_product_query) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String) message.obj));
            intent.addFlags(524288);
            this.f73459a.startActivity(intent);
        }
    }
}
