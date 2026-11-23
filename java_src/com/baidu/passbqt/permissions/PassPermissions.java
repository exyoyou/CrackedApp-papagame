package com.baidu.passbqt.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.baidu.passbqt.NoProguard;
import com.bykv.vk.component.ttvideo.player.C;

/* JADX INFO: loaded from: classes6.dex */
public class PassPermissions implements NoProguard {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f8378a = "PassPermissions";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static PassPermissions f8379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PermissionsDTO f8380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PermissionsCallback f8381d;

    private PassPermissions() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f8380c = null;
        this.f8381d = null;
        f8379b = null;
    }

    public PermissionsDTO b() {
        return this.f8380c;
    }

    public PermissionsCallback c() {
        return this.f8381d;
    }

    public static synchronized PassPermissions a() {
        if (f8379b == null) {
            f8379b = new PassPermissions();
        }
        return f8379b;
    }

    public void a(PermissionsDTO permissionsDTO, final PermissionsCallback permissionsCallback) {
        String[] strArr;
        if (permissionsDTO != null && permissionsDTO.f8387a != null && (strArr = permissionsDTO.f8388b) != null && strArr.length != 0 && permissionsCallback != null) {
            this.f8380c = permissionsDTO;
            this.f8381d = new PermissionsCallback() { // from class: com.baidu.passbqt.permissions.PassPermissions.1
                @Override // com.baidu.passbqt.permissions.PermissionsCallback
                public void a() {
                    PassPermissions.this.d();
                    permissionsCallback.a();
                }

                @Override // com.baidu.passbqt.permissions.PermissionsCallback
                public void a(int i10) {
                    PassPermissions.this.d();
                    permissionsCallback.a(i10);
                }
            };
            if (a(permissionsDTO.f8388b)) {
                this.f8381d.a();
                return;
            }
            if (Build.VERSION.SDK_INT < 23) {
                this.f8381d.a(-1);
                return;
            }
            Intent intent = new Intent(permissionsDTO.f8387a, (Class<?>) PermissionsHelperActivity.class);
            Context context = permissionsDTO.f8387a;
            if (context instanceof Activity) {
                context.startActivity(intent);
                return;
            } else {
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                permissionsDTO.f8387a.startActivity(intent);
                return;
            }
        }
        throw new IllegalArgumentException("params is error");
    }

    boolean a(String... strArr) {
        for (String str : strArr) {
            if (!a(str, this.f8380c.f8387a)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(String str, Context context) {
        try {
            int i10 = Build.VERSION.SDK_INT;
            return (i10 >= 23 && context.checkSelfPermission(str) == 0) || (i10 < 23 && context.checkCallingOrSelfPermission(str) == 0);
        } catch (Exception unused) {
            return false;
        }
    }
}
