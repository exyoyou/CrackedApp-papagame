package com.join.mgps.Util;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Handler;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.ShortcutReceiver;

/* JADX INFO: loaded from: classes4.dex */
public class j2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f49767a = "com.android.launcher.action.INSTALL_SHORTCUT";

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49768b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f49769c;

        a(final Context val$mContext, final String val$GameId) {
            this.f49768b = val$mContext;
            this.f49769c = val$GameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            new com.join.android.app.common.dialog.d(this.f49768b, this.f49769c).show();
        }
    }

    public static void a(Context context) {
        if (Build.VERSION.SDK_INT > 25) {
            String str = Build.BRAND;
            String str2 = (str.equalsIgnoreCase("vivo") || str.equalsIgnoreCase("iqoo")) ? "清理" : "卸载";
            ShortcutInfoCompat.Builder builder = new ShortcutInfoCompat.Builder(context, "uninstall");
            Intent intent = new Intent("android.intent.action.MAIN", null, context, MGMainActivity_.class);
            intent.setFlags(603979776);
            intent.putExtra("dynamicShortcutType", "uninstall");
            ShortcutManagerCompat.pushDynamicShortcut(context, builder.setShortLabel(str2).setIcon(IconCompat.createWithResource(context, R.drawable.icon)).setIntent(intent).build());
        }
    }

    public static void b(Context mContext, String name, String GameId, Bitmap bitmap) {
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.icon);
        }
        if (bitmap == null) {
            a3.b(mContext).d("创建失败！");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManagerA = androidx.core.content.pm.e1.a(mContext.getSystemService("shortcut"));
            if (shortcutManagerA.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(mContext, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", GameId);
                intent.addFlags(67108864);
                shortcutManagerA.requestPinShortcut(androidx.core.content.pm.k.a(mContext, name).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(name).setIntent(intent).build(), PendingIntent.getBroadcast(mContext, 0, new Intent(mContext, (Class<?>) ShortcutReceiver.class), 134217728).getIntentSender());
                e(mContext, GameId);
            }
        } else {
            Intent intent2 = new Intent(f49767a);
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.NAME", name);
            intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.setClass(mContext, MGMainActivity_.class);
            intent3.putExtra("shortcutGameId", GameId);
            intent3.addFlags(67108864);
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
            mContext.sendBroadcast(intent2);
            e(mContext, GameId);
        }
        new Handler().postDelayed(new a(mContext, GameId), 500L);
    }

    public static void c(Context mContext, String name, String GameId, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManagerA = androidx.core.content.pm.e1.a(mContext.getSystemService("shortcut"));
            if (shortcutManagerA.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(mContext, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", GameId);
                intent.addFlags(67108864);
                shortcutManagerA.requestPinShortcut(androidx.core.content.pm.k.a(mContext, name).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(name).setIntent(intent).build(), PendingIntent.getBroadcast(mContext, 0, new Intent(mContext, (Class<?>) ShortcutReceiver.class), 134217728).getIntentSender());
                e(mContext, GameId);
                return;
            }
            return;
        }
        Intent intent2 = new Intent(f49767a);
        intent2.putExtra("duplicate", false);
        intent2.putExtra("android.intent.extra.shortcut.NAME", name);
        intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
        Intent intent3 = new Intent("android.intent.action.MAIN");
        intent3.setClass(mContext, MGMainActivity_.class);
        intent3.putExtra("shortcutGameId", GameId);
        intent3.addFlags(67108864);
        intent3.addCategory("android.intent.category.LAUNCHER");
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
        mContext.sendBroadcast(intent2);
        e(mContext, GameId);
    }

    public static boolean d(Context mContext, String GameId) {
        if (mContext == null) {
            return false;
        }
        String strD = new PrefDef_(mContext).addedShortcutGames().d();
        if (t2.h(strD) || t2.h(GameId)) {
            return false;
        }
        return strD.contains(GameId);
    }

    public static void e(Context mContext, String GameId) {
        PrefDef_ prefDef_ = new PrefDef_(mContext);
        String strD = prefDef_.addedShortcutGames().d();
        if (t2.i(GameId)) {
            if (t2.h(strD)) {
                prefDef_.addedShortcutGames().g(GameId);
                return;
            }
            if (strD.contains(GameId)) {
                return;
            }
            prefDef_.addedShortcutGames().g(strD + "," + GameId);
        }
    }

    public static void f(Context context) {
        ShortcutManagerCompat.removeAllDynamicShortcuts(context);
    }

    public static boolean g(Context mContext, String GameId) {
        PrefDef_ prefDef_ = new PrefDef_(mContext);
        String strD = prefDef_.addedShortcutGames().d();
        if (!t2.h(strD) && !t2.h(GameId) && !t2.h(strD) && strD.contains(GameId)) {
            if (strD.contains("," + GameId)) {
                strD.replace("," + GameId, "");
            } else {
                strD.replace(GameId, "");
            }
            prefDef_.addedShortcutGames().g(strD);
        }
        return false;
    }
}
