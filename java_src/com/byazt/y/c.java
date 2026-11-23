package com.byazt.y;

import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.ev.n;
import com.byazt.p.uj;
import com.byazt.quv.AbsServerManager;
import com.byazt.zz.ve;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_LUFS, 20})
public class c extends Fragment {
    private Intent a() {
        Context contextN = n();
        if (contextN == null) {
            return null;
        }
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        String packageName = contextN.getPackageName();
        intent.putExtra(AbsServerManager.PACKAGE_QUERY_BINDER, packageName);
        intent.putExtra("android.provider.extra.APP_PACKAGE", packageName);
        intent.putExtra("app_package", packageName);
        int i10 = contextN.getApplicationInfo().uid;
        intent.putExtra("uid", i10);
        intent.putExtra("app_uid", i10);
        return intent;
    }

    private Context n() {
        Context contextIc = ve.ic();
        return (contextIc != null || getActivity() == null || getActivity().isFinishing()) ? contextIc : getActivity().getApplicationContext();
    }

    public static Intent uj() {
        return new Intent("android.settings.APPLICATION_SETTINGS");
    }

    public void c() {
        try {
            try {
                try {
                    startActivityForResult(a(), 1000);
                } catch (Throwable unused) {
                    startActivityForResult(ve(), 1000);
                }
            } catch (Throwable unused2) {
                startActivityForResult(uj(), 1000);
            }
        } catch (Throwable unused3) {
            startActivityForResult(tt(), 1000);
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (uj.c()) {
            uj.c(true);
        } else {
            uj.c(false);
        }
    }

    public Intent tt() {
        Context contextN = n();
        if (contextN == null) {
            return null;
        }
        String packageName = contextN.getPackageName();
        String str = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.contains(n.ve)) {
                Intent intent = new Intent();
                intent.putExtra("packageName", packageName);
                intent.setComponent(new ComponentName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity"));
                return intent;
            }
            if (lowerCase.contains("vivo")) {
                Intent intent2 = new Intent();
                intent2.putExtra("packagename", packageName);
                if (Build.VERSION.SDK_INT >= 25) {
                    intent2.setComponent(new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"));
                } else {
                    intent2.setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"));
                }
                return intent2;
            }
            if (lowerCase.contains("meizu") && Build.VERSION.SDK_INT < 25) {
                Intent intent3 = new Intent("com.meizu.safe.security.SHOW_APPSEC");
                intent3.putExtra("packageName", packageName);
                intent3.setComponent(new ComponentName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity"));
                return intent3;
            }
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + contextN.getPackageName()));
    }

    public Intent ve() {
        Context contextN = n();
        if (contextN == null) {
            return null;
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + contextN.getPackageName()));
    }
}
