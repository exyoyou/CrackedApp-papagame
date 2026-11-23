package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.activity.AppDownFinishDialogActivity;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.activity.MyGameManagerActivity_;
import com.join.mgps.event.u;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import org.greenrobot.eventbus.c;
import q5.f;

/* JADX INFO: loaded from: classes3.dex */
public class NotifcationReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f72264a = "_task_id";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f72265b = "_game_down_status";

    private void a(Context context) {
        Intent intent = new Intent(context, (Class<?>) MGMainActivity_.class);
        intent.setFlags(335544320);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", 2);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    private void b(Intent intent) {
        String stringExtra = intent.getStringExtra(f72264a);
        DownloadTask downloadTaskG = j.f().g(stringExtra);
        if (downloadTaskG == null) {
            downloadTaskG = f.M().G(stringExtra);
        }
        if (downloadTaskG != null) {
            downloadTaskG.setHasDeleteNotify(true);
        }
    }

    private boolean c(Intent intent) {
        return APKUtils.K(f.M().G(intent.getStringExtra(f72264a)));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        MApplication.f3182z.O(true);
        if (p5.a.f96218r0.equals(intent.getAction())) {
            b(intent);
            return;
        }
        if (p5.a.f96220s0.equals(intent.getAction())) {
            if (MApplication.f3177q1 || MApplication.f3182z.getActivity() == null) {
                a(context);
            } else {
                c.f().q(new u(AppDownFinishDialogActivity.class));
                Bundle extras = intent.getExtras();
                Intent intent2 = new Intent(context, (Class<?>) ModGameIndexActivity_.class);
                intent2.putExtras(extras);
                intent2.setFlags(805306368);
                context.startActivity(intent2);
            }
            t.l(context).R1(Event.onclickNotbarDownloaded, new Ext().setGameFlag(c(intent) ? 1 : 0));
            return;
        }
        if (p5.a.f96222t0.equals(intent.getAction())) {
            if (MApplication.f3177q1 || MApplication.f3182z.getActivity() == null) {
                a(context);
            } else {
                Intent intent3 = new Intent(MApplication.f3182z.getActivity(), (Class<?>) MyGameManagerActivity_.class);
                intent3.setFlags(805306368);
                MApplication.f3182z.getActivity().startActivity(intent3);
            }
            if (intent.getIntExtra(f72265b, 0) == 1) {
                t.l(context).R1(Event.onclickNotbarDownloaded, new Ext().setGameFlag(c(intent) ? 1 : 0));
            } else {
                t.l(context).R1(Event.onclickNotbarDownloading, new Ext().setGameFlag(c(intent) ? 1 : 0));
            }
        }
    }
}
