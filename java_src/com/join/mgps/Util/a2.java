package com.join.mgps.Util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import androidx.core.content.ContextCompat;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a2 f49490a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static List<String> f49491b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f49492c = "android.permission.WRITE_EXTERNAL_STORAGE";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f49493d = "android.permission.READ_PHONE_STATE";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f49494e = "android.permission.CAMERA";

    public interface a {
        void a(String strMessage);

        void b();

        void c();
    }

    private void a(List<String> mListPermissions) {
        mListPermissions.add("android.permission.WRITE_EXTERNAL_STORAGE");
        mListPermissions.add(f49494e);
    }

    public static a2 c() {
        if (f49490a == null) {
            f49490a = new a2();
        }
        return f49490a;
    }

    public static boolean d() {
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        return Environment.isExternalStorageManager();
    }

    public static boolean f(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 23) {
            return false;
        }
        if (i10 >= 33) {
            if (context.getApplicationInfo().targetSdkVersion >= 30 || ContextCompat.checkSelfPermission(context, "android.permission.MANAGE_EXTERNAL_STORAGE") == 0) {
                return false;
            }
        } else if (!context.getSharedPreferences(context.getPackageName(), 0).getBoolean("shouldShowPermission_android.permission-group.STORAGE", true) || ContextCompat.checkSelfPermission(context, "android.permission-group.STORAGE") == 0) {
            return false;
        }
        return true;
    }

    public static void g(Activity activity) {
        if (activity == null || Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
            intent.setData(Uri.parse("package:" + activity.getPackageName()));
            activity.startActivity(intent);
        } catch (Exception unused) {
            Intent intent2 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent2.setData(Uri.parse("package:" + activity.getPackageName()));
            activity.startActivity(intent2);
        }
    }

    @TargetApi(23)
    public List<String> b(Activity activity, List<String> permissions) {
        ArrayList arrayList = new ArrayList();
        for (String str : permissions) {
            if (activity.checkSelfPermission(str) != 0) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public boolean e() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @TargetApi(23)
    public void h(Activity activity, int requestCode, String premiss, a permissionCallBack) {
        ArrayList arrayList = new ArrayList();
        if (e()) {
            arrayList.add(premiss);
            List<String> listB = b(activity, arrayList);
            if (listB == null || listB.size() <= 0) {
                permissionCallBack.c();
            } else {
                activity.requestPermissions((String[]) listB.toArray(new String[listB.size()]), requestCode);
            }
        }
    }

    public void i(Activity activity, String[] permissions, int[] grantResults, a permissionCallBack) {
        f49491b = new ArrayList();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < grantResults.length; i10++) {
            if (grantResults[i10] != 0 && e()) {
                boolean zShouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(permissions[i10]);
                f49491b.add(permissions[i10]);
                if (zShouldShowRequestPermissionRationale) {
                    arrayList.add(permissions[i10]);
                } else {
                    arrayList2.add(permissions[i10]);
                }
            }
        }
        if (arrayList.size() > 0) {
            permissionCallBack.b();
            return;
        }
        if (arrayList2.size() <= 0) {
            permissionCallBack.c();
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            String str = (String) arrayList2.get(i11);
            if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(str)) {
                arrayList3.add("存储权限");
            } else if ("android.permission.READ_PHONE_STATE".equals(str)) {
                arrayList3.add("设备信息");
            }
        }
        permissionCallBack.a(String.format("权限信息", activity.getString(R.string.app_name), arrayList3.toString().replace("[", "").replace("]", "").replace(",", "、"), x.a.f97579g));
    }

    @TargetApi(23)
    public void requestPermissions(Activity activity, int requestCode, a permissionCallBack) {
        List<String> list = f49491b;
        if (list == null || list.size() == 0) {
            ArrayList arrayList = new ArrayList();
            f49491b = arrayList;
            a(arrayList);
        }
        if (e()) {
            List<String> listB = b(activity, f49491b);
            f49491b = listB;
            if (listB == null || listB.size() <= 0) {
                permissionCallBack.c();
            } else {
                List<String> list2 = f49491b;
                activity.requestPermissions((String[]) list2.toArray(new String[list2.size()]), requestCode);
            }
        }
    }
}
