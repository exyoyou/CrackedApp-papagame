package com;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.byazt.quv.AbsServerManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.db.DatabaseHelper;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.b1;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.i0;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.p2;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.DiscoveryPaiweiActivity_;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.activity.GameMainActivity3_;
import com.join.mgps.activity.HMCloudRemoteActivity_;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.activity.SimulatorExitPlayActivity1_;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.join.mgps.activity.mygame.dialog.UnzipFailedDialog_;
import com.join.mgps.broadcast.NetBroadcastReceiver;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.customview.x;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes7.dex */
public class BaseAppCompatActivity extends AppCompatActivity implements Observer, LoadingLayout.b, LoadingLayout.a {
    public static final int PERMISSION_INSTALL_RESULT_CODE = 10010;
    private EmuOutResultReceiver adResultReceiver;
    com.join.mgps.dialog.d apkInstallDialog;
    private v6.d baiduChannelPermissionCallBack;
    private BroadcasExtFA broadcasExt;
    View contentView;
    Dialog dialogU;
    String fialePath;
    String gameid;
    GestureDetector gestureDetector;
    private Handler hideHandler;
    private Runnable hideRunnable;
    private com.join.android.app.common.dialog.e loading;
    protected LoadingLayout mLoadingLayout;
    private NetBroadcastReceiver netBroadcastReceiver;
    PopupWindow popupWindow;
    protected PrefDef_ prefDef_;
    int rangeBottom;
    int rangeTop;
    PermissRecver recver;
    private u time;
    protected com.join.mgps.wrapper.SystemUiHider.a uiHider;
    protected String loadingHintMsg = null;
    protected Handler mHandler = new Handler(Looper.getMainLooper());
    boolean isfirst = true;
    protected boolean isBackHome = false;
    protected boolean hasDialog = false;
    protected boolean canShowFeedBack = true;
    boolean hasdestroyed = false;
    private DatabaseHelper databaseHelper = null;
    private boolean fullScreenFlag = false;
    int fullScreenCfg = 0;
    boolean isInBackground = false;
    boolean isSo = false;
    AlertDialog.Builder dialog = null;
    private Handler handlerx = new g();
    long timeLastDe = 0;
    private final IntentFilter intentFilter12_ = new IntentFilter();
    private final BroadcastReceiver onReciviedReceiver_ = new AnonymousClass17();

    /* JADX INFO: renamed from: com.BaseAppCompatActivity$17, reason: invalid class name */
    class AnonymousClass17 extends BroadcastReceiver {
        AnonymousClass17() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            if (p5.a.f96210n0.equals(intent.getAction())) {
                BaseAppCompatActivity.this.onRecivied(intent, context);
                return;
            }
            if (!p5.a.N.equals(intent.getAction())) {
                if (p5.a.f96212o0.equals(intent.getAction())) {
                    BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                    if (baseAppCompatActivity.isInBackground) {
                        return;
                    }
                    h0.h0(baseAppCompatActivity).P(BaseAppCompatActivity.this, intent.getStringExtra("gameid"));
                    return;
                }
                if (p5.a.f96214p0.equals(intent.getAction())) {
                    BaseAppCompatActivity baseAppCompatActivity2 = BaseAppCompatActivity.this;
                    if (baseAppCompatActivity2.isInBackground) {
                        return;
                    }
                    h0.h0(baseAppCompatActivity2).Q(BaseAppCompatActivity.this, intent.getStringExtra("gameid"), intent.getIntExtra("cpuType", 96));
                    return;
                }
                if (p5.a.f96216q0.equals(intent.getAction())) {
                    BaseAppCompatActivity baseAppCompatActivity3 = BaseAppCompatActivity.this;
                    if (baseAppCompatActivity3.isInBackground) {
                        return;
                    }
                    h0.h0(baseAppCompatActivity3).T(BaseAppCompatActivity.this, intent.getStringExtra(QuarkPromptActivity_.ARGS_EXTRA), intent.getStringExtra("gameId"), intent.getIntExtra("needBit", 96));
                    return;
                }
                return;
            }
            if (BaseAppCompatActivity.this.isInBackground) {
                return;
            }
            final String stringExtra = intent.getStringExtra("plugNumber");
            final String stringExtra2 = intent.getStringExtra("gameZipPath");
            final String stringExtra3 = intent.getStringExtra("PackageName");
            final String stringExtra4 = intent.getStringExtra("romType");
            String stringExtra5 = intent.getStringExtra("gameName");
            if (TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.FC.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.GBA.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.FBA.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.MD.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.SFC.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.PSP.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.PS.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.WSC.value())) || TextUtils.equals(stringExtra, String.valueOf(ConstantIntEnum.GBC.value()))) {
                return;
            }
            x xVar = new x(context);
            xVar.d(new x.a() { // from class: com.d
                @Override // com.join.mgps.customview.x.a
                public final void a(String str) {
                    UtilsMy.M0(context, stringExtra, stringExtra2, stringExtra3, stringExtra4);
                }
            });
            long jCurrentTimeMillis = System.currentTimeMillis();
            BaseAppCompatActivity baseAppCompatActivity4 = BaseAppCompatActivity.this;
            if (jCurrentTimeMillis - baseAppCompatActivity4.timeLastDe > 2000) {
                xVar.e(baseAppCompatActivity4.getWindow().getDecorView().getRootView(), stringExtra5);
                BaseAppCompatActivity.this.timeLastDe = System.currentTimeMillis();
            }
        }
    }

    class BroadcasExtFA extends BroadcastReceiver {
        BroadcasExtFA() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BaseAppCompatActivity.this.finish();
        }
    }

    public class EmuOutResultReceiver extends BroadcastReceiver {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }

        public EmuOutResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context arg0, Intent arg1) {
            if (p5.a.I0.equals(arg1.getAction())) {
                MApplication.f3182z.O(true);
            }
            new Thread(new a()).start();
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
                BaseAppCompatActivity.this.showDownFinishPre(intent.getStringExtra("gameid"));
            } else if (action.equals("com.wufun.get.permission")) {
                t tVar = BaseAppCompatActivity.this.new t();
                tVar.f3128a = intent.getStringExtra("permission");
                tVar.f3129b = intent.getStringExtra("filePath");
                Message message = new Message();
                message.what = 2;
                message.obj = tVar;
                BaseAppCompatActivity.this.handlerx.sendMessageDelayed(message, 500L);
            }
        }
    }

    class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f3096b;

        a(final View val$rootView) {
            this.f3096b = val$rootView;
        }

        private boolean a(View rootView) {
            Rect rect = new Rect();
            rootView.getWindowVisibleDisplayFrame(rect);
            return ((float) (rootView.getBottom() - rect.bottom)) > rootView.getResources().getDisplayMetrics().density * 100.0f;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (a(this.f3096b)) {
                BaseAppCompatActivity.this.showKeyBoardHandler();
            } else {
                BaseAppCompatActivity.this.hideKeyBoardHandler();
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3098b;

        b(final String val$gameid) {
            this.f3098b = val$gameid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            g1.d("popwindow", "onClick main dismiss");
            BaseAppCompatActivity.this.popupWindow.dismiss();
            if (BaseAppCompatActivity.this.isSo) {
                com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.enterSoStartMyGame, new Ext().setGameId(this.f3098b));
            } else {
                com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.enterSinStartMyGame, new Ext().setGameId(this.f3098b));
            }
            IntentUtil.getInstance().goMyGameManagerActivity(v10.getContext());
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f3100b;

        c(final DownloadTask val$downloadTask) {
            this.f3100b = val$downloadTask;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (BaseAppCompatActivity.this.isSo) {
                com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSoGameStart, new Ext().setGameId(this.f3100b.getCrc_link_type_val()));
            } else {
                com.papa.sim.statistic.t.l(v10.getContext()).R1(Event.onclickSinGameStart, new Ext().setGameId(this.f3100b.getCrc_link_type_val()));
            }
            UtilsMy.k4(v10.getContext(), this.f3100b);
            BaseAppCompatActivity.this.popupWindow.dismiss();
            g1.d("popwindow", "onClick ok dismiss");
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            BaseAppCompatActivity.this.popupWindow.dismiss();
            g1.d("popwindow", "onClick cancle dismiss");
        }
    }

    class e implements com.join.mgps.callbacks.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t f3103a;

        class a implements Consumer<com.tbruyelle.rxpermissions2.b> {
            a() {
            }

            @Override // io.reactivex.functions.Consumer
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
                if (permission.f83018a.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                    e eVar = e.this;
                    String str = eVar.f3103a.f3129b;
                    if (str != null) {
                        BaseAppCompatActivity.this.fialePath = str;
                    }
                    BaseAppCompatActivity.this.handlerx.sendEmptyMessage(1);
                }
            }
        }

        e(final t val$data) {
            this.f3103a = val$data;
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickCancle() {
            new com.tbruyelle.rxpermissions2.c(BaseAppCompatActivity.this).r("android.permission.REQUEST_INSTALL_PACKAGES").subscribe(new a());
        }

        @Override // com.join.mgps.callbacks.d
        public void onClickOk() {
            BaseAppCompatActivity.this.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + BaseAppCompatActivity.this.getPackageName())), 10010);
        }
    }

    class f implements Consumer<com.tbruyelle.rxpermissions2.b> {

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, BaseAppCompatActivity.this.getPackageName(), null));
                BaseAppCompatActivity.this.startActivity(intent);
            }
        }

        f() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (permission.f83019b) {
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74779c)) {
                    String strI = com.join.android.app.common.utils.q.n(MApplication.f3182z).i();
                    MApplication.A = strI;
                    try {
                        MApplication.A = com.join.mgps.Util.a.d(strI, "");
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            } else if (!permission.f83020c) {
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74779c)) {
                    return;
                }
                BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                Dialog dialog = baseAppCompatActivity.dialogU;
                if (dialog == null) {
                    baseAppCompatActivity.dialog = new AlertDialog.Builder(baseAppCompatActivity, R.style.AlertDialogCustom);
                } else if (dialog.isShowing()) {
                    return;
                }
                BaseAppCompatActivity.this.dialog.setTitle("提示");
                if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
                    BaseAppCompatActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
                } else {
                    BaseAppCompatActivity.this.dialog.setMessage("请去设置中开启权限");
                }
                BaseAppCompatActivity.this.dialog.setPositiveButton("去打开", new a());
                BaseAppCompatActivity baseAppCompatActivity2 = BaseAppCompatActivity.this;
                baseAppCompatActivity2.dialogU = baseAppCompatActivity2.dialog.show();
            }
            if (BaseAppCompatActivity.this.baiduChannelPermissionCallBack != null) {
                BaseAppCompatActivity.this.baiduChannelPermissionCallBack.b();
            }
        }
    }

    class g extends Handler {
        g() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            try {
                int i10 = msg.what;
                if (i10 == 1) {
                    com.join.android.app.common.utils.g.t0(BaseAppCompatActivity.this).B(BaseAppCompatActivity.this, new File(BaseAppCompatActivity.this.fialePath));
                } else if (i10 == 3) {
                    try {
                        BaseAppCompatActivity.this.showDownFinish((String) msg.obj);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                    if (baseAppCompatActivity.isInBackground) {
                    } else {
                        baseAppCompatActivity.requestPermission((t) msg.obj);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    class h implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f3109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f3110c;

        h(final Intent val$intent, final Context val$context) {
            this.f3109b = val$intent;
            this.f3110c = val$context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            BaseAppCompatActivity.this.getUNzipPermiss(this.f3109b.getStringExtra("gameId"), BaseAppCompatActivity.this);
            com.papa.sim.statistic.t.l(this.f3110c).R1(Event.Unzip_getpermission, new Ext());
        }
    }

    class i implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f3112b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f3113c;

        i(final Intent val$intent, final Context val$context) {
            this.f3112b = val$intent;
            this.f3113c = val$context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            BaseAppCompatActivity.this.setUnzipFailedStatus(this.f3112b.getStringExtra("gameId"));
            com.papa.sim.statistic.t.l(this.f3113c).R1(Event.Unzip_cancelpermission, new Ext());
        }
    }

    class j implements NetBroadcastReceiver.a {
        j() {
        }

        @Override // com.join.mgps.broadcast.NetBroadcastReceiver.a
        public void a(int netMobile) {
            BaseAppCompatActivity.this.onNetworkChanged(netMobile);
        }
    }

    class k implements Consumer<com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f3116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f3117c;

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, BaseAppCompatActivity.this.getPackageName(), null));
                BaseAppCompatActivity.this.startActivity(intent);
            }
        }

        k(final Context val$context, final String val$gameid) {
            this.f3116b = val$context;
            this.f3117c = val$gameid;
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (permission.f83019b) {
                if (ContextCompat.checkSelfPermission(this.f3116b, com.kuaishou.weapon.p0.g.f74786j) == 0) {
                    com.papa.sim.statistic.t.l(this.f3116b).R1(Event.Unzip_permissionsuccess, new Ext());
                    DownloadTask downloadTaskG = q5.f.M().G(this.f3117c);
                    if (downloadTaskG != null) {
                        if (Integer.parseInt(downloadTaskG.getPlugin_num()) == ConstantIntEnum.MGAME.value()) {
                            com.join.android.app.common.servcie.j.f().z(this.f3116b, downloadTaskG, false);
                            return;
                        } else {
                            com.join.android.app.common.servcie.j.f().z(this.f3116b, downloadTaskG, true);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (permission.f83020c) {
                BaseAppCompatActivity.this.setUnzipFailedStatus(this.f3117c);
                return;
            }
            BaseAppCompatActivity.this.setUnzipFailedStatus(this.f3117c);
            BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
            Dialog dialog = baseAppCompatActivity.dialogU;
            if (dialog == null) {
                baseAppCompatActivity.dialog = new AlertDialog.Builder(baseAppCompatActivity, R.style.AlertDialogCustom);
            } else if (dialog.isShowing()) {
                return;
            }
            BaseAppCompatActivity.this.dialog.setTitle("提示");
            if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
                BaseAppCompatActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
            } else {
                BaseAppCompatActivity.this.dialog.setMessage("请去设置中开启权限");
            }
            BaseAppCompatActivity.this.dialog.setPositiveButton("去打开", new a());
            BaseAppCompatActivity baseAppCompatActivity2 = BaseAppCompatActivity.this;
            baseAppCompatActivity2.dialogU = baseAppCompatActivity2.dialog.show();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.i();
            }
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = BaseAppCompatActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.j();
            }
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            APKUtils.l0(BaseAppCompatActivity.this);
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseAppCompatActivity.this.uiHider.b();
        }
    }

    class s implements com.join.mgps.wrapper.SystemUiHider.a.b {
        s() {
        }

        @Override // com.join.mgps.wrapper.SystemUiHider.a.b
        public void onVisibilityChange(boolean visible) {
        }
    }

    class t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3128a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f3129b;

        t() {
        }
    }

    class u extends CountDownTimer {
        public u(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            try {
                BaseAppCompatActivity baseAppCompatActivity = BaseAppCompatActivity.this;
                if (baseAppCompatActivity.popupWindow == null || baseAppCompatActivity == null || baseAppCompatActivity.isFinishing()) {
                    return;
                }
                g1.d("popwindow", "onFinish TimeCount dismiss");
                BaseAppCompatActivity.this.popupWindow.dismiss();
                BaseAppCompatActivity.this.popupWindow = null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
        }
    }

    private void clearHiderListener() {
        com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
        if (aVar != null) {
            aVar.d(null);
        }
        Handler handler = this.hideHandler;
        if (handler != null) {
            handler.removeCallbacks(this.hideRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getUNzipPermiss(String gameid, Context context) {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74786j).subscribe(new k(context, gameid));
            UtilsMy.c4(this, com.kuaishou.weapon.p0.g.f74786j);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void initPopData(String gameid) {
        this.gameid = gameid;
        this.contentView.findViewById(R.id.main).setOnClickListener(new b(gameid));
        TextView textView = (TextView) this.contentView.findViewById(R.id.title);
        TextView textView2 = (TextView) this.contentView.findViewById(R.id.ok);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) this.contentView.findViewById(R.id.icon);
        TextView textView3 = (TextView) this.contentView.findViewById(R.id.info);
        ImageView imageView = (ImageView) this.contentView.findViewById(R.id.cancle);
        DownloadTask downloadTaskG = q5.f.M().G(gameid);
        if (Dtype.apk.name().equals(downloadTaskG.getFileType())) {
            textView3.setText("下载完成");
            this.isSo = true;
            com.papa.sim.statistic.t.l(this).R1(Event.showSoGameStart, new Ext().setGameId(downloadTaskG.getCrc_link_type_val()));
        } else {
            com.papa.sim.statistic.t.l(this).R1(Event.showSinGameStart, new Ext().setGameId(downloadTaskG.getCrc_link_type_val()));
            this.isSo = false;
            textView3.setText("安装完成");
        }
        com.join.android.app.common.utils.l.h(simpleDraweeView, downloadTaskG.getPortraitURL());
        textView.setText(downloadTaskG.getShowName());
        textView2.setText("开始游戏");
        textView2.setOnClickListener(new c(downloadTaskG));
        imageView.setOnClickListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$0() {
        com.join.mgps.Util.u.e(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRecivied(Intent intent, Context context) {
        if (this.isInBackground) {
            return;
        }
        com.papa.sim.statistic.t.l(context).R1(Event.Unzip_nopermission, new Ext());
        Dialog dialog = this.dialogU;
        if (dialog == null) {
            this.dialog = new AlertDialog.Builder(context, R.style.AlertDialogCustom);
        } else if (dialog.isShowing()) {
            return;
        }
        this.dialog.setTitle("解压失败");
        this.dialog.setMessage("未获取到存储权限");
        this.dialog.setPositiveButton("去获取", new h(intent, context));
        this.dialog.setNegativeButton("取消", new i(intent, context));
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
            j0.a().c(new com.join.mgps.event.r(downloadTaskG, downloadTaskG.getStatus()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDownFinishPre(String gameid) {
        Message message = new Message();
        message.obj = gameid;
        message.what = 3;
        this.handlerx.sendMessageDelayed(message, 500L);
    }

    private synchronized void updateHider() {
        int i10;
        try {
            boolean z10 = this.fullScreenFlag;
            if (z10) {
                if (z10) {
                    i10 = 6;
                } else {
                    i10 = com.join.mgps.wrapper.a.f73400b < 11 ? 3 : 1;
                }
                this.fullScreenCfg = i10;
            } else {
                this.fullScreenCfg = 0;
            }
            if (this.fullScreenCfg != 0) {
                this.hideHandler = new Handler();
                this.hideRunnable = new r();
                com.join.mgps.wrapper.SystemUiHider.a aVarA = com.join.mgps.wrapper.SystemUiHider.a.a(this, findViewById(android.R.id.content), this.fullScreenCfg);
                this.uiHider = aVarA;
                aVarA.e();
                this.uiHider.d(new s());
            }
            com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
            if (aVar != null && aVar.c()) {
                this.uiHider.b();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        showLoadingLayoutBase();
        loadDataBase();
    }

    public void dismissLoading() {
        com.join.android.app.common.dialog.e eVar = this.loading;
        if (eVar == null) {
            return;
        }
        try {
            eVar.dismiss();
        } catch (Exception unused) {
        }
    }

    public DatabaseHelper getHelper() {
        if (this.databaseHelper == null) {
            this.databaseHelper = q5.e.d(this).c();
        }
        return this.databaseHelper;
    }

    public int getLoadingLayoutResID() {
        return 0;
    }

    public int getLoadingMarginTop() {
        return i0.a(this, 48.0f);
    }

    public void hideKeyBoardHandler() {
    }

    public void hideLoadingLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new m());
        }
    }

    public boolean isHindeLoadingLayout() {
        return this.mLoadingLayout.e();
    }

    public void loadDataBase() {
    }

    @Override // com.join.mgps.customview.LoadingLayout.a
    public void noDataCallBack() {
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
        if (this.broadcasExt == null) {
            this.broadcasExt = new BroadcasExtFA();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(p5.a.f96233z);
            registerReceiver(this.broadcasExt, intentFilter);
        }
        this.prefDef_ = new PrefDef_(this);
        this.hasdestroyed = false;
        if (this.netBroadcastReceiver == null) {
            try {
                this.intentFilter12_.addAction(p5.a.f96210n0);
                this.intentFilter12_.addAction(p5.a.f96212o0);
                this.intentFilter12_.addAction(p5.a.N);
                this.intentFilter12_.addAction(p5.a.f96214p0);
                this.intentFilter12_.addAction(p5.a.f96216q0);
                registerReceiver(this.onReciviedReceiver_, this.intentFilter12_);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            NetBroadcastReceiver netBroadcastReceiver = new NetBroadcastReceiver();
            this.netBroadcastReceiver = netBroadcastReceiver;
            netBroadcastReceiver.a(new j());
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            registerReceiver(this.netBroadcastReceiver, intentFilter2);
        }
        setupKeyboardHandler(this);
        if (this.recver == null) {
            this.recver = new PermissRecver();
            IntentFilter intentFilter3 = new IntentFilter();
            intentFilter3.addAction("com.wufun.get.permission");
            intentFilter3.addAction("com.wufun.get.downFinish");
            LocalBroadcastManager.getInstance(this).registerReceiver(this.recver, intentFilter3);
        }
        this.rangeTop = getResources().getDimensionPixelOffset(R.dimen.wdp200);
        this.rangeBottom = com.join.android.app.common.utils.q.n(this).k(this);
        if (this.adResultReceiver == null) {
            this.adResultReceiver = new EmuOutResultReceiver();
            IntentFilter intentFilter4 = new IntentFilter();
            intentFilter4.addAction(p5.a.V);
            intentFilter4.addAction(p5.a.I0);
            registerReceiver(this.adResultReceiver, intentFilter4);
        }
        com.join.mgps.va.overmind.i.q().W(getIntent());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler = null;
        }
        this.hasdestroyed = true;
        if (!isFinishing() && this.popupWindow != null) {
            g1.d("popwindow", "onDestroy  dismiss");
            this.popupWindow.dismiss();
            this.popupWindow = null;
        }
        unregisterReceiver(this.broadcasExt);
        unregisterReceiver(this.netBroadcastReceiver);
        unregisterReceiver(this.adResultReceiver);
        try {
            BroadcastReceiver broadcastReceiver = this.onReciviedReceiver_;
            if (broadcastReceiver != null) {
                unregisterReceiver(broadcastReceiver);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.recver);
        org.androidannotations.api.c.n(this).p(this);
        v6.d dVar = this.baiduChannelPermissionCallBack;
        if (dVar != null) {
            dVar.b();
        }
        super.onDestroy();
    }

    public void onFavoriteChanged(int pid, boolean isFavorite) {
    }

    protected void onNetworkChanged(int s10) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.join.mgps.va.overmind.i.q().W(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null && !this.hasdestroyed) {
            try {
                popupWindow.dismiss();
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
        clearHiderListener();
        h8.a aVarA = com.constant.a.a();
        if (aVarA != null) {
            aVarA.onPagePause();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (permissions != null) {
            try {
                if (permissions.length <= 0 || com.papa.sim.statistic.pref.b.k(this).l()) {
                    return;
                }
                for (String str : permissions) {
                    if (str.equals(com.kuaishou.weapon.p0.g.f74779c)) {
                        com.papa.sim.statistic.pref.b.k(this).F(true);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        DownloadTask downloadTaskG;
        DownloadTask downloadTaskG2;
        super.onResume();
        this.hasDialog = false;
        this.isInBackground = false;
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            b1.a(this);
        }
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f23600b.lambda$onResume$0();
            }
        }, 500L);
        org.androidannotations.api.c.n(this).s(this);
        if (this.isfirst) {
            this.isfirst = false;
            return;
        }
        PrefDef_ prefDef_ = new PrefDef_(this);
        String strD = prefDef_.lastInstallApp().d();
        if (t2.i(strD) && (downloadTaskG2 = q5.f.M().G(strD)) != null && downloadTaskG2.getStatus() == 11 && !downloadTaskG2.getCrc_link_type_val().equals(new PrefDef_(this).lastShowTOUTIAOAd().d()) && !com.join.android.app.common.utils.g.t0(this).e(this, downloadTaskG2.getPackageName())) {
            if ((TextUtils.isEmpty(downloadTaskG2.getPackageName()) || !downloadTaskG2.getPackageName().equals(d2.f49544b)) && !(MApplication.f3182z.getActivity() instanceof ModGameIndexActivity)) {
                UnzipFailedDialog_.intent(this).gameId(downloadTaskG2.getCrc_link_type_val()).from(2).start();
            }
            this.hasDialog = true;
        }
        if (!this.hasDialog) {
            String strD2 = prefDef_.lastInstallAppFinish().d();
            if (t2.i(strD2) && (downloadTaskG = q5.f.M().G(strD2)) != null) {
                String packageName = downloadTaskG.getPackageName();
                if (t2.i(strD2) && !t2.h(packageName) && com.join.mgps.Util.l.e(this, packageName) && t2.i(downloadTaskG.getTips()) && !downloadTaskG.getTips().contains("网游")) {
                    showDownFinishPre(strD2);
                    prefDef_.lastInstallAppFinish().g("");
                }
            }
        }
        if (!this.hasDialog && this.canShowFeedBack && !(this instanceof SimulatorExitPlayActivity_) && !(this instanceof SimulatorExitPlayActivity1_)) {
            this.hasDialog = h0.h0(this).e(this);
        }
        v6.d dVar = this.baiduChannelPermissionCallBack;
        if (dVar != null) {
            dVar.b();
        }
        this.mHandler.postDelayed(new q(), 600L);
        UtilsMy.h4(this);
        h8.a aVarA = com.constant.a.a();
        if (aVarA != null) {
            aVarA.onPageResume();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        dismissLoading();
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
        if (aVar != null) {
            if (hasFocus && this.fullScreenFlag) {
                aVar.b();
            } else {
                aVar.f();
            }
        }
        super.onWindowFocusChanged(hasFocus);
    }

    void requestPermission(t data) {
        if (data == null || TextUtils.isEmpty(data.f3128a)) {
            return;
        }
        h1.e("request permission");
        String str = data.f3128a;
        if (ContextCompat.checkSelfPermission(this, str) == 0) {
            return;
        }
        UtilsMy.c4(this, str);
        if (!str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
            try {
                new com.tbruyelle.rxpermissions2.c(this).r(str).subscribe(new f());
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        String str2 = data.f3129b;
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
        dVar2.b(new e(data));
        this.apkInstallDialog.show();
    }

    public void setChannelPermissionCallBack(v6.d callBack) {
        this.baiduChannelPermissionCallBack = callBack;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        setStatusBar();
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(this).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        this.mLoadingLayout = loadingLayout;
        String str = this.loadingHintMsg;
        if (str != null) {
            loadingLayout.setLoadingHintMsg(str);
        }
        int loadingLayoutResID = getLoadingLayoutResID();
        if (loadingLayoutResID > 0) {
            this.mLoadingLayout.b(getWindow().getDecorView().getRootView(), loadingLayoutResID);
            this.mLoadingLayout.setRefreshCallBackListener(this);
            this.mLoadingLayout.setLoadingLayoutMarginTop(getLoadingMarginTop());
        }
    }

    public void setLoadingFailMsg(String loadingFailMsg) {
        this.mLoadingLayout.setFailedMessage(loadingFailMsg);
    }

    public void setLoadingHintMsg(String msg) {
        this.loadingHintMsg = msg;
    }

    public void setNoDataListener() {
        this.mLoadingLayout.setNoDataCallBackListener(this);
    }

    void setStatusBar() {
        String str = Build.BRAND;
        if (!"vivo".equals(str.toLowerCase()) && !"oppo".equals(str.toLowerCase())) {
            p2.r(this, -1, true);
        } else {
            p2.r(this, -8421505, true);
            p2.c(this, p2.d(this));
        }
    }

    public void setSystemUiHide(boolean hide) {
        this.fullScreenFlag = hide;
        updateHider();
        if (this.uiHider != null) {
            findViewById(android.R.id.content).getSystemUiVisibility();
            if (this.fullScreenFlag) {
                if (this.uiHider.c()) {
                    this.uiHider.b();
                }
            } else {
                if (!this.uiHider.c()) {
                    this.uiHider.f();
                }
                this.uiHider.f();
            }
        }
    }

    public void setTextViewNoData(String text) {
        LoadingLayout loadingLayout = this.mLoadingLayout;
        if (loadingLayout != null) {
            loadingLayout.setTextViewNoData(text);
        }
    }

    public void setmLoadingHintMsgLoading(String msg) {
        this.mLoadingLayout.setLoadingHintMsg(msg);
    }

    public void setupKeyboardHandler(final Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(new a(decorView.getRootView()));
    }

    protected void showDownFinish(String gameid) {
        if (this.isInBackground) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ModGameIndexActivity.class);
            arrayList.add(GameMainActivity3_.class);
            arrayList.add(NewArenaMainActivty_.class);
            arrayList.add(EndGameLaunchActivity_.class);
            arrayList.add(DiscoveryPaiweiActivity_.class);
            arrayList.add(EndGameActivity_.class);
            arrayList.add(EndGameDetailActivity_.class);
            arrayList.add(HMCloudRemoteActivity_.class);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (((Class) it2.next()).isInstance(MApplication.f3182z.getActivity())) {
                    return;
                }
            }
            h0.h0(this).H(gameid);
            this.hasDialog = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void showFailLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new o());
        }
    }

    public void showKeyBoardHandler() {
    }

    public void showLoading() {
        com.join.android.app.common.dialog.e eVar = new com.join.android.app.common.dialog.e(this);
        this.loading = eVar;
        eVar.show();
    }

    public void showLoadingLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new l());
        }
    }

    public void showNoDataLayoutBase() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new n());
        }
    }

    public void showNoDataLayoutTwo() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new p());
        }
    }

    @Override // java.util.Observer
    public void update(Observable o10, Object arg) {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        setStatusBar();
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(this).inflate(R.layout.layout_papa_loading, (ViewGroup) null);
        this.mLoadingLayout = loadingLayout;
        String str = this.loadingHintMsg;
        if (str != null) {
            loadingLayout.setLoadingHintMsg(str);
        }
        int loadingLayoutResID = getLoadingLayoutResID();
        if (loadingLayoutResID > 0) {
            this.mLoadingLayout.b(getWindow().getDecorView().getRootView(), loadingLayoutResID);
            this.mLoadingLayout.setRefreshCallBackListener(this);
            this.mLoadingLayout.setLoadingLayoutMarginTop(getLoadingMarginTop());
        }
    }
}
