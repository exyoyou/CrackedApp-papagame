package com.baidu.passbqt.permissions;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.baidu.passbqt.common.Log;
import com.baidu.passbqt.common.SharedPreferencesUtil;
import com.baidu.passbqt.view.CommonDialog;
import com.byazt.quv.AbsServerManager;

/* JADX INFO: loaded from: classes6.dex */
public class PermissionsHelperActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f8396a = 8000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f8397b = 8001;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PermissionsDTO f8398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PermissionsCallback f8399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private StringBuilder f8400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8401f;

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 8000) {
            if (PassPermissions.a().a(PassPermissions.a().b().f8388b)) {
                this.f8399d.a();
            } else {
                this.f8399d.a(-1);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8398c = PassPermissions.a().b();
        PermissionsCallback permissionsCallbackC = PassPermissions.a().c();
        this.f8399d = permissionsCallbackC;
        if (this.f8398c == null) {
            if (permissionsCallbackC != null) {
                permissionsCallbackC.a(-1);
            }
            finish();
            return;
        }
        this.f8400e = new StringBuilder();
        for (String str : this.f8398c.f8388b) {
            this.f8400e.append(str);
        }
        SharedPreferencesUtil.a(this);
        if (((Boolean) SharedPreferencesUtil.b(this.f8400e.toString(), Boolean.FALSE)).booleanValue() || TextUtils.isEmpty(this.f8398c.f8389c)) {
            requestPermissions(this.f8398c.f8388b, 8001);
        } else {
            new CommonDialog.Builder(this).a(this.f8398c.f8389c).a((CharSequence) this.f8398c.f8390d).b(this.f8398c.f8395i).b(this.f8398c.f8391e).a(this.f8398c.f8392f, new View.OnClickListener() { // from class: com.baidu.passbqt.permissions.PermissionsHelperActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SharedPreferencesUtil.a(PermissionsHelperActivity.this.f8400e.toString(), Boolean.TRUE);
                    PermissionsHelperActivity permissionsHelperActivity = PermissionsHelperActivity.this;
                    permissionsHelperActivity.requestPermissions(permissionsHelperActivity.f8398c.f8388b, 8001);
                }
            }).b(this.f8398c.f8393g, new View.OnClickListener() { // from class: com.baidu.passbqt.permissions.PermissionsHelperActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PermissionsHelperActivity.this.f8399d.a(-2);
                    PermissionsHelperActivity.this.finish();
                }
            }).a().show();
            this.f8401f = true;
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 != 8001) {
            return;
        }
        boolean z10 = false;
        boolean z11 = true;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (iArr[i11] == 0) {
                Log.b(PassPermissions.f8378a, "Permission check result is permission granted");
            } else if (TextUtils.isEmpty(this.f8398c.f8390d)) {
                this.f8399d.a(-1);
                finish();
                return;
            } else {
                if (!shouldShowRequestPermissionRationale(strArr[i11])) {
                    z10 = true;
                }
                z11 = false;
            }
        }
        if (z10 && !this.f8401f && this.f8398c.f8394h) {
            new CommonDialog.Builder(this).a(this.f8398c.f8389c).a((CharSequence) this.f8398c.f8390d).b(this.f8398c.f8395i).a(this.f8398c.f8392f, new View.OnClickListener() { // from class: com.baidu.passbqt.permissions.PermissionsHelperActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, PermissionsHelperActivity.this.getPackageName(), null));
                    PermissionsHelperActivity.this.startActivityForResult(intent, 8000);
                }
            }).b(this.f8398c.f8393g, new View.OnClickListener() { // from class: com.baidu.passbqt.permissions.PermissionsHelperActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PermissionsHelperActivity.this.f8399d.a(-1);
                    PermissionsHelperActivity.this.finish();
                }
            }).a().show();
        } else if (z11) {
            this.f8399d.a();
            finish();
        } else {
            this.f8399d.a(-1);
            finish();
        }
    }
}
