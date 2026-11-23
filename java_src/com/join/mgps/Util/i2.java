package com.join.mgps.Util;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class i2 {
    private i2() throws InstantiationException {
        throw new InstantiationException("This class is not for instantiation");
    }

    public static boolean a(Context context, String pkg) {
        String string;
        String str;
        int i10;
        PackageManager packageManager = context.getPackageManager();
        Context contextCreatePackageContext = null;
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(2097152);
        intent.addFlags(1048576);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 1);
        int i11 = 0;
        while (true) {
            if (i11 >= listQueryIntentActivities.size()) {
                string = "unknown";
                str = null;
                i10 = 0;
                break;
            }
            ResolveInfo resolveInfo = listQueryIntentActivities.get(i11);
            if (resolveInfo.activityInfo.packageName.equals(pkg)) {
                string = resolveInfo.loadLabel(packageManager).toString();
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                str = activityInfo.name;
                i10 = activityInfo.applicationInfo.icon;
                break;
            }
            i11++;
        }
        if (str == null) {
            return false;
        }
        Intent intent2 = new Intent(j2.f49767a);
        intent2.putExtra("android.intent.extra.shortcut.NAME", string);
        intent2.putExtra("duplicate", false);
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent.setComponent(new ComponentName(pkg, str)));
        if (context.getPackageName().equals(pkg)) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(pkg, 3);
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
        }
        if (contextCreatePackageContext != null) {
            intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(contextCreatePackageContext, i10));
        }
        context.sendBroadcast(intent2);
        return true;
    }

    private static byte[] b(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getWidth() * bitmap.getHeight() * 4);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            return null;
        }
    }

    private static Uri c(Context context) {
        StringBuilder sb2 = new StringBuilder();
        String strA = f1.a(context);
        if (strA == null || strA.trim().equals("")) {
            strA = f1.b(context, f1.d(context) + ".permission.READ_SETTINGS");
        }
        sb2.append("content://");
        if (TextUtils.isEmpty(strA)) {
            sb2.append("com.android.launcher3.settings");
        } else {
            sb2.append(strA);
        }
        sb2.append("/favorites?notify=true");
        return Uri.parse(sb2.toString());
    }

    public static boolean d(Context context, String title) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Uri uriC = c(context);
            boolean z10 = true;
            Cursor cursorQuery = contentResolver.query(uriC, new String[]{"title"}, "title=? ", new String[]{title}, null);
            if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                z10 = false;
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return z10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean e(Context context, String title, Intent intent) {
        try {
            boolean z10 = true;
            Cursor cursorQuery = context.getContentResolver().query(c(context), new String[]{"title", Constants.WS_MESSAGE_TYPE_INTENT}, "title=?  and intent=?", new String[]{title, intent.toUri(0)}, null);
            if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                z10 = false;
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            return z10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void f(Context context, String title, Intent intent, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Uri uriC = c(context);
            Cursor cursorQuery = contentResolver.query(uriC, new String[]{"_id", "title", Constants.WS_MESSAGE_TYPE_INTENT}, "title=?  and intent=? ", new String[]{title, intent.toUri(0)}, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.moveToFirst();
                int i10 = cursorQuery.getInt(0);
                ContentValues contentValues = new ContentValues();
                contentValues.put("icon", b(bitmap));
                int iUpdate = context.getContentResolver().update(Uri.parse(uriC.toString() + "/favorites/" + i10 + "?notify=true"), contentValues, null, null);
                context.getContentResolver().notifyChange(uriC, null);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("update ok: affected ");
                sb2.append(iUpdate);
                sb2.append(" rows,index is");
                sb2.append(i10);
            }
            if (cursorQuery == null || cursorQuery.isClosed()) {
                return;
            }
            cursorQuery.close();
        } catch (Exception e10) {
            e10.printStackTrace();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("update shortcut icon,get errors:");
            sb3.append(e10.getMessage());
        }
    }
}
