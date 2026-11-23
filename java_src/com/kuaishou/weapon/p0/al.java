package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class al {
    public static boolean a(Context context) {
        try {
            String[] strArr = {"/storage/emulated/0/DCIM/Camera/virtual.mp4", "/storage/emulated/0/DCIM/Camera1/virtual.mp4", "/storage/emulated/0/DCIM/Camera1/no-silent.jpg", "/storage/emulated/0/DCIM/Camera1/disable.jpg", "/storage/emulated/0/DCIM/Camera1/no_toast.jpg"};
            for (int i10 = 0; i10 < 5; i10++) {
                if (new File(strArr[i10]).exists()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            String[] strArr = {"/system/lib/.aa", "/sdcard/my/34.png", "/sdcard/my/do_not_change.txt", "/sdcard/my/34.mp4", "/sdcard/my/44.mp4", "/sdcard/QQ=99932701/", "/sdcard/QQ=99932701/Dict.txt"};
            int i10 = 0;
            for (int i11 = 0; i11 < 7; i11++) {
                if (new File(strArr[i11]).exists()) {
                    i10 |= 1 << i11;
                }
            }
            if (i10 > 0) {
                jSONObject.put("files", i10);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static int c() {
        String[] strArr = {"/system/lib.aa", "/system/lib/ccc"};
        int i10 = 0;
        for (int i11 = 0; i11 < 2; i11++) {
            try {
                if (new File(strArr[i11]).exists()) {
                    i10 |= 1 << i11;
                }
            } catch (Exception unused) {
            }
        }
        return i10;
    }

    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            int i10 = 0;
            String[] strArr = {"persist.sys.virtual_camera_flag", "persist.sys.camera_type", "persist.sys.camera_rotation"};
            for (int i11 = 0; i11 < 3; i11++) {
                String strA = aa.a().a(strArr[i11]);
                if (!TextUtils.isEmpty(strA)) {
                    String str = strArr[i11];
                    jSONObject.put(str.substring(str.lastIndexOf(46) + 1), strA);
                }
            }
            try {
                Class.forName("android.hardware.mockcamera.MockCamera");
                jSONObject.put("MockCamera", 1);
            } catch (ClassNotFoundException unused) {
            }
            String[] strArr2 = {"/sdcard/.imei.txt", "/sdcard/key.txt", "/sdcard/video/1.mp4", "/sdcard/video/test.txt", "/sdcard/video/.aa", "/sdcard/video/.new", "/sdcard/video/.old"};
            for (int i12 = 2; i12 < 7; i12++) {
                if (new File(strArr2[i12]).exists()) {
                    i10 = (1 << i12) | i10;
                }
            }
            if (i10 > 0) {
                jSONObject.put("files", i10);
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    public static JSONObject b(Context context) {
        String[] strArr = {"/sdcard/my/44.mp4", "/system/lib/lic"};
        String[] strArr2 = {"com.yky"};
        JSONObject jSONObject = new JSONObject();
        try {
            int iA = bn.a(strArr);
            if (iA > 0) {
                jSONObject.put(com.xinzhu.overmind.server.os.f.TAG, iA);
            }
            PackageManager packageManager = context.getPackageManager();
            for (int i10 = 0; i10 <= 0; i10++) {
                try {
                    packageManager.getApplicationInfo(strArr2[0], 0);
                    jSONObject.put(strArr2[0], 1);
                } catch (PackageManager.NameNotFoundException | JSONException unused) {
                }
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }
}
