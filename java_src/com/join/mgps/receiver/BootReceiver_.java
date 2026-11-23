package com.join.mgps.receiver;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes3.dex */
public final class BootReceiver_ extends BootReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f72254a = "android.intent.action.PACKAGE_ADDED";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f72255b = "android.intent.action.PACKAGE_REMOVED";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f72256c = "android.intent.action.PACKAGE_FULLY_REMOVED";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f72257d = "android.intent.action.PACKAGE_REPLACED";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f72258e = "android.intent.action.INSTALL_FAILURE";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f72259f = "android.intent.action.DOWNLOAD_COMPLETE";

    private void g(Context context) {
    }

    @Override // com.join.mgps.receiver.BootReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        g(context);
        super.onReceive(context, intent);
        String action = intent.getAction();
        if (f72254a.equals(action)) {
            a(context, intent);
            return;
        }
        if (f72255b.equals(action)) {
            e(context, intent);
            return;
        }
        if (f72256c.equals(action)) {
            f(context, intent);
            return;
        }
        if (f72257d.equals(action)) {
            d(context, intent);
        } else if (f72258e.equals(action)) {
            b(context, intent);
        } else if (f72259f.equals(action)) {
            c(context, intent);
        }
    }
}
