package com.xinzhu.overmind.shared;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import com.byazt.quv.AbsServerManager;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.AppDownFinishDialogActivity;
import com.xinzhu.overmind.Overmind;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
public class OMLauncherActivity extends Activity implements View.OnSystemUiVisibilityChangeListener {
    public static final String B = "_extra_pkg";
    public static final String C = "_extra_game_name";
    public static final String D = "_extra_game_ext";
    public static final String E = "_extra_game_id";
    public static final String F = "_extra_user_id";
    public static final String G = "_extra_mod_version";
    public static final String H = "_extra_mod_info";
    public static final String I = "_extra_mod_path";
    public static final String J = "_extra_mod_code";
    public static final String K = "_extra_mod_type";
    public static final String L = "action.close.launcher";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f89959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f89960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f89961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ProgressBar f89962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f89963g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f89964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    AnimationDrawable f89965i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f89971o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f89972p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    String f89973q;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Dialog f89982z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<String> f89958b = Arrays.asList("com.abuksigun.rpg_prototype", "com.wingjoy.mylife", "com.kleientertainment.doNotStarveShipwrecked", "com.popcap.pvz", "com.chucklefish.stardewvalley");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f89966j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f89967k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f89968l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f89969m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Integer f89970n = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f89974r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Integer f89975s = 1000;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    BroadcastReceiver f89976t = new BroadcastReceiver() { // from class: com.xinzhu.overmind.shared.OMLauncherActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !Objects.equals(intent.getAction(), OMLauncherActivity.L)) {
                return;
            }
            OMLauncherActivity.this.finish();
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    Handler f89977u = new Handler(new a());

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    Messenger f89978v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    Messenger f89979w = new Messenger(this.f89977u);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f89980x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ServiceConnection f89981y = new b();
    AlertDialog.Builder A = null;

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 == 2) {
                Bundle bundle = new Bundle();
                bundle.putString(OMLauncherActivity.E, OMLauncherActivity.this.f89967k);
                bundle.putString(OMLauncherActivity.B, OMLauncherActivity.this.f89966j);
                bundle.putString(OMLauncherActivity.G, OMLauncherActivity.this.f89969m);
                bundle.putString(OMLauncherActivity.I, OMLauncherActivity.this.f89973q);
                bundle.putInt(OMLauncherActivity.J, OMLauncherActivity.this.f89971o);
                bundle.putInt(OMLauncherActivity.K, OMLauncherActivity.this.f89972p);
                bundle.putInt(OMLauncherActivity.F, OMLauncherActivity.this.f89970n.intValue());
                OMLauncherActivity.this.y(3, bundle);
                return false;
            }
            if (i10 == 4) {
                OMLauncherActivity.this.w();
                return false;
            }
            if (i10 == 5) {
                OMLauncherActivity.this.v(message.getData());
                return false;
            }
            if (i10 == 6) {
                OMLauncherActivity.this.u();
                return false;
            }
            if (i10 == 7) {
                OMLauncherActivity.this.t();
                return false;
            }
            if (i10 == 8) {
                OMLauncherActivity.this.s(message.getData());
                return false;
            }
            if (i10 != 9) {
                return false;
            }
            OMLauncherActivity.this.r();
            return false;
        }
    }

    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            OMLauncherActivity.this.f89978v = new Messenger(iBinder);
            OMLauncherActivity.this.f89980x = true;
            try {
                Message message = new Message();
                message.what = 1;
                Bundle bundle = new Bundle();
                bundle.putString(AppDownFinishDialogActivity.KEY_GAME_ID, OMLauncherActivity.this.f89967k);
                message.setData(bundle);
                OMLauncherActivity oMLauncherActivity = OMLauncherActivity.this;
                message.replyTo = oMLauncherActivity.f89979w;
                oMLauncherActivity.f89978v.send(message);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            OMLauncherActivity oMLauncherActivity = OMLauncherActivity.this;
            oMLauncherActivity.f89978v = null;
            oMLauncherActivity.f89980x = false;
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OMLauncherActivity.this.finish();
        }
    }

    class d implements DialogInterface.OnClickListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, OMLauncherActivity.this.getPackageName(), null));
            OMLauncherActivity.this.startActivity(intent);
        }
    }

    private void k() {
        this.f89966j = getIntent().getStringExtra(B);
        this.f89968l = getIntent().getStringExtra(C);
        this.f89967k = getIntent().getStringExtra(E);
        this.f89970n = Integer.valueOf(getIntent().getIntExtra(F, 0));
        this.f89969m = getIntent().getStringExtra(G);
        this.f89973q = getIntent().getStringExtra(I);
        this.f89971o = getIntent().getIntExtra(J, 0);
        this.f89972p = getIntent().getIntExtra(K, 0);
        this.f89974r = getIntent().getBooleanExtra(D, false);
        if (TextUtils.isEmpty(this.f89966j)) {
            finish();
            return;
        }
        this.f89961e = (LinearLayout) findViewById(R.id.ll_download_status);
        this.f89962f = (ProgressBar) findViewById(R.id.pb_progress);
        this.f89963g = (TextView) findViewById(R.id.tv_progress_status_1);
        this.f89964h = (TextView) findViewById(R.id.tv_progress_status_2);
        this.f89960d = (TextView) findViewById(R.id.tv_launch_status);
        ImageView imageView = (ImageView) findViewById(R.id.iv_loading);
        this.f89959c = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getDrawable();
        this.f89965i = animationDrawable;
        animationDrawable.start();
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(Overmind.getMainPkg(), "com.join.mgps.va.service.OMPluginService"));
            bindService(intent, this.f89981y, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        registerReceiver(this.f89976t, new IntentFilter(L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(DialogInterface dialogInterface) {
        finish();
    }

    private void q() {
        Overmind.get().launchApk(this.f89966j, this.f89970n.intValue());
        this.f89977u.postDelayed(new c(), 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        this.f89961e.setVisibility(8);
        this.f89960d.setVisibility(0);
        if (Build.VERSION.SDK_INT < 23) {
            q();
            return;
        }
        if (!this.f89958b.contains(this.f89966j)) {
            q();
            return;
        }
        ApplicationInfo applicationInfo = getApplicationInfo();
        if (applicationInfo != null) {
            if (!m(applicationInfo).booleanValue()) {
                q();
                return;
            }
            String[] strArr = {com.kuaishou.weapon.p0.g.f74779c, com.kuaishou.weapon.p0.g.f74786j, com.kuaishou.weapon.p0.g.f74785i};
            if (i(strArr, Boolean.valueOf(this.f89974r)).booleanValue()) {
                q();
            } else {
                requestPermissions(strArr, this.f89975s.intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(Bundle bundle) {
        int i10 = bundle.getInt("_progress");
        this.f89962f.setProgress(i10);
        this.f89963g.setText(String.format(getResources().getString(R.string.s_mod_progress_status_3), i10 + "%"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        this.f89961e.setVisibility(0);
        this.f89962f.setProgress(0);
        this.f89964h.setVisibility(8);
        this.f89963g.setText(String.format(getResources().getString(R.string.s_mod_progress_status_3), "0%"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        this.f89961e.setVisibility(8);
        this.f89960d.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Bundle bundle) {
        if (bundle != null) {
            int i10 = bundle.getInt("_progress");
            long j10 = bundle.getLong("_expectSize");
            long j11 = bundle.getLong("_actualSize");
            String string = bundle.getString("_speed");
            String string2 = bundle.getString("_modVersion");
            this.f89962f.setProgress(i10);
            TextView textView = this.f89963g;
            String string3 = getResources().getString(R.string.s_mod_progress_status_1);
            StringBuilder sb2 = new StringBuilder();
            com.xinzhu.overmind.utils.k kVar = com.xinzhu.overmind.utils.k.f90096a;
            sb2.append(kVar.a(j11));
            sb2.append("");
            textView.setText(String.format(string3, sb2.toString(), kVar.a(j10) + "", i10 + "%"));
            this.f89964h.setText(String.format(getResources().getString(R.string.s_mod_progress_status_2), kVar.a(j10) + "", string + "", "v" + string2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        this.f89960d.setVisibility(8);
        this.f89961e.setVisibility(0);
    }

    private void x(int i10) {
        y(i10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(int i10, Bundle bundle) {
        if (this.f89978v != null) {
            Message message = new Message();
            message.what = i10;
            if (bundle != null) {
                message.setData(bundle);
            }
            try {
                this.f89978v.send(message);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    Boolean i(String[] strArr, Boolean bool) {
        if (strArr == null) {
            return Boolean.TRUE;
        }
        for (String str : strArr) {
            if (!j(str, bool).booleanValue()) {
                return Boolean.FALSE;
            }
        }
        return Boolean.TRUE;
    }

    Boolean j(String str, Boolean bool) {
        if (!o().booleanValue()) {
            return Boolean.FALSE;
        }
        if (t2.h(str)) {
            return Boolean.FALSE;
        }
        PackageManager packageManager = getPackageManager();
        if (bool.booleanValue()) {
            return Boolean.valueOf(packageManager.checkPermission(str, "com.join.android.app.mgsim.wufun.addon") == 0);
        }
        return Boolean.valueOf(packageManager.checkPermission(str, "com.join.android.app.mgsim.wufun") == 0);
    }

    void l() {
        z();
    }

    Boolean m(ApplicationInfo applicationInfo) {
        if (!o().booleanValue()) {
            return Boolean.FALSE;
        }
        if (applicationInfo == null) {
            return Boolean.FALSE;
        }
        int i10 = getApplicationInfo().targetSdkVersion;
        if (Build.VERSION.SDK_INT < 23 || i10 < 23) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(applicationInfo.targetSdkVersion > 23);
    }

    public boolean n(int[] iArr) {
        for (int i10 : iArr) {
            if (i10 == -1) {
                return false;
            }
        }
        return true;
    }

    Boolean o() {
        return Boolean.valueOf(Build.VERSION.SDK_INT >= 26);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_mod_loading);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        k();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        AnimationDrawable animationDrawable = this.f89965i;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
        unbindService(this.f89981y);
        unregisterReceiver(this.f89976t);
        this.f89977u.removeCallbacksAndMessages(null);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        k();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (n(iArr)) {
            q();
            return;
        }
        Dialog dialog = this.f89982z;
        if (dialog == null) {
            this.A = new AlertDialog.Builder(this, R.style.AlertDialogCustom);
        } else if (dialog.isShowing()) {
            return;
        }
        this.A.setTitle("提示");
        boolean z10 = false;
        for (String str : strArr) {
            if (str.equals(com.kuaishou.weapon.p0.g.f74785i) || str.equals(com.kuaishou.weapon.p0.g.f74786j)) {
                z10 = true;
            }
        }
        if (z10) {
            this.A.setMessage("需要打开读写存储权限，请去设置中开启权限");
        } else {
            this.A.setMessage("请去设置中开启权限");
        }
        this.A.setPositiveButton("去打开", new d());
        this.A.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.xinzhu.overmind.shared.d
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f90019b.p(dialogInterface);
            }
        });
        this.f89982z = this.A.show();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        l();
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int i10) {
        if (i10 == 0) {
            l();
        }
    }

    void z() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }
}
