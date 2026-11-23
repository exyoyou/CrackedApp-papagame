package com.xinzhu.overmind.shared;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes8.dex */
@TargetApi(23)
public class PermissionRequestActivity extends Activity {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f89996g = 995;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f89997h = "extra.permission";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f89998i = "extra.app_name";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f89999j = "extra.user_id";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f90000k = "extra.package_name";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f90002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f90003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Dialog f90004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    AlertDialog.Builder f90005f = null;

    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.dismiss();
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, PermissionRequestActivity.this.getPackageName(), null));
            PermissionRequestActivity.this.startActivity(intent);
            PermissionRequestActivity.this.finish();
        }
    }

    public static boolean a(int[] iArr) {
        for (int i10 : iArr) {
            if (i10 == -1) {
                return false;
            }
        }
        return true;
    }

    public static void b(@NonNull Context context, @NonNull String[] strArr, @NonNull String str, int i10, @NonNull String str2, int i11) {
        MindPackageSettings mindPackageSettingsK = Overmind.getMindPackageManager().k(str2);
        String mainPkg = (mindPackageSettingsK == null || !mindPackageSettingsK.E()) ? Overmind.getMainPkg() : Overmind.getPluginPkg();
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(mainPkg, PermissionRequestActivity.class.getName()));
        intent.putExtra(f89997h, strArr);
        intent.putExtra(f89998i, str);
        intent.putExtra(f90000k, str2);
        intent.putExtra(f89999j, i10);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String[] stringArrayExtra = intent.getStringArrayExtra(f89997h);
        this.f90002c = intent.getStringExtra(f89998i);
        this.f90003d = intent.getStringExtra(f90000k);
        this.f90001b = intent.getIntExtra(f89999j, -1);
        requestPermissions(stringArrayExtra, 995);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (a(iArr)) {
            Intent intent = new Intent();
            intent.putExtra("pkg", this.f90003d);
            intent.putExtra(HmRtcEnvironment.kUserId, this.f90001b);
            setResult(-1, intent);
            finish();
            return;
        }
        Dialog dialog = this.f90004e;
        if (dialog == null) {
            this.f90005f = new AlertDialog.Builder(this, R.style.AlertDialogCustom);
        } else if (dialog.isShowing()) {
            return;
        }
        this.f90005f.setTitle("提示");
        boolean z10 = false;
        for (String str : strArr) {
            if (str.equals(com.kuaishou.weapon.p0.g.f74785i) || str.equals(com.kuaishou.weapon.p0.g.f74786j)) {
                z10 = true;
            }
        }
        if (z10) {
            this.f90005f.setMessage("需要打开读写存储权限，请去设置中开启权限");
        } else {
            this.f90005f.setMessage("请去设置中开启权限");
        }
        this.f90005f.setPositiveButton("去打开", new a());
        this.f90004e = this.f90005f.show();
    }
}
