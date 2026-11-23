package com.zxing.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.Toast;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.decoding.CaptureActivityHandler;
import com.zxing.android.decoding.h;
import com.zxing.android.view.ViewfinderView;
import java.io.IOException;
import java.util.Vector;

/* JADX INFO: loaded from: classes8.dex */
public class CaptureActivity extends Activity implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f90396n = "RESULT";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final long f90397o = 200;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CaptureActivityHandler f90398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewfinderView f90399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SurfaceView f90400d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f90401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Vector<BarcodeFormat> f90402f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f90403g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private h f90404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MediaPlayer f90405i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f90406j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f90407k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.zxing.android.camera.c f90408l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final MediaPlayer.OnCompletionListener f90409m = new c();

    class a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Result f90410b;

        a(final Result val$rawResult) {
            this.f90410b = val$rawResult;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            Intent intent = new Intent();
            intent.putExtra("result", this.f90410b.getText());
            CaptureActivity.this.setResult(-1, intent);
            CaptureActivity.this.finish();
        }
    }

    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            CaptureActivity.this.i(0L);
        }
    }

    class c implements MediaPlayer.OnCompletionListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            mediaPlayer.seekTo(0);
        }
    }

    private void f() {
        if (this.f90406j && this.f90405i == null) {
            setVolumeControlStream(3);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f90405i = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.f90405i.setOnCompletionListener(this.f90409m);
            try {
                AssetFileDescriptor assetFileDescriptorOpenFd = getAssets().openFd("qrbeep.ogg");
                this.f90405i.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
                this.f90405i.setVolume(0.1f, 0.1f);
                this.f90405i.prepare();
            } catch (IOException unused) {
                this.f90405i = null;
            }
        }
    }

    private void g(SurfaceHolder surfaceHolder) {
        try {
            this.f90408l.f(surfaceHolder);
            if (this.f90398b == null) {
                this.f90398b = new CaptureActivityHandler(this, this.f90402f, this.f90403g);
            }
        } catch (IOException | RuntimeException unused) {
        }
    }

    private void h() {
        MediaPlayer mediaPlayer;
        if (this.f90406j && (mediaPlayer = this.f90405i) != null) {
            mediaPlayer.start();
        }
        if (this.f90407k) {
            ((Vibrator) getSystemService("vibrator")).vibrate(200L);
        }
    }

    private void j(final Result rawResult, Bitmap barcode) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setIcon(new BitmapDrawable(barcode));
        builder.setTitle("类型:" + rawResult.getBarcodeFormat() + "\n 结果：" + rawResult.getText());
        builder.setPositiveButton("确定", new a(rawResult));
        builder.setNegativeButton("重新扫描", new b());
        builder.setCancelable(false);
        builder.show();
    }

    public void a() {
        this.f90399c.c();
    }

    public com.zxing.android.camera.c b() {
        return this.f90408l;
    }

    public Handler c() {
        return this.f90398b;
    }

    public ViewfinderView d() {
        return this.f90399c;
    }

    public void e(Result result, Bitmap barcode) {
        this.f90404h.b();
        h();
        String text = result.getText();
        if (text.equals("")) {
            Toast.makeText(this, "Scan failed!", 0).show();
        } else {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString("result", text);
            intent.putExtras(bundle);
            setResult(-1, intent);
        }
        finish();
    }

    public void i(long delayMS) {
        CaptureActivityHandler captureActivityHandler = this.f90398b;
        if (captureActivityHandler != null) {
            captureActivityHandler.sendEmptyMessageDelayed(8, delayMS);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.activity_capture);
        this.f90400d = (SurfaceView) findViewById(R.id.surfaceview);
        this.f90399c = (ViewfinderView) findViewById(R.id.viewfinderview);
        getWindow().addFlags(128);
        this.f90401e = false;
        this.f90404h = new h(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.f90404h.c();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            setResult(0);
            finish();
            return true;
        }
        if (keyCode == 80 || keyCode == 27) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CaptureActivityHandler captureActivityHandler = this.f90398b;
        if (captureActivityHandler != null) {
            captureActivityHandler.a();
            this.f90398b = null;
        }
        this.f90408l.b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getRequestedOrientation() != 1) {
            setRequestedOrientation(1);
        }
        com.zxing.android.camera.c cVar = new com.zxing.android.camera.c(getApplication());
        this.f90408l = cVar;
        this.f90399c.setCameraManager(cVar);
        SurfaceHolder holder = this.f90400d.getHolder();
        if (this.f90401e) {
            g(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.f90402f = null;
        this.f90403g = null;
        this.f90406j = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.f90406j = false;
        }
        f();
        this.f90407k = true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        if (this.f90401e) {
            return;
        }
        this.f90401e = true;
        g(holder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        this.f90401e = false;
    }
}
