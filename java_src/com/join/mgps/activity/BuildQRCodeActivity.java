package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.baseactivity.BaseLoadingActivity;
import com.join.mgps.helper.ApWifiManager;
import com.join.mgps.receiver.WifiAPBroadcastReceiver;
import com.join.mgps.service.SocketServerService;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.androidannotations.annotations.AfterInject;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_build_qr_code)
public class BuildQRCodeActivity extends BaseLoadingActivity {
    private static final int POOL_SIZE = 2;
    private static final String TAG = "BuildQRCodeActivity";
    ApWifiManager apWifiManager;
    com.join.mgps.Util.k apWifiUtil;

    @ViewById(R.id.build_qr_code_title)
    RelativeLayout build_qr_code_title;

    @ViewById(R.id.title_textview)
    TextView hearTitleTxt;
    Context mContex;
    ImageView qr_code_img;
    ApWifiConnectedReceiver receiver;

    @Extra(BuildQRCodeActivity_.SSID_EXTRA)
    String ssid;
    TextView ssidTxt;

    @StringRes(R.string.hint_msg_create_ap_wifi_failed)
    String str_create_ap_wifi_failed_hint;

    @StringRes(R.string.hint_msg_creating_ap_wifi)
    String str_creating_ap_wifi_hint;

    @StringRes(R.string.title_build_qr_code)
    String title;

    @ViewById(R.id.qr_code_vstub)
    ViewStub viewStub;
    ExecutorService mExecutor = null;
    Future<?> future = null;
    com.join.mgps.task.a createApWifiThread = null;
    private String SSID = null;
    String pwd = "";
    boolean connectedSuccess = false;
    boolean serviceBound = false;
    SocketServerService.a mBinder = null;
    ServiceConnection connection = new a();

    class ApWifiConnectedReceiver extends BroadcastReceiver {
        ApWifiConnectedReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (WifiAPBroadcastReceiver.f72281b.equals(intent.getAction()) && intent.getIntExtra("wifi_state", 0) == 11) {
                Toast.makeText(BuildQRCodeActivity.this.mContex, "热点已关闭", 0).show();
                BuildQRCodeActivity.this.finish();
            }
        }
    }

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.join.mgps.Util.h1.e(BuildQRCodeActivity.TAG, "----onServiceConnected---");
            BuildQRCodeActivity buildQRCodeActivity = BuildQRCodeActivity.this;
            buildQRCodeActivity.serviceBound = true;
            if (iBinder instanceof SocketServerService.a) {
                SocketServerService.a aVar = (SocketServerService.a) iBinder;
                buildQRCodeActivity.mBinder = aVar;
                aVar.newServerSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            com.join.mgps.Util.h1.a(BuildQRCodeActivity.TAG, "----onServiceDisconnected---");
        }
    }

    void buildApWifi() {
        showLoadingLayout();
        getRandomPwd();
        getSSIDName();
        if (Build.VERSION.SDK_INT >= 26) {
            this.SSID = this.ssid;
            this.pwd = r6.c.f96777q;
            com.join.mgps.event.e eVar = new com.join.mgps.event.e();
            eVar.f68167a = 1;
            eVar.f68168b = this.SSID;
            eVar.f68169c = this.pwd;
            org.greenrobot.eventbus.c.f().q(eVar);
        } else {
            this.apWifiManager.createApWifi(this.SSID, this.pwd);
        }
        com.join.mgps.task.a aVar = new com.join.mgps.task.a(this.mContex);
        this.createApWifiThread = aVar;
        this.future = this.mExecutor.submit(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void buildQrCode() {
        View viewInflate = this.viewStub.inflate();
        this.qr_code_img = (ImageView) viewInflate.findViewById(R.id.qr_code_img);
        TextView textView = (TextView) viewInflate.findViewById(R.id.ssidTxt);
        this.ssidTxt = textView;
        textView.setText("请将热点名称设置为\n" + this.SSID);
        if (Build.VERSION.SDK_INT >= 26) {
            this.ssidTxt.setVisibility(0);
        }
        this.qr_code_img.setImageBitmap(h7.a.b("SSID:" + this.SSID + ":Pwd:" + this.pwd, this.mContex));
        connected2Client();
        registApWifiStatus();
        com.papa.sim.statistic.t.l(this).m0(AccountUtil_.getInstance_(this).getUid());
    }

    void closeWifiAp() {
        this.apWifiManager.closeWifiAp();
        stopService();
    }

    void connected2Client() {
        Intent intent = new Intent(this, (Class<?>) SocketServerService.class);
        bindService(intent, this.connection, 1);
        startService(intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void crateApWifiStatus(com.join.mgps.event.e event) {
        if (event == null) {
            return;
        }
        int i10 = event.f68167a;
        if (i10 == 0) {
            com.join.mgps.Util.h1.e(TAG, "onFailed: 热点创建失败");
            setmLoadingHintMsgLoading(this.str_create_ap_wifi_failed_hint);
            return;
        }
        if (i10 != 1) {
            return;
        }
        String str = TAG;
        com.join.mgps.Util.h1.e(str, "onSuccess: 热点创建成功");
        AccountUtil_.getInstance_(this).getUid();
        com.join.mgps.Util.h1.e(str, "crateApWifiStatus: " + this.future.isDone() + ":::是否取消:::" + this.future.isCancelled());
        hideLoadingLayout();
        if (!this.connectedSuccess) {
            buildQrCode();
            Future<?> future = this.future;
            if (future != null && !future.isCancelled()) {
                this.future.cancel(true);
            }
        }
        this.connectedSuccess = true;
    }

    void destroyRunable() {
        com.join.mgps.task.a aVar = this.createApWifiThread;
        if (aVar != null) {
            aVar.c();
        }
        Future<?> future = this.future;
        if (future != null && !future.isCancelled()) {
            this.future.cancel(true);
        }
        ExecutorService executorService = this.mExecutor;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.mExecutor.shutdownNow();
    }

    @AfterInject
    void doSomeAfterInject() {
        setLoadingHintMsg(this.str_creating_ap_wifi_hint);
    }

    @AfterViews
    void doSomeAfterView() {
        init();
        initView();
        this.build_qr_code_title.setVisibility(0);
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingLayoutResID() {
        return R.id.build_qr_code_rl;
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity
    public int getLoadingMarginTop() {
        String str = Build.MODEL;
        return (TextUtils.isEmpty(str) || !str.equals("HM 1SLTETD")) ? super.getLoadingMarginTop() : (int) (((double) super.getLoadingMarginTop()) * 1.5d);
    }

    public void getRandomPwd() {
        String str;
        Random random = new Random();
        do {
            str = this.pwd + Character.toString((char) ((Math.abs(random.nextInt()) % 10) + 48));
            this.pwd = str;
        } while (str.length() < 8);
        com.join.mgps.Util.h1.e(TAG, "getRandomPwd: 随机的6位密码是" + this.pwd);
    }

    void getSSIDName() {
        this.SSID = com.join.mgps.Util.m.a();
    }

    @Click({R.id.back_image})
    void goBack() {
        closeWifiAp();
        finish();
    }

    void goGameTransfer() {
        GameTransferActivity_.intent(this).a(2).start();
        finish();
    }

    void init() {
        this.mContex = getApplicationContext();
        this.mExecutor = Executors.newFixedThreadPool(2);
        this.apWifiManager = new ApWifiManager(this.mContex);
        this.apWifiUtil = com.join.mgps.Util.k.i(this.mContex);
        org.greenrobot.eventbus.c.f().v(this);
    }

    void initView() {
        this.hearTitleTxt.setText(this.title);
        buildApWifi();
    }

    @Override // com.join.mgps.baseactivity.BaseLoadingActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        destroyRunable();
        ApWifiConnectedReceiver apWifiConnectedReceiver = this.receiver;
        if (apWifiConnectedReceiver != null) {
            unregisterReceiver(apWifiConnectedReceiver);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            closeWifiAp();
            finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSocketStatusEvent(com.join.mgps.socket.entity.f bean) {
        String str = TAG;
        com.join.mgps.Util.h1.e(str, "onSocketStatusEvent: 0000");
        if (bean == null) {
            return;
        }
        int i10 = bean.f73035a;
        if (i10 == 1) {
            com.join.mgps.Util.h1.e(str, "onSocketStatusEvent: 创建成功");
            goGameTransfer();
        } else {
            if (i10 != 2) {
                return;
            }
            stopService();
            closeWifiAp();
            finish();
        }
    }

    void registApWifiStatus() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(WifiAPBroadcastReceiver.f72281b);
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        ApWifiConnectedReceiver apWifiConnectedReceiver = new ApWifiConnectedReceiver();
        this.receiver = apWifiConnectedReceiver;
        registerReceiver(apWifiConnectedReceiver, intentFilter);
    }

    void stopService() {
        if (this.serviceBound) {
            this.serviceBound = false;
            this.mBinder.setMonitor(false);
            unbindService(this.connection);
            stopService(new Intent(this, (Class<?>) SocketServerService.class));
        }
    }
}
