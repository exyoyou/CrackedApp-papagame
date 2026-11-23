package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.helper.ApWifiManager;
import com.join.mgps.service.SocketClientService;
import com.zxing.android.decoding.CaptureActivityHandlerForFace;
import com.zxing.android.view.ViewfinderView;
import java.io.IOException;
import java.util.Vector;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
public class FaceTransferScanQrCodeActivity extends BaseLoadingActivity implements SurfaceHolder.Callback {
    private static final float BEEP_VOLUME = 0.1f;
    public static final int REQUEST_CODE_ASK_CAMERA = 123;
    private static final String TAG = "FaceTransferScanQrCodeActivity";
    private static final long VIBRATE_DURATION = 200;
    ApWifiManager apWifiManager;
    private ImageView back_img;
    com.zxing.android.camera.c cameraManager;
    private String characterSet;
    private boolean connectSuccess;
    private Vector<BarcodeFormat> decodeFormats;
    private CaptureActivityHandlerForFace handler;
    private boolean hasSurface;
    private com.join.mgps.zxing.decoding.g inactivityTimer;
    Context mContext;
    private MediaPlayer mediaPlayer;
    private boolean playBeep;
    SurfaceView surfaceView;
    private TextView title_txt;
    private boolean vibrate;
    private ViewfinderView viewfinderView;
    WifiUtils wifiUtil = null;
    com.join.mgps.Util.k mApWifiUtil = null;
    String SSID = null;
    String PWD = null;
    NetWorkConnectedReceiver receiver = null;
    boolean openWifi = false;
    boolean hasConnectedWifi = false;
    boolean serviceBound = false;
    Runnable operate2 = new Runnable() { // from class: com.join.mgps.activity.c1
        @Override // java.lang.Runnable
        public final void run() {
            this.f56876b.lambda$new$0();
        }
    };
    Runnable operate1 = new Runnable() { // from class: com.join.mgps.activity.d1
        @Override // java.lang.Runnable
        public final void run() {
            this.f56906b.lambda$new$1();
        }
    };
    SocketClientService.a mBinder = null;
    ServiceConnection connection = new b();
    private final MediaPlayer.OnCompletionListener beepListener = new c();

    class NetWorkConnectedReceiver extends BroadcastReceiver {
        NetWorkConnectedReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Parcelable parcelableExtra;
            String action = intent.getAction();
            if ("android.net.wifi.WIFI_STATE_CHANGED".equals(action)) {
                int intExtra = intent.getIntExtra("wifi_state", 0);
                if (intExtra == 1) {
                    String unused = FaceTransferScanQrCodeActivity.TAG;
                } else if (intExtra == 3) {
                    String unused2 = FaceTransferScanQrCodeActivity.TAG;
                    FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity = FaceTransferScanQrCodeActivity.this;
                    if (faceTransferScanQrCodeActivity.openWifi) {
                        faceTransferScanQrCodeActivity.connectApWifi();
                    }
                }
            }
            if (!"android.net.wifi.STATE_CHANGE".equals(action) || (parcelableExtra = intent.getParcelableExtra("networkInfo")) == null) {
                return;
            }
            int i10 = d.f51414a[((NetworkInfo) parcelableExtra).getState().ordinal()];
            if (i10 != 1) {
                if (i10 != 4) {
                    return;
                }
                String unused3 = FaceTransferScanQrCodeActivity.TAG;
                return;
            }
            String ssid = WifiUtils.getInstance(FaceTransferScanQrCodeActivity.this.mContext).getSSID(FaceTransferScanQrCodeActivity.this.mContext);
            String unused4 = FaceTransferScanQrCodeActivity.TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onReceive: wifi 连接上的名称");
            sb2.append(ssid);
            if (ssid == null || !ssid.equals(FaceTransferScanQrCodeActivity.this.SSID)) {
                return;
            }
            FaceTransferScanQrCodeActivity faceTransferScanQrCodeActivity2 = FaceTransferScanQrCodeActivity.this;
            if (faceTransferScanQrCodeActivity2.hasConnectedWifi) {
                return;
            }
            faceTransferScanQrCodeActivity2.connected2Service();
            FaceTransferScanQrCodeActivity.this.hasConnectedWifi = true;
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FaceTransferScanQrCodeActivity.this.finish();
        }
    }

    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder instanceof SocketClientService.a) {
                SocketClientService.a aVar = (SocketClientService.a) iBinder;
                FaceTransferScanQrCodeActivity.this.mBinder = aVar;
                aVar.newSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
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

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f51414a;

        static {
            int[] iArr = new int[NetworkInfo.State.values().length];
            f51414a = iArr;
            try {
                iArr[NetworkInfo.State.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51414a[NetworkInfo.State.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51414a[NetworkInfo.State.CONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51414a[NetworkInfo.State.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51414a[NetworkInfo.State.DISCONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f51414a[NetworkInfo.State.SUSPENDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void getPermission() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, 123);
        } else {
            startCameral();
        }
    }

    private void initBeepSound() {
        if (this.playBeep && this.mediaPlayer == null) {
            setVolumeControlStream(3);
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mediaPlayer = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.mediaPlayer.setOnCompletionListener(this.beepListener);
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = getResources().openRawResourceFd(R.raw.jiejitoubi);
            try {
                this.mediaPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
                assetFileDescriptorOpenRawResourceFd.close();
                this.mediaPlayer.setVolume(0.1f, 0.1f);
                this.mediaPlayer.prepare();
            } catch (IOException unused) {
                this.mediaPlayer = null;
            }
        }
    }

    private void initCamera(SurfaceHolder surfaceHolder) {
        try {
            this.cameraManager.f(surfaceHolder);
            if (this.handler == null) {
                this.handler = new CaptureActivityHandlerForFace(this, this.decodeFormats, this.characterSet);
            }
        } catch (IOException | RuntimeException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        try {
            if (this.connectSuccess) {
                return;
            }
            Toast.makeText(this, "连接失败，请手动连接网络:" + this.SSID, 0).show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        try {
            if (this.connectSuccess) {
                return;
            }
            com.join.mgps.Util.q3.h(this).a(com.join.mgps.Util.q3.c(this.SSID, this.PWD, 1));
            ((BaseLoadingActivity) this).mHandler.postDelayed(this.operate2, 7000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void playBeepSoundAndVibrate() {
        MediaPlayer mediaPlayer;
        if (this.playBeep && (mediaPlayer = this.mediaPlayer) != null) {
            mediaPlayer.start();
        }
        if (this.vibrate) {
            ((Vibrator) getSystemService("vibrator")).vibrate(200L);
        }
    }

    private void startCameral() {
        SurfaceView surfaceView = (SurfaceView) findViewById(R.id.preview_view);
        this.surfaceView = surfaceView;
        SurfaceHolder holder = surfaceView.getHolder();
        if (this.hasSurface) {
            initCamera(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.decodeFormats = null;
        this.characterSet = null;
        this.playBeep = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.playBeep = false;
        }
        initBeepSound();
        this.vibrate = true;
    }

    void connectApWifi() {
        showLoadingLayout();
        this.apWifiManager.connectApWifi(this.SSID, this.PWD);
        try {
            Handler handler = ((BaseLoadingActivity) this).mHandler;
            if (handler != null) {
                handler.postDelayed(this.operate2, 12000L);
            }
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
        }
    }

    void connected2Service() {
        Intent intent = new Intent(this, (Class<?>) SocketClientService.class);
        String localIPAddress = this.wifiUtil.getLocalIPAddress();
        String str = localIPAddress.substring(0, localIPAddress.lastIndexOf(com.join.mgps.Util.o0.f49827a)) + ".1";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connected2Service: host");
        sb2.append(str);
        sb2.append(":::本地地址:::");
        sb2.append(localIPAddress);
        intent.putExtra(u.c.f97430f, str);
        bindService(intent, this.connection, 1);
        startService(intent);
        this.serviceBound = true;
    }

    public void drawViewfinder() {
        this.viewfinderView.c();
    }

    public com.zxing.android.camera.c getCameraManager() {
        return this.cameraManager;
    }

    public Handler getHandler() {
        return this.handler;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.scan_qr_code_fl;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingMarginTop() {
        String str = Build.MODEL;
        return (TextUtils.isEmpty(str) || !str.equals("HM 1SLTETD")) ? super.getLoadingMarginTop() : (int) (((double) super.getLoadingMarginTop()) * 1.5d);
    }

    public ViewfinderView getViewfinderView() {
        return this.viewfinderView;
    }

    void goGameTransfer() {
        Intent intent = new Intent(this, (Class<?>) GameTransferActivity_.class);
        Bundle bundle = new Bundle();
        bundle.putInt(GameTransferActivity_.FLAG_EXTRA, 1);
        intent.putExtras(bundle);
        startActivity(intent);
        finish();
    }

    public void handleDecode(Result result, Bitmap barcode) {
        this.inactivityTimer.b();
        playBeepSoundAndVibrate();
        String text = result.getText();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("handleDecode: 扫描结果");
        sb2.append(text);
        if (text.equals("")) {
            Toast.makeText(this, "Scan failed!", 0).show();
            return;
        }
        String[] strArrSplit = text.split(":");
        int length = strArrSplit.length;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("handleDecode: 扫描结果::::");
        sb3.append(strArrSplit.toString());
        sb3.append(":::::size::::");
        sb3.append(length);
        if (length != 4) {
            Toast.makeText(this, R.string.erro_scan_qr_code, 0).show();
            return;
        }
        this.SSID = strArrSplit[1];
        this.PWD = strArrSplit[3];
        if (this.wifiUtil.isWifiEnable()) {
            connectApWifi();
        } else {
            this.openWifi = true;
            this.mApWifiUtil.f();
            this.wifiUtil.openWifi(this.mContext);
        }
        this.surfaceView.setVisibility(8);
        this.viewfinderView.setVisibility(8);
        registWifiConnected();
    }

    void initView() {
        this.viewfinderView = (ViewfinderView) findViewById(R.id.viewfinder_view);
        this.title_txt = (TextView) findViewById(R.id.title_textview);
        ImageView imageView = (ImageView) findViewById(R.id.back_image);
        this.back_img = imageView;
        imageView.setOnClickListener(new a());
        this.title_txt.setText(R.string.title_scan_qr_code);
        this.hasSurface = false;
        this.inactivityTimer = new com.join.mgps.zxing.decoding.g(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.cameraManager = new com.zxing.android.camera.c(this);
        setLoadingHintMsg(getResources().getString(R.string.success_scan_qr_code_loading_hint));
        setContentView(R.layout.face_transfer_scan_qr_code_activity);
        this.mContext = getApplicationContext();
        this.apWifiManager = new ApWifiManager(this.mContext);
        this.wifiUtil = WifiUtils.getInstance(this.mContext);
        this.mApWifiUtil = com.join.mgps.Util.k.i(this.mContext);
        hideLoadingLayout();
        initView();
        getPermission();
        org.greenrobot.eventbus.c.f().v(this);
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.inactivityTimer.c();
        unRegistWifiConnected();
        removeCallbacks();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            stopService();
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        CaptureActivityHandlerForFace captureActivityHandlerForFace = this.handler;
        if (captureActivityHandlerForFace != null) {
            captureActivityHandlerForFace.a();
            this.handler = null;
        }
        this.cameraManager.b();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode != 123) {
            super.onRequestPermissionsResult(requestCode, permissions, grantResults);
            return;
        }
        if (grantResults[0] == 0) {
            startCameral();
        } else if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.CAMERA")) {
            Toast.makeText(this, "没有获取到权限,请授权相机权限", 0).show();
        } else {
            Toast.makeText(this, "扫描二维码需要相机权限,请授权相机权限", 0).show();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getRequestedOrientation() != 1) {
            setRequestedOrientation(1);
        }
        com.zxing.android.camera.c cVar = new com.zxing.android.camera.c(getApplication());
        this.cameraManager = cVar;
        this.viewfinderView.setCameraManager(cVar);
        SurfaceHolder holder = this.surfaceView.getHolder();
        if (this.hasSurface) {
            initCamera(holder);
        } else {
            holder.addCallback(this);
            holder.setType(3);
        }
        this.decodeFormats = null;
        this.characterSet = null;
        this.playBeep = true;
        if (((AudioManager) getSystemService("audio")).getRingerMode() != 2) {
            this.playBeep = false;
        }
        initBeepSound();
        this.vibrate = true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSocketStatusEvent(com.join.mgps.socket.entity.f bean) {
        String str = TAG;
        com.join.mgps.Util.h1.e(str, "onSocketStatusEvent: 0000");
        if (bean == null) {
            return;
        }
        int i10 = bean.f73035a;
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            stopService();
            finish();
            return;
        }
        com.join.mgps.Util.h1.e(str, "onSocketStatusEvent: 成功");
        this.connectSuccess = true;
        com.papa.sim.statistic.t.l(this).l0(AccountUtil_.getInstance_(this).getUid());
        goGameTransfer();
    }

    void registWifiConnected() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        NetWorkConnectedReceiver netWorkConnectedReceiver = new NetWorkConnectedReceiver();
        this.receiver = netWorkConnectedReceiver;
        registerReceiver(netWorkConnectedReceiver, intentFilter);
    }

    void removeCallbacks() {
        Handler handler = ((BaseLoadingActivity) this).mHandler;
        if (handler == null) {
            return;
        }
        try {
            handler.removeCallbacks(this.operate1);
            ((BaseLoadingActivity) this).mHandler.removeCallbacks(this.operate2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void stopService() {
        if (this.serviceBound) {
            unbindService(this.connection);
            stopService(new Intent(this, (Class<?>) SocketClientService.class));
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        if (this.hasSurface) {
            return;
        }
        this.hasSurface = true;
        initCamera(holder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        this.hasSurface = false;
    }

    void unRegistWifiConnected() {
        NetWorkConnectedReceiver netWorkConnectedReceiver = this.receiver;
        if (netWorkConnectedReceiver != null) {
            unregisterReceiver(netWorkConnectedReceiver);
        }
    }
}
