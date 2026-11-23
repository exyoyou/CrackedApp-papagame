package com.join.mgps.receiver;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.join.android.app.common.utils.g;
import com.join.mgps.Util.t2;
import org.androidannotations.annotations.EReceiver;
import org.androidannotations.annotations.ReceiverAction;

/* JADX INFO: loaded from: classes3.dex */
@EReceiver
public class BootReceiver extends BroadcastReceiver {
    @ReceiverAction(actions = {BootReceiver_.f72254a})
    void a(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (t2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(p5.a.f96211o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f72254a);
            context.sendBroadcast(intent2);
        }
    }

    @ReceiverAction(actions = {BootReceiver_.f72258e})
    void b(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (t2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(p5.a.f96211o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f72257d);
            context.sendBroadcast(intent2);
        }
    }

    @ReceiverAction(actions = {BootReceiver_.f72259f})
    void c(Context context, Intent intent) {
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (context.getSharedPreferences("downloadplato", 0).getLong("plato", 0L) == longExtra) {
            g.t0(context).y(context, ((DownloadManager) context.getSystemService("download")).getUriForDownloadedFile(longExtra));
        }
    }

    @ReceiverAction(actions = {BootReceiver_.f72257d})
    void d(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (t2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(p5.a.f96211o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f72257d);
            context.sendBroadcast(intent2);
        }
    }

    @ReceiverAction(actions = {BootReceiver_.f72255b})
    void e(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (t2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(p5.a.f96211o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f72255b);
            context.sendBroadcast(intent2);
        }
    }

    @ReceiverAction(actions = {BootReceiver_.f72256c})
    void f(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (t2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(p5.a.f96211o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f72256c);
            context.sendBroadcast(intent2);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
    }
}
