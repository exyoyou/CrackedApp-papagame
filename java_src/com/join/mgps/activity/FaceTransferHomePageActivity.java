package com.join.mgps.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.BaseActivity;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.service.SocketClientService;
import com.join.mgps.service.SocketServerService;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.face_transfer_homepage_activity)
public class FaceTransferHomePageActivity extends BaseActivity {
    private static final String TAG = "FaceTransferHomePageActivity";

    @ViewById(R.id.title_textview)
    TextView hearTitleTxt;
    Context mContext;
    private ru.alexbykov.nopermission.b mPermissionHelper;
    private WifiUtils mWifiUtils;

    @ViewById
    TextView nopapaTip;
    boolean serviceBound;
    boolean serviceBoundSrv;
    int suiji;

    @StringRes(R.string.title_face_transfer_homepage)
    String title;
    private String ap = "AndroidShare_";
    private boolean isWranAp = false;
    private boolean isUsing = false;
    String getSSID = "";
    boolean isGetPermission = false;
    boolean connectingSvr = false;
    boolean connecting = false;
    SocketServerService.a mBinderSrv = null;
    ServiceConnection connectionSrv = new c();
    SocketClientService.a mBinder = null;
    ServiceConnection connection = new d();

    class a extends ClickableSpan {
        a() {
        }

        private void a(View view) {
            if (view instanceof TextView) {
                ((TextView) view).setHighlightColor(FaceTransferHomePageActivity.this.getResources().getColor(17170445));
            }
        }

        private void b(Context ctx) {
            try {
                File file = new File(FaceTransferHomePageActivity.this.getPackageManager().getApplicationInfo(ctx.getPackageName(), 0).sourceDir);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("application/zip");
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                FaceTransferHomePageActivity.this.startActivity(Intent.createChooser(intent, "发送悟饭（蓝牙发送免流量）"));
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            Context context = widget.getContext();
            a(widget);
            b(context);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            super.updateDrawState(ds);
            ds.setColor(Color.parseColor("#3CA4FD"));
            ds.clearShadowLayer();
        }
    }

    class b implements Consumer<com.tbruyelle.rxpermissions2.b> {
        b() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (!permission.f83019b) {
                if (permission.f83020c) {
                    return;
                }
                com.join.mgps.Util.h0.h0(FaceTransferHomePageActivity.this).Z(FaceTransferHomePageActivity.this, permission);
            } else if (FaceTransferHomePageActivity.this.checkPermiss("android.permission.CAMERA") && FaceTransferHomePageActivity.this.checkPermiss(com.kuaishou.weapon.p0.g.f74786j)) {
                FaceTransferHomePageActivity.this.startActivity(new Intent(FaceTransferHomePageActivity.this, (Class<?>) FaceTransferScanQrCodeActivity.class));
            }
        }
    }

    class c implements ServiceConnection {
        c() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.join.mgps.Util.h1.e(FaceTransferHomePageActivity.TAG, "----onServiceConnected---");
            if (iBinder instanceof SocketServerService.a) {
                FaceTransferHomePageActivity faceTransferHomePageActivity = FaceTransferHomePageActivity.this;
                faceTransferHomePageActivity.serviceBoundSrv = true;
                SocketServerService.a aVar = (SocketServerService.a) iBinder;
                faceTransferHomePageActivity.mBinderSrv = aVar;
                aVar.newServerSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            com.join.mgps.Util.h1.a(FaceTransferHomePageActivity.TAG, "----onServiceDisconnected---");
        }
    }

    class d implements ServiceConnection {
        d() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder instanceof SocketClientService.a) {
                FaceTransferHomePageActivity faceTransferHomePageActivity = FaceTransferHomePageActivity.this;
                faceTransferHomePageActivity.serviceBound = true;
                SocketClientService.a aVar = (SocketClientService.a) iBinder;
                faceTransferHomePageActivity.mBinder = aVar;
                aVar.newSocket();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51399b;

        e(final String val$ssid) {
            this.f51399b = val$ssid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ((ClipboardManager) FaceTransferHomePageActivity.this.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText(null, this.f51399b));
            com.join.android.app.common.manager.a.h().j(v10.getContext(), "复制成功！", 2);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.q f51401b;

        f(final com.join.mgps.customview.q val$messageDialog) {
            this.f51401b = val$messageDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f51401b.dismiss();
            FaceTransferHomePageActivity.this.isWranAp = true;
            Intent intent = new Intent(net.lingala.zip4j.util.e.F0);
            intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.TetherSettings"));
            intent.setAction("android.intent.action.VIEW");
            FaceTransferHomePageActivity.this.startActivityForResult(intent, 88);
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.q f51403b;

        g(final com.join.mgps.customview.q val$messageDialog) {
            this.f51403b = val$messageDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f51403b.dismiss();
            FaceTransferHomePageActivity.this.startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 89);
        }
    }

    private void getDeviceInfo() {
        this.mPermissionHelper.d(com.kuaishou.weapon.p0.g.f74783g, com.kuaishou.weapon.p0.g.f74784h, com.kuaishou.weapon.p0.g.f74779c, "android.permission.READ_SMS", "android.permission.READ_PHONE_NUMBERS").r(new Runnable() { // from class: com.join.mgps.activity.z0
            @Override // java.lang.Runnable
            public final void run() {
                this.f58273b.onSuccess();
            }
        }).n(new Runnable() { // from class: com.join.mgps.activity.a1
            @Override // java.lang.Runnable
            public final void run() {
                this.f56453b.onDenied();
            }
        }).p(new Runnable() { // from class: com.join.mgps.activity.b1
            @Override // java.lang.Runnable
            public final void run() {
                this.f56750b.onNeverAskAgain();
            }
        }).s();
    }

    private void initNoPapaTipView() {
        String string = getString(R.string.no_papa_tip, "免流量发送给好友");
        SpannableString spannableString = new SpannableString(string);
        a aVar = new a();
        int iIndexOf = string.indexOf("免流量发送给好友");
        spannableString.setSpan(aVar, iIndexOf, iIndexOf + 8, 17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDenied() {
        com.join.mgps.Util.a3.b(this).d("你已拒绝权限申请，无法对战！");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNeverAskAgain() {
        com.join.mgps.Util.a3.b(this).d("你已拒绝权限申请，无法对战！");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSuccess() {
        this.isGetPermission = true;
        this.getSSID = this.mWifiUtils.getApSSIDAll(this);
    }

    void connected2Client() {
        if (this.connecting) {
            stopClientService();
            this.connecting = false;
        }
        if (this.connectingSvr) {
            Toast.makeText(this, "正在等待连接...", 0).show();
            return;
        }
        Toast.makeText(this, "正在等待连接...", 0).show();
        Intent intent = new Intent(this, (Class<?>) SocketServerService.class);
        try {
            bindService(intent, this.connectionSrv, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        startService(intent);
        this.connectingSvr = true;
    }

    void connected2Service() {
        if (this.connectingSvr) {
            stopService();
            this.connectingSvr = false;
        }
        if (this.connecting) {
            Toast.makeText(this, "正在连接中...", 0).show();
            return;
        }
        Toast.makeText(this, "正在连接中...", 0).show();
        Intent intent = new Intent(this, (Class<?>) SocketClientService.class);
        String localIPAddress = this.mWifiUtils.getLocalIPAddress();
        String str = localIPAddress.substring(0, localIPAddress.lastIndexOf(com.join.mgps.Util.o0.f49827a)) + ".1";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connected2Service: host");
        sb2.append(str);
        sb2.append(":::本地地址:::");
        sb2.append(localIPAddress);
        intent.putExtra(u.c.f97430f, str);
        bindService(intent, this.connection, 1);
        startService(intent);
        this.connecting = true;
    }

    @AfterViews
    void doSomeAfterView() {
        this.mPermissionHelper = new ru.alexbykov.nopermission.b(this);
        this.mWifiUtils = WifiUtils.getInstance(getApplicationContext());
        this.suiji = new Random().nextInt(900) + 100;
        org.greenrobot.eventbus.c.f().v(this);
        init();
        initView();
    }

    void goClientSysHotspot() {
        String apSSID = this.mWifiUtils.getApSSID(this);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            if (!this.isGetPermission) {
                getDeviceInfo();
                return;
            }
            apSSID = this.mWifiUtils.getApSSIDAll(this);
            this.getSSID = apSSID;
            if ("unknown id".equals(apSSID) || com.join.mgps.Util.t2.h(apSSID)) {
                com.join.mgps.Util.a3.b(this).d("你已拒绝权限申请，无法对战！");
                return;
            }
        }
        if (i10 < 26 || (com.join.android.app.common.utils.m.k(this) && !com.join.mgps.Util.t2.h(apSSID))) {
            connected2Service();
            return;
        }
        com.join.mgps.customview.q qVar = new com.join.mgps.customview.q(this);
        qVar.show();
        qVar.c(this.ap + this.suiji);
        qVar.e("去连接", new g(qVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean goSrvSysHotspot() {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        String str = this.ap + this.suiji;
        if (this.mWifiUtils.getWifiApStateInt() == 11 || !this.isWranAp) {
            this.isUsing = false;
            com.join.mgps.customview.q qVar = new com.join.mgps.customview.q(this);
            qVar.show();
            qVar.b(str);
            qVar.a(new e(str));
            qVar.d(new f(qVar));
            return true;
        }
        if (this.mWifiUtils.getWifiApStateInt() != 13 && this.mWifiUtils.getWifiApStateInt() != 3) {
            return true;
        }
        ((BuildQRCodeActivity_.c) BuildQRCodeActivity_.intent(this).extra(BuildQRCodeActivity_.SSID_EXTRA, this.ap + this.suiji)).start();
        return true;
    }

    void init() {
        this.mContext = getApplicationContext();
    }

    void initView() {
        this.hearTitleTxt.setText(this.title);
        this.hearTitleTxt.setGravity(17);
        initNoPapaTipView();
    }

    @Click
    void nopapaTip() {
        IntentUtil.getInstance().goFormDetial(this, "3269874");
    }

    @Click({R.id.face_transfer_rel_create_hotspot, R.id.face_transfer_rel_join_hotspot, R.id.back_image})
    void onClick(View view) {
        switch (view.getId()) {
            case R.id.back_image /* 2131362126 */:
                finish();
                break;
            case R.id.face_transfer_rel_create_hotspot /* 2131363307 */:
                if (!goSrvSysHotspot()) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        int iCheckSelfPermission = checkSelfPermission(com.kuaishou.weapon.p0.g.f74783g);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("location permission: ");
                        sb2.append(iCheckSelfPermission);
                        if (iCheckSelfPermission != 0) {
                            ActivityCompat.requestPermissions(this, new String[]{com.kuaishou.weapon.p0.g.f74783g}, 1);
                        }
                    }
                    com.papa.sim.statistic.t.l(this).o0(AccountUtil_.getInstance_(this).getUid());
                    IntentUtil.getInstance().goBuildQRCodeActivity(this);
                    break;
                }
                break;
            case R.id.face_transfer_rel_join_hotspot /* 2131363308 */:
                try {
                    if (Build.VERSION.SDK_INT >= 26 && com.join.mgps.Util.i.f(this)) {
                        Toast.makeText(this, "请确保本机热点处于关闭状态", 0).show();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                com.papa.sim.statistic.t.l(this).p0(AccountUtil_.getInstance_(this).getUid());
                new com.tbruyelle.rxpermissions2.c(this).r("android.permission.CAMERA", com.kuaishou.weapon.p0.g.f74786j).subscribe(new b());
                break;
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        stopService();
        stopClientService();
        this.connecting = false;
        this.connectingSvr = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 1 && ContextCompat.checkSelfPermission(this, com.kuaishou.weapon.p0.g.f74783g) == 0) {
            com.papa.sim.statistic.t.l(this).o0(AccountUtil_.getInstance_(this).getUid());
            IntentUtil.getInstance().goBuildQRCodeActivity(this);
        }
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
            stopClientService();
            stopService();
            this.connecting = false;
            this.connectingSvr = false;
            return;
        }
        com.join.mgps.Util.h1.e(str, "onSocketStatusEvent: 成功");
        com.papa.sim.statistic.t.l(this).l0(AccountUtil_.getInstance_(this).getUid());
        if (this.connecting) {
            GameTransferActivity_.intent(this).a(1).start();
        } else if (this.connectingSvr) {
            GameTransferActivity_.intent(this).a(2).start();
        }
        this.connecting = false;
        this.connectingSvr = false;
    }

    void stopClientService() {
        if (this.serviceBound) {
            unbindService(this.connection);
            stopService(new Intent(this, (Class<?>) SocketClientService.class));
        }
    }

    void stopService() {
        if (this.serviceBoundSrv) {
            unbindService(this.connectionSrv);
            stopService(new Intent(this, (Class<?>) SocketServerService.class));
        }
    }
}
