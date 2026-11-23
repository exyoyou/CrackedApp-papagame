package com;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.byazt.quv.AbsServerManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.b1;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.p2;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.u;
import com.join.mgps.activity.DiscoveryPaiweiActivity_;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.activity.GameMainActivity3_;
import com.join.mgps.activity.MiniGameLoadingActivity;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.PrivateDomainDefaultActivity;
import com.join.mgps.activity.PrivateDomainDownloadActivity;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import io.reactivex.functions.Consumer;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class BaseFragmentActivity extends FragmentActivity {
    public static final int PERMISSION_INSTALL_RESULT_CODE = 10010;
    com.join.mgps.dialog.d apkInstallDialog;
    private v6.d baiduChannelPermissionCallBack;
    private BroadcasExtFA broadcasExt;
    View contentView;
    Dialog dialogU;
    String fialePath;
    String gameid;
    GestureDetector gestureDetector;
    AlertDialog permissionDialog;
    PopupWindow popupWindow;
    PrefDef_ prefDef_;
    PermissRecver recver;
    private n time;
    private Handler mHandler = new Handler();
    boolean hasdestroyed = false;
    boolean isfirst = true;
    boolean isInBackground = false;
    long lastShowPopTime = 0;
    boolean isSo = false;
    AlertDialog.Builder dialog = null;
    private Handler handlerx = new l();
    private final IntentFilter intentFilter12_ = new IntentFilter();
    private final BroadcastReceiver onReciviedReceiver_ = new BroadcastReceiver() { // from class: com.BaseFragmentActivity.10
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (p5.a.f96210n0.equals(intent.getAction())) {
                BaseFragmentActivity.this.onRecivied(intent, context);
                return;
            }
            if (p5.a.f96212o0.equals(intent.getAction())) {
                BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
                if (baseFragmentActivity.isInBackground) {
                    return;
                }
                h0.h0(baseFragmentActivity).P(BaseFragmentActivity.this, intent.getStringExtra("gameid"));
                return;
            }
            if (p5.a.f96214p0.equals(intent.getAction())) {
                BaseFragmentActivity baseFragmentActivity2 = BaseFragmentActivity.this;
                if (baseFragmentActivity2.isInBackground) {
                    return;
                }
                h0.h0(baseFragmentActivity2).Q(BaseFragmentActivity.this, intent.getStringExtra("gameid"), intent.getIntExtra("cpuType", 96));
                return;
            }
            if (p5.a.f96216q0.equals(intent.getAction())) {
                BaseFragmentActivity baseFragmentActivity3 = BaseFragmentActivity.this;
                if (baseFragmentActivity3.isInBackground) {
                    return;
                }
                h0.h0(baseFragmentActivity3).T(BaseFragmentActivity.this, intent.getStringExtra(QuarkPromptActivity_.ARGS_EXTRA), intent.getStringExtra("gameId"), intent.getIntExtra("needBit", 96));
            }
        }
    };

    class BroadcasExtFA extends BroadcastReceiver {
        BroadcasExtFA() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BaseFragmentActivity.this.finish();
        }
    }

    class PermissRecver extends BroadcastReceiver {
        PermissRecver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || TextUtils.isEmpty(intent.getAction())) {
                return;
            }
            String action = intent.getAction();
            if (action.equals("com.wufun.get.downFinish")) {
                BaseFragmentActivity.this.showDownFinishPre(intent.getStringExtra("gameid"));
            } else if (action.equals("com.wufun.get.permission")) {
                m mVar = BaseFragmentActivity.this.new m();
                mVar.f3160a = intent.getStringExtra("permission");
                mVar.f3161b = intent.getStringExtra("filePath");
                Message message = new Message();
                message.what = 2;
                message.obj = mVar;
                BaseFragmentActivity.this.handlerx.sendMessageDelayed(message, 500L);
            }
        }
    }

    class a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f3135b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f3136c;

        a(final Intent val$intent, final Context val$context) {
            this.f3135b = val$intent;
            this.f3136c = val$context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            BaseFragmentActivity.this.getUNzipPermiss(this.f3135b.getStringExtra("gameId"), BaseFragmentActivity.this);
            t.l(this.f3136c).R1(Event.Unzip_getpermission, new Ext());
        }
    }

    class b implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f3138b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f3139c;

        b(final Intent val$intent, final Context val$context) {
            this.f3138b = val$intent;
            this.f3139c = val$context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            BaseFragmentActivity.this.setUnzipFailedStatus(this.f3138b.getStringExtra("gameId"));
            t.l(this.f3139c).R1(Event.Unzip_cancelpermission, new Ext());
        }
    }

    class c implements Consumer<com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f3141b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f3142c;

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, BaseFragmentActivity.this.getPackageName(), null));
                BaseFragmentActivity.this.startActivity(intent);
            }
        }

        c(final Context val$context, final String val$gameid) {
            this.f3141b = val$context;
            this.f3142c = val$gameid;
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (permission.f83019b) {
                if (ContextCompat.checkSelfPermission(this.f3141b, com.kuaishou.weapon.p0.g.f74786j) == 0) {
                    t.l(this.f3141b).R1(Event.Unzip_permissionsuccess, new Ext());
                    DownloadTask downloadTaskG = q5.f.M().G(this.f3142c);
                    if (downloadTaskG != null) {
                        if (Integer.parseInt(downloadTaskG.getPlugin_num()) == ConstantIntEnum.MGAME.value()) {
                            com.join.android.app.common.servcie.j.f().z(this.f3141b, downloadTaskG, false);
                            return;
                        } else {
                            com.join.android.app.common.servcie.j.f().z(this.f3141b, downloadTaskG, true);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (permission.f83020c) {
                BaseFragmentActivity.this.setUnzipFailedStatus(this.f3142c);
                return;
            }
            BaseFragmentActivity.this.setUnzipFailedStatus(this.f3142c);
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            Dialog dialog = baseFragmentActivity.dialogU;
            if (dialog == null) {
                baseFragmentActivity.dialog = new AlertDialog.Builder(baseFragmentActivity, R.style.AlertDialogCustom);
            } else if (dialog.isShowing()) {
                return;
            }
            BaseFragmentActivity.this.dialog.setTitle("提示");
            if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
                BaseFragmentActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
            } else {
                BaseFragmentActivity.this.dialog.setMessage("请去设置中开启权限");
            }
            BaseFragmentActivity.this.dialog.setPositiveButton("去打开", new a());
            BaseFragmentActivity baseFragmentActivity2 = BaseFragmentActivity.this;
            baseFragmentActivity2.dialogU = baseFragmentActivity2.dialog.show();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3145b;

        d(final String val$gameid) {
            this.f3145b = val$gameid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            baseFragmentActivity.popupWindow = null;
            if (baseFragmentActivity.isSo) {
                t.l(v10.getContext()).R1(Event.enterSoStartMyGame, new Ext().setGameId(this.f3145b));
            } else {
                t.l(v10.getContext()).R1(Event.enterSinStartMyGame, new Ext().setGameId(this.f3145b));
            }
            IntentUtil.getInstance().goMyGameManagerActivity(v10.getContext());
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f3147b;

        e(final DownloadTask val$downloadTask) {
            this.f3147b = val$downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (BaseFragmentActivity.this.isSo) {
                t.l(v10.getContext()).R1(Event.onclickSoGameStart, new Ext().setGameId(this.f3147b.getCrc_link_type_val()));
            } else {
                t.l(v10.getContext()).R1(Event.onclickSinGameStart, new Ext().setGameId(this.f3147b.getCrc_link_type_val()));
            }
            UtilsMy.k4(v10.getContext(), this.f3147b);
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity.this.popupWindow = null;
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            BaseFragmentActivity.this.popupWindow.dismiss();
        }
    }

    class g implements View.OnTouchListener {
        g() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            BaseFragmentActivity.this.gestureDetector.onTouchEvent(event);
            return false;
        }
    }

    class h extends GestureDetector.SimpleOnGestureListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f3151b;

        h(final int val$FLIP_DISTANCE) {
            this.f3151b = val$FLIP_DISTANCE;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            if (e10.getX() - e11.getX() <= this.f3151b && e11.getX() - e10.getX() <= this.f3151b && e10.getY() - e11.getY() <= this.f3151b) {
                return e11.getY() - e10.getY() > ((float) this.f3151b);
            }
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            baseFragmentActivity.popupWindow = null;
            if (baseFragmentActivity.isSo) {
                t.l(baseFragmentActivity.contentView.getContext()).R1(Event.exitSoGameStart, new Ext().setGameId(BaseFragmentActivity.this.gameid));
            } else {
                t.l(baseFragmentActivity.contentView.getContext()).R1(Event.exitSinGameStart, new Ext().setGameId(BaseFragmentActivity.this.gameid));
            }
            return true;
        }
    }

    class i implements Consumer<com.tbruyelle.rxpermissions2.b> {
        i() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            boolean z10 = permission.f83019b;
        }
    }

    class j implements com.join.mgps.callbacks.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ m f3154a;

        class a implements Consumer<com.tbruyelle.rxpermissions2.b> {
            a() {
            }

            @Override // io.reactivex.functions.Consumer
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
                if (permission.f83018a.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                    j jVar = j.this;
                    String str = jVar.f3154a.f3161b;
                    if (str != null) {
                        BaseFragmentActivity.this.fialePath = str;
                    }
                    BaseFragmentActivity.this.handlerx.sendEmptyMessage(1);
                }
            }
        }

        j(final m val$data) {
            this.f3154a = val$data;
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
            new com.tbruyelle.rxpermissions2.c(BaseFragmentActivity.this).r("android.permission.REQUEST_INSTALL_PACKAGES").subscribe(new a());
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
            BaseFragmentActivity.this.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + BaseFragmentActivity.this.getPackageName())), 10010);
        }
    }

    class k implements Consumer<com.tbruyelle.rxpermissions2.b> {

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, BaseFragmentActivity.this.getPackageName(), null));
                BaseFragmentActivity.this.startActivity(intent);
            }
        }

        k() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (permission.f83019b) {
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74779c)) {
                    String strI = q.n(MApplication.f3182z).i();
                    MApplication.A = strI;
                    try {
                        MApplication.A = com.join.mgps.Util.a.d(strI, "");
                        return;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                return;
            }
            if (permission.f83020c) {
                return;
            }
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            Dialog dialog = baseFragmentActivity.dialogU;
            if (dialog == null) {
                baseFragmentActivity.dialog = new AlertDialog.Builder(baseFragmentActivity, R.style.AlertDialogCustom);
            } else if (dialog.isShowing()) {
                return;
            }
            BaseFragmentActivity.this.dialog.setTitle("提示");
            if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
                BaseFragmentActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
            } else {
                BaseFragmentActivity.this.dialog.setMessage("请去设置中开启权限");
            }
            BaseFragmentActivity.this.dialog.setPositiveButton("去打开", new a());
            BaseFragmentActivity baseFragmentActivity2 = BaseFragmentActivity.this;
            baseFragmentActivity2.dialogU = baseFragmentActivity2.dialog.show();
        }
    }

    class l extends Handler {
        l() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            try {
                int i10 = msg.what;
                if (i10 == 1) {
                    com.join.android.app.common.utils.g.t0(BaseFragmentActivity.this).B(BaseFragmentActivity.this, new File(BaseFragmentActivity.this.fialePath));
                } else if (i10 == 3) {
                    try {
                        BaseFragmentActivity.this.showDownFinish((String) msg.obj);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
                    if (baseFragmentActivity.isInBackground) {
                    } else {
                        baseFragmentActivity.requestPermission((m) msg.obj);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3160a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f3161b;

        m() {
        }
    }

    class n extends CountDownTimer {
        public n(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            BaseFragmentActivity baseFragmentActivity = BaseFragmentActivity.this;
            if (baseFragmentActivity.popupWindow == null || baseFragmentActivity == null || baseFragmentActivity.isFinishing()) {
                return;
            }
            BaseFragmentActivity.this.popupWindow.dismiss();
            BaseFragmentActivity.this.popupWindow = null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getUNzipPermiss(String gameid, Context context) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74786j).subscribe(new c(context, gameid));
            UtilsMy.c4(this, com.kuaishou.weapon.p0.g.f74786j);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void initPopData(String gameid) {
        View viewFindViewById = this.contentView.findViewById(R.id.main);
        this.gameid = gameid;
        viewFindViewById.setOnClickListener(new d(gameid));
        TextView textView = (TextView) this.contentView.findViewById(R.id.title);
        TextView textView2 = (TextView) this.contentView.findViewById(R.id.ok);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) this.contentView.findViewById(R.id.icon);
        TextView textView3 = (TextView) this.contentView.findViewById(R.id.info);
        ImageView imageView = (ImageView) this.contentView.findViewById(R.id.cancle);
        DownloadTask downloadTaskG = q5.f.M().G(gameid);
        if (Dtype.apk.name().equals(downloadTaskG.getFileType())) {
            textView3.setText("下载完成");
            this.isSo = true;
            t.l(this).R1(Event.showSoGameStart, new Ext().setGameId(downloadTaskG.getCrc_link_type_val()));
        } else {
            t.l(this).R1(Event.showSinGameStart, new Ext().setGameId(downloadTaskG.getCrc_link_type_val()));
            this.isSo = false;
            textView3.setText("安装完成");
        }
        com.join.android.app.common.utils.l.h(simpleDraweeView, downloadTaskG.getPortraitURL());
        textView.setText(downloadTaskG.getShowName());
        textView2.setText("开始游戏");
        textView2.setOnClickListener(new e(downloadTaskG));
        imageView.setOnClickListener(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$0() {
        u.e(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRecivied(Intent intent, Context context) {
        if (this.isInBackground) {
            return;
        }
        t.l(context).R1(Event.Unzip_nopermission, new Ext());
        Dialog dialog = this.dialogU;
        if (dialog == null) {
            this.dialog = new AlertDialog.Builder(context, R.style.AlertDialogCustom);
        } else if (dialog.isShowing()) {
            return;
        }
        this.dialog.setTitle("解压失败");
        this.dialog.setMessage("未获取到存储权限");
        this.dialog.setPositiveButton("去获取", new a(intent, context));
        this.dialog.setNegativeButton("取消", new b(intent, context));
        AlertDialog alertDialogShow = this.dialog.show();
        this.dialogU = alertDialogShow;
        if (alertDialogShow != null) {
            alertDialogShow.setCanceledOnTouchOutside(false);
            this.dialogU.setCancelable(false);
        }
    }

    @TargetApi(19)
    private void setTranslucentStatus(boolean on) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (on) {
            attributes.flags |= 67108864;
        } else {
            attributes.flags &= -67108865;
        }
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUnzipFailedStatus(String gameId) {
        if (TextUtils.equals(gameId, String.valueOf(ConstantIntEnum.PS2.value())) || TextUtils.equals(gameId, String.valueOf(ConstantIntEnum.N3DS.value()))) {
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            downloadTaskG.setStatus(13);
            q5.f.M().m0(downloadTaskG, downloadTaskG.getStatus());
            com.join.android.app.common.servcie.j.f().l(downloadTaskG);
            j0.a().c(new r(downloadTaskG, downloadTaskG.getStatus()));
        }
    }

    public static void setWindowStatusBarColor(Activity activity, int colorResId) {
        p2.t(activity, colorResId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownFinish(String gameid) {
        DownloadTask downloadTaskG = q5.f.M().G(gameid);
        boolean z10 = true;
        boolean z11 = downloadTaskG != null && APKUtils.P(downloadTaskG);
        if (!this.isInBackground || z11) {
            try {
                if (System.currentTimeMillis() - this.lastShowPopTime <= 2000 || (MApplication.f3182z.getActivity() instanceof ModGameIndexActivity) || (MApplication.f3182z.getActivity() instanceof GameMainActivity3_) || (MApplication.f3182z.getActivity() instanceof NewArenaMainActivty_) || (MApplication.f3182z.getActivity() instanceof MiniGameLoadingActivity) || (MApplication.f3182z.getActivity() instanceof PrivateDomainDownloadActivity) || (MApplication.f3182z.getActivity() instanceof PrivateDomainDefaultActivity) || (MApplication.f3182z.getActivity() instanceof UnzipFailedDialog) || (MApplication.f3182z.getActivity() instanceof EndGameLaunchActivity_) || (MApplication.f3182z.getActivity() instanceof DiscoveryPaiweiActivity_) || (MApplication.f3182z.getActivity() instanceof EndGameActivity_) || (MApplication.f3182z.getActivity() instanceof EndGameDetailActivity_) || (MApplication.f3182z.getActivity() instanceof EndGameLaunchActivity_)) {
                    return;
                }
                if (!z11) {
                    n nVar = this.time;
                    if (nVar != null) {
                        nVar.onFinish();
                    } else {
                        this.time = new n(10000L, 1000L);
                    }
                    this.time.start();
                }
                if (z11) {
                    h0.h0(this).H(gameid);
                    return;
                }
                PopupWindow popupWindow = this.popupWindow;
                if (popupWindow == null) {
                    if (downloadTaskG != null && d2.g(downloadTaskG.getPackageName())) {
                        z10 = false;
                    }
                    if (z10) {
                        showPopwindow();
                    }
                } else if (!popupWindow.isShowing() && System.currentTimeMillis() - this.lastShowPopTime > 5000) {
                    g1.d("popwindow", "33333333333");
                    PopupWindow popupWindow2 = this.popupWindow;
                    View view = this.contentView;
                    q.n(this);
                    popupWindow2.showAtLocation(view, 48, 0, q.v(this));
                    this.lastShowPopTime = System.currentTimeMillis();
                }
                initPopData(gameid);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownFinishPre(String gameid) {
        Message message = new Message();
        message.obj = gameid;
        message.what = 3;
        this.handlerx.sendMessageDelayed(message, 300L);
    }

    private void showPopwindow() {
        this.contentView = LayoutInflater.from(this).inflate(R.layout.appdown_finish_dialog_layout, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(this.contentView, -1, -2);
        this.popupWindow = popupWindow;
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        this.popupWindow.setOutsideTouchable(false);
        this.popupWindow.setTouchable(true);
        this.popupWindow.setAnimationStyle(R.style.ClickToast);
        this.popupWindow.setTouchInterceptor(new g());
        int dimensionPixelOffset = this.contentView.getContext().getResources().getDimensionPixelOffset(R.dimen.wdp30);
        if (this.gestureDetector == null) {
            this.gestureDetector = new GestureDetector(this.contentView.getContext(), new h(dimensionPixelOffset));
        }
        if (this.popupWindow.isShowing() || System.currentTimeMillis() - this.lastShowPopTime <= 5000) {
            return;
        }
        PopupWindow popupWindow2 = this.popupWindow;
        View view = this.contentView;
        q.n(this);
        popupWindow2.showAtLocation(view, 48, 0, q.v(this));
        this.lastShowPopTime = System.currentTimeMillis();
    }

    public boolean checkPermiss(String permisson) {
        return ContextCompat.checkSelfPermission(this, permisson) == 0;
    }

    protected void customStatusBar() {
        String str = Build.BRAND;
        if (!"vivo".equals(str.toLowerCase()) && !"oppo".equals(str.toLowerCase())) {
            p2.r(this, -1, true);
        } else {
            p2.r(this, -8421505, true);
            p2.c(this, p2.d(this));
        }
    }

    public void getPermison(String permisson) {
        m mVar = new m();
        mVar.f3160a = permisson;
        requestPermission(mVar);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != 10010 || Build.VERSION.SDK_INT < 26) {
            return;
        }
        boolean zCanRequestPackageInstalls = getPackageManager().canRequestPackageInstalls();
        if (t2.i(this.fialePath) && zCanRequestPackageInstalls) {
            this.handlerx.sendEmptyMessage(1);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        UtilsMy.J1(this);
        super.onCreate(savedInstanceState);
        this.hasdestroyed = false;
        this.broadcasExt = new BroadcasExtFA();
        this.prefDef_ = new PrefDef_(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(p5.a.f96233z);
        registerReceiver(this.broadcasExt, intentFilter);
        try {
            this.intentFilter12_.addAction(p5.a.f96210n0);
            this.intentFilter12_.addAction(p5.a.f96212o0);
            this.intentFilter12_.addAction(p5.a.f96214p0);
            this.intentFilter12_.addAction(p5.a.f96216q0);
            registerReceiver(this.onReciviedReceiver_, this.intentFilter12_);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.recver = new PermissRecver();
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.wufun.get.permission");
        intentFilter2.addAction("com.wufun.get.downFinish");
        LocalBroadcastManager.getInstance(this).registerReceiver(this.recver, intentFilter2);
        com.join.mgps.va.overmind.i.q().W(getIntent());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        PopupWindow popupWindow;
        try {
            super.onDestroy();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (!isFinishing() && (popupWindow = this.popupWindow) != null) {
            popupWindow.dismiss();
            this.popupWindow = null;
        }
        v6.d dVar = this.baiduChannelPermissionCallBack;
        if (dVar != null) {
            dVar.b();
        }
        this.hasdestroyed = true;
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.recver);
        try {
            unregisterReceiver(this.broadcasExt);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        try {
            BroadcastReceiver broadcastReceiver = this.onReciviedReceiver_;
            if (broadcastReceiver != null) {
                unregisterReceiver(broadcastReceiver);
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.join.mgps.va.overmind.i.q().W(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && !this.hasdestroyed) {
            try {
                popupWindow.dismiss();
                this.popupWindow = null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        v6.d dVar = this.baiduChannelPermissionCallBack;
        if (dVar != null) {
            dVar.b();
            this.baiduChannelPermissionCallBack.a();
        }
        this.isInBackground = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        DownloadTask downloadTaskG;
        DownloadTask downloadTaskG2;
        super.onResume();
        boolean z10 = false;
        this.isInBackground = false;
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            b1.a(this);
        }
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f26227b.lambda$onResume$0();
            }
        }, 500L);
        PrefDef_ prefDef_ = new PrefDef_(this);
        if (this.isfirst) {
            this.isfirst = false;
            return;
        }
        String strD = prefDef_.lastInstallApp().d();
        if (t2.i(strD) && (downloadTaskG2 = q5.f.M().G(strD)) != null && downloadTaskG2.getStatus() == 11 && !downloadTaskG2.getCrc_link_type_val().equals(new PrefDef_(this).lastShowTOUTIAOAd().d()) && !com.join.android.app.common.utils.g.t0(this).e(this, downloadTaskG2.getPackageName()) && ((TextUtils.isEmpty(downloadTaskG2.getPackageName()) || !downloadTaskG2.getPackageName().equals(d2.f49544b)) && !(MApplication.f3182z.getActivity() instanceof ModGameIndexActivity))) {
            UnzipFailedDialog_.intent(this).gameId(downloadTaskG2.getCrc_link_type_val()).from(2).start();
            z10 = true;
        }
        if (!z10) {
            String strD2 = prefDef_.lastInstallAppFinish().d();
            if (t2.i(strD2) && (downloadTaskG = q5.f.M().G(strD2)) != null) {
                String packageName = downloadTaskG.getPackageName();
                if (t2.i(strD2) && !t2.h(packageName) && com.join.mgps.Util.l.e(this, packageName) && t2.i(downloadTaskG.getTips()) && !downloadTaskG.getTips().contains("网游")) {
                    showDownFinishPre(strD2);
                    prefDef_.lastInstallAppFinish().g("");
                }
            }
        }
        v6.d dVar = this.baiduChannelPermissionCallBack;
        if (dVar != null) {
            dVar.b();
        }
        UtilsMy.h4(this);
    }

    void requestPermission(m data) {
        if (data == null || TextUtils.isEmpty(data.f3160a)) {
            return;
        }
        h1.e("request permission");
        String str = data.f3160a;
        if (ContextCompat.checkSelfPermission(this, str) == 0) {
            return;
        }
        UtilsMy.c4(this, str);
        AlertDialog alertDialog = this.permissionDialog;
        if (alertDialog != null) {
            alertDialog.show();
        }
        if (!str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
            try {
                new com.tbruyelle.rxpermissions2.c(this).r(str).subscribe(new k());
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        String str2 = data.f3161b;
        if (t2.h(str2)) {
            return;
        }
        this.fialePath = str2;
        if (!this.prefDef_.show_unknown_source().d().booleanValue() || Build.VERSION.SDK_INT < 26) {
            this.handlerx.sendEmptyMessage(1);
            return;
        }
        com.join.mgps.dialog.d dVar = this.apkInstallDialog;
        if (dVar != null && dVar.isShowing()) {
            this.apkInstallDialog.dismiss();
        }
        com.join.mgps.dialog.d dVar2 = new com.join.mgps.dialog.d(this);
        this.apkInstallDialog = dVar2;
        dVar2.b(new j(data));
        this.apkInstallDialog.show();
    }

    public void setChannelPermissionCallBack(v6.d callBack) {
        this.baiduChannelPermissionCallBack = callBack;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        customStatusBar();
    }

    public boolean checkPermiss(String... permisson) {
        for (String str : permisson) {
            if (ContextCompat.checkSelfPermission(this, str) != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        customStatusBar();
    }

    public void getPermison(String... permisss) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(permisss).subscribe(new i());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
