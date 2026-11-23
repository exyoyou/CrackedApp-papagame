package com.xinzhu.overmind.shared;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.WindowManager;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;
import com.haima.hmcp.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0014J\u0006\u0010\u001c\u001a\u00020\u000bJ\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\r0\r0\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/xinzhu/overmind/shared/OMProxyActivity;", "Landroidx/activity/ComponentActivity;", "<init>", "()V", "receiver", "Landroid/content/BroadcastReceiver;", "getReceiver", "()Landroid/content/BroadcastReceiver;", "setReceiver", "(Landroid/content/BroadcastReceiver;)V", "onNewIntent", "", Constants.WS_MESSAGE_TYPE_INTENT, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onBackPressed", "onDestroy", "dialog", "Landroid/app/Dialog;", "getDialog", "()Landroid/app/Dialog;", "setDialog", "(Landroid/app/Dialog;)V", "optimLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "kotlin.jvm.PlatformType", "check", "isIgnoringBatteryOptimizations", "", "context", "Landroid/content/Context;", "Companion", "omshared_wufunRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OMProxyActivity extends ComponentActivity {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    public static final a f89988k = new a(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NotNull
    private static final String f89989m = "com.om.proxy.action.BACKGROUND_RUNNING";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotNull
    private static final String f89990o = "com.om.proxy.action.ACTION_FINISH";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NotNull
    private static final String f89991p = "com.om.proxy.action.INTENT_FINISH";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private BroadcastReceiver f89992g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private Dialog f89993h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private ActivityResultLauncher<Intent> f89994j;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String a() {
            return OMProxyActivity.f89989m;
        }

        @NotNull
        public final String b() {
            return OMProxyActivity.f89990o;
        }

        @NotNull
        public final String c() {
            return OMProxyActivity.f89991p;
        }

        private a() {
        }
    }

    public OMProxyActivity() {
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.xinzhu.overmind.shared.i
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                OMProxyActivity.q(this.f90032a, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.f89994j = activityResultLauncherRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(OMProxyActivity oMProxyActivity, DialogInterface dialogInterface) {
        oMProxyActivity.setResult(oMProxyActivity.p(oMProxyActivity) ? -1 : 0);
        oMProxyActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(OMProxyActivity oMProxyActivity, DialogInterface dialogInterface, int i10) {
        Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
        intent.setData(Uri.parse("package:" + oMProxyActivity.getPackageName()));
        oMProxyActivity.f89994j.launch(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(OMProxyActivity oMProxyActivity, ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            Dialog dialog = oMProxyActivity.f89993h;
            if (dialog != null) {
                dialog.dismiss();
            }
            oMProxyActivity.f89993h = null;
            oMProxyActivity.setResult(Build.VERSION.SDK_INT >= 23 ? oMProxyActivity.p(oMProxyActivity) : true ? -1 : 0);
            oMProxyActivity.finish();
        }
    }

    public final void k() {
        Dialog dialog;
        Intent intent = getIntent();
        if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, f89989m)) {
            try {
                if (Build.VERSION.SDK_INT >= 23 && !p(this)) {
                    boolean z10 = false;
                    if (this.f89993h == null) {
                        this.f89993h = new AlertDialog.Builder(this).setTitle("提示").setMessage("为保证应用正常运行，请允许本应用在后台运行").setCancelable(false).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.xinzhu.overmind.shared.g
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                OMProxyActivity.l(this.f90030b, dialogInterface);
                            }
                        }).setPositiveButton("允许", new DialogInterface.OnClickListener() { // from class: com.xinzhu.overmind.shared.h
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i10) {
                                OMProxyActivity.m(this.f90031b, dialogInterface, i10);
                            }
                        }).create();
                    }
                    Dialog dialog2 = this.f89993h;
                    if (dialog2 != null && dialog2.isShowing()) {
                        z10 = true;
                    }
                    if (z10 || (dialog = this.f89993h) == null) {
                        return;
                    }
                    dialog.show();
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            setResult(-1, null);
            finish();
        }
    }

    @Nullable
    /* JADX INFO: renamed from: n, reason: from getter */
    public final Dialog getF89993h() {
        return this.f89993h;
    }

    @Nullable
    /* JADX INFO: renamed from: o, reason: from getter */
    public final BroadcastReceiver getF89992g() {
        return this.f89992g;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        sendBroadcast(new Intent(f89991p));
        super.onBackPressed();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.xinzhu.overmind.shared.OMProxyActivity.onCreate.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context p10, Intent p11) {
                if (Intrinsics.areEqual(p11 != null ? p11.getAction() : null, OMProxyActivity.f89988k.b())) {
                    OMProxyActivity.this.finish();
                }
            }
        };
        this.f89992g = broadcastReceiver;
        Intrinsics.checkNotNull(broadcastReceiver);
        registerReceiver(broadcastReceiver, new IntentFilter(f89990o));
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.x = 0;
        attributes.y = 0;
        attributes.width = 1;
        attributes.height = 1;
        getWindow().setAttributes(attributes);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        BroadcastReceiver broadcastReceiver = this.f89992g;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(@Nullable Intent intent) {
        super.onNewIntent(intent);
        k();
    }

    @RequiresApi(23)
    public final boolean p(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            return powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
        }
        return false;
    }

    public final void s(@Nullable Dialog dialog) {
        this.f89993h = dialog;
    }

    public final void t(@Nullable BroadcastReceiver broadcastReceiver) {
        this.f89992g = broadcastReceiver;
    }
}
