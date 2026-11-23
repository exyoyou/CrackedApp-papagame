package com.join.mgps.va.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.github.snowdream.android.app.downloader.b;
import com.github.snowdream.android.app.downloader.c;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.m;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.i1;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.mod.utils.d;
import com.join.mgps.va.overmind.i;
import com.join.mgps.va.overmind.k;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.util.FileUtils;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.a;
import com.xinzhu.overmind.shared.OMLauncherActivity;
import com.xinzhu.overmind.shared.OMProxyActivity;
import com.xinzhu.overmind.shared.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import net.lingala.zip4j.util.e;
import q5.f;

/* JADX INFO: loaded from: classes3.dex */
public class OMPluginService extends Service {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f73314s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f73315t = 2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static b f73316u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static b.InterfaceC0591b f73317v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static Map<String, c> f73318w = new ConcurrentHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f73320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f73321d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f73322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f73323f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f73324g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f73326i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f73327j;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ModReceiver f73333p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private DownloadTask f73334q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Messenger f73319b = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f73325h = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f73328k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f73329l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f73330m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    List<String> f73331n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    List<String> f73332o = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Executor f73335r = new ThreadPoolExecutor(1, 2, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    class InCommingHandler extends Handler {
        InCommingHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                Bundle data = msg.getData();
                if (data != null) {
                    OMPluginService.this.f73320c = data.getString(OMLauncherActivity.E);
                    OMPluginService oMPluginService = OMPluginService.this;
                    oMPluginService.f73319b = msg.replyTo;
                    oMPluginService.v(2);
                }
            } else if (i10 == 3) {
                Bundle data2 = msg.getData();
                OMPluginService.this.f73320c = data2.getString(OMLauncherActivity.E);
                OMPluginService.this.f73322e = data2.getString(OMLauncherActivity.B);
                OMPluginService.this.f73327j = data2.getString(OMLauncherActivity.G);
                OMPluginService.this.f73323f = data2.getInt(OMLauncherActivity.J);
                OMPluginService.this.f73324g = data2.getInt(OMLauncherActivity.K);
                OMPluginService.this.f73325h = data2.getString(OMLauncherActivity.H);
                OMPluginService.this.f73321d = data2.getString(OMLauncherActivity.I);
                OMPluginService.this.f73326i = data2.getInt(OMLauncherActivity.F);
                OMPluginService oMPluginService2 = OMPluginService.this;
                oMPluginService2.o(oMPluginService2.f73320c);
            }
            super.handleMessage(msg);
        }
    }

    class ModReceiver extends BroadcastReceiver {
        ModReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(d.f71918t)) {
                String stringExtra = intent.getStringExtra("soName");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                OMPluginService.this.f73331n.add(stringExtra);
                return;
            }
            if (action.equals(d.f71919u)) {
                String stringExtra2 = intent.getStringExtra("soName");
                if (TextUtils.isEmpty(stringExtra2)) {
                    OMPluginService.this.f73330m = true;
                    OMPluginService.this.p();
                    return;
                }
                OMPluginService.this.f73332o.add(stringExtra2);
                OMPluginService oMPluginService = OMPluginService.this;
                if (oMPluginService.f73330m) {
                    oMPluginService.p();
                    return;
                }
                return;
            }
            if (action.equals(d.f71920v)) {
                OMPluginService.f73314s++;
                o0.m(OMPluginService.this.f73321d);
                o0.m(z.f50168g + "mod/" + OMPluginService.this.f73334q.getPackageName() + "/oat");
                if (!t2.i(OMPluginService.this.f73325h) || m.j(OMPluginService.this) || OMPluginService.f73314s >= 2) {
                    OMPluginService.this.x();
                } else {
                    OMPluginService oMPluginService2 = OMPluginService.this;
                    oMPluginService2.o(oMPluginService2.f73320c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        new Thread(new Runnable() { // from class: com.join.mgps.va.service.OMPluginService.4
            @Override // java.lang.Runnable
            public synchronized void run() {
                while (!OMPluginService.this.f73329l) {
                    try {
                        long jB = com.join.mgps.va.overmind.m.b(k.f73277a.X(OMPluginService.this.f73322e));
                        OMPluginService oMPluginService = OMPluginService.this;
                        oMPluginService.f73329l = jB >= oMPluginService.f73328k;
                        int i10 = OMPluginService.this.f73328k == 0 ? 100 : (int) ((jB / OMPluginService.this.f73328k) * 100);
                        Thread.currentThread();
                        Thread.sleep(1000L);
                        Bundle bundle = new Bundle();
                        bundle.putInt("_progress", i10);
                        OMPluginService.this.w(8, bundle);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                }
                OMPluginService.this.f73332o.add("copyExtFile");
                Overmind.getContext().sendBroadcast(new Intent(d.f71919u));
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void q() {
        new Thread(new Runnable() { // from class: com.join.mgps.va.service.OMPluginService.3
            @Override // java.lang.Runnable
            public synchronized void run() {
                OMPluginService.this.f73331n.add("copyExtFile");
                k kVar = k.f73277a;
                String strV = kVar.V(OMPluginService.this.f73322e);
                OMPluginService.this.f73328k = FileUtils.fileSize(strV);
                Bundle bundle = new Bundle();
                bundle.putString("modPath", OMPluginService.this.f73321d);
                bundle.putString("gameId", OMPluginService.this.f73320c);
                bundle.putLong("obbSize", OMPluginService.this.f73328k);
                OMPluginService oMPluginService = OMPluginService.this;
                com.join.mgps.va.overmind.m.d(oMPluginService.f73322e, oMPluginService.f73326i, bundle);
                if (OMPluginService.this.f73328k == 0) {
                    OMPluginService.this.f73332o.add("copyExtFile");
                    Overmind.getContext().sendBroadcast(new Intent(d.f71919u));
                    return;
                }
                long jB = com.join.mgps.va.overmind.m.b(kVar.X(OMPluginService.this.f73322e));
                OMPluginService.this.n();
                if (OMPluginService.this.f73328k != jB) {
                    OMPluginService.this.v(7);
                } else {
                    OMPluginService.this.f73332o.add("copyExtFile");
                    Overmind.getContext().sendBroadcast(new Intent(d.f71919u));
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
    
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void u() {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.va.service.OMPluginService.u():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int msgType) {
        w(msgType, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(int msgType, Bundle bundle) {
        if (this.f73319b != null) {
            Message message = new Message();
            message.what = msgType;
            if (bundle != null) {
                message.setData(bundle);
            }
            try {
                this.f73319b.send(message);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        }
    }

    void o(String gameId) {
        DownloadTask downloadTask;
        if (TextUtils.isEmpty(gameId)) {
            ToastManager.show("游戏信息[ID]缺失");
            return;
        }
        this.f73334q = f.M().G(gameId);
        if ((!t2.i(this.f73325h) || !m.j(this) || (downloadTask = this.f73334q) == null || (!t2.h(downloadTask.getResource_path()) && o0.D(this.f73334q.getResource_path()))) && !s(this.f73334q)) {
            x();
        } else {
            z(this.f73334q);
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return new Messenger(new InCommingHandler()).getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f73333p = new ModReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(d.f71918t);
        intentFilter.addAction(d.f71919u);
        intentFilter.addAction(d.f71920v);
        intentFilter.addAction(d.f71921w);
        registerReceiver(this.f73333p, intentFilter);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ModReceiver modReceiver = this.f73333p;
        if (modReceiver != null) {
            unregisterReceiver(modReceiver);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        this.f73319b = null;
        return super.onUnbind(intent);
    }

    synchronized void p() {
        int i10;
        boolean z10;
        Iterator<String> it2 = this.f73331n.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (!this.f73332o.contains(it2.next())) {
                    z10 = false;
                    break;
                }
            } else {
                z10 = true;
                break;
            }
        }
        if (z10) {
            sendBroadcast(new Intent(OMProxyActivity.f89988k.b()));
            v(9);
            StringBuilder sb2 = new StringBuilder();
            k kVar = k.f73277a;
            sb2.append(kVar.k(this.f73322e));
            sb2.append("/transfer.lock");
            if (!new File(sb2.toString()).exists()) {
                String[] strArr = {kVar.V(this.f73322e), kVar.C(this.f73322e), kVar.h0(this.f73322e)};
                for (i10 = 0; i10 < 3; i10++) {
                    o0.m(strArr[i10]);
                }
            }
        }
    }

    public void r() {
        f73316u = b.e();
        b.InterfaceC0591b interfaceC0591b = new b.InterfaceC0591b() { // from class: com.join.mgps.va.service.OMPluginService.1
            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onError(String url) {
                OMPluginService.this.x();
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onFinish(String url) {
                h1.a("onFinish onStart - " + url, new Object[0]);
                c cVar = (c) OMPluginService.f73318w.get(url);
                if (cVar != null) {
                    if (OMPluginService.this.f73334q.isMod()) {
                        if (t2.i(OMPluginService.this.f73325h)) {
                            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(OMPluginService.this.f73325h, ModInfoBean.class);
                            if (modInfoBean != null) {
                                OMPluginService.this.f73334q.setResource_url_remote(modInfoBean.getDown_url());
                                modInfoBean.setStatus(14);
                                OMPluginService.this.f73334q.setMod_info(JsonMapper.toJsonString(modInfoBean));
                            } else {
                                OMPluginService.this.f73334q.setMod_info(JsonMapper.toJsonString(OMPluginService.this.f73325h));
                            }
                        }
                    } else if (APKUtils.O(OMPluginService.this.f73334q) && t2.i(OMPluginService.this.f73325h)) {
                        SingleGameModInfoBean singleGameModInfoBean = (SingleGameModInfoBean) JsonMapper.getInstance().fromJson(OMPluginService.this.f73325h, SingleGameModInfoBean.class);
                        if (singleGameModInfoBean != null) {
                            OMPluginService.this.f73334q.setResource_url_remote(singleGameModInfoBean.getDownUrl());
                            singleGameModInfoBean.setStatus(14);
                            OMPluginService.this.f73334q.setSingle_game_mod_info(JsonMapper.toJsonString(singleGameModInfoBean));
                        } else {
                            OMPluginService.this.f73334q.setSingle_game_mod_info(JsonMapper.toJsonString(OMPluginService.this.f73325h));
                        }
                    }
                    OMPluginService.this.f73321d = cVar.d() + cVar.h();
                    OMPluginService.this.f73334q.setResource_path(OMPluginService.this.f73321d);
                    f.M().m(OMPluginService.this.f73334q);
                }
                OMPluginService.this.x();
                OMPluginService.f73318w.remove(url);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onProgress(String url, int progress, String speed) {
                c cVar = (c) OMPluginService.f73318w.get(url);
                if (cVar != null) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("_progress", progress);
                    bundle.putString("_speed", speed);
                    bundle.putLong("_expectSize", cVar.e());
                    bundle.putLong("_actualSize", cVar.c());
                    bundle.putString("_modVersion", OMPluginService.this.f73327j);
                    OMPluginService.this.w(5, bundle);
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStart(String url) {
                h1.a("PreDownloadPlug onStart - " + url, new Object[0]);
                OMPluginService.this.v(4);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStop(String url) {
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onWait(String url) {
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void updateSize(String url, long actualSize) {
            }
        };
        f73317v = interfaceC0591b;
        f73316u.m(interfaceC0591b);
    }

    boolean s(DownloadTask task) {
        ModInfoBean modInfoBean;
        if (task == null) {
            return false;
        }
        if (!APKUtils.P(task)) {
            return APKUtils.K(task) && (modInfoBean = task.getModInfoBean()) != null && !TextUtils.isEmpty(modInfoBean.getDown_url()) && modInfoBean.getStatus() == 9;
        }
        SingleGameModInfoBean singleGameModInfoBean = task.getSingleGameModInfoBean();
        return (singleGameModInfoBean == null || TextUtils.isEmpty(singleGameModInfoBean.getDownUrl()) || singleGameModInfoBean.getStatus() != 9) ? false : true;
    }

    boolean t() {
        try {
            j jVar = j.f90033a;
            if (!jVar.m() && !jVar.p()) {
                return false;
            }
            File fileJ = a.j(this.f73322e);
            return fileJ.exists() && fileJ.length() > 314572800;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void x() {
        try {
            if (i.q().R(this.f73322e) && t()) {
                Intent intent = new Intent(OMProxyActivity.f89988k.a());
                intent.setComponent(new ComponentName(Overmind.getPluginPkg(), OMProxyActivity.class.getName()));
                startActivity(intent);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        y();
    }

    void y() {
        this.f73335r.execute(new Runnable() { // from class: com.join.mgps.va.service.OMPluginService.2
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                i.q().o0(OMPluginService.this.f73322e);
                OMPluginService.this.u();
                File file = new File(k.f73277a.N(OMPluginService.this.f73322e));
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                OMPluginService oMPluginService = OMPluginService.this;
                PluginConfig.setModConfig(file + "", oMPluginService.f73321d, oMPluginService.f73327j, oMPluginService.f73323f, System.currentTimeMillis());
                if (i.q().R(OMPluginService.this.f73322e)) {
                    OMPluginService.this.q();
                    return;
                }
                i iVarQ = i.q();
                OMPluginService oMPluginService2 = OMPluginService.this;
                String absolutePath = file.getAbsolutePath();
                OMPluginService oMPluginService3 = OMPluginService.this;
                iVarQ.o(oMPluginService2, absolutePath, oMPluginService3.f73322e, oMPluginService3.f73321d, oMPluginService3.f73327j, oMPluginService3.f73323f, oMPluginService3.f73324g == 0, false);
            }
        });
    }

    void z(DownloadTask task) {
        r();
        String down_url = "";
        boolean zP = APKUtils.P(task);
        if (zP) {
            SingleGameModInfoBean singleGameModInfoBean = task.getSingleGameModInfoBean();
            if (singleGameModInfoBean != null) {
                down_url = singleGameModInfoBean.getDownUrl();
            }
        } else {
            ModInfoBean modInfoBean = task.getModInfoBean();
            if (modInfoBean != null) {
                down_url = modInfoBean.getDown_url();
            }
        }
        String str = down_url;
        if (TextUtils.isEmpty(str)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(task.getShowName());
            sb2.append(", mod url null error, vm=");
            sb2.append(zP);
            x();
            return;
        }
        c cVar = new c(str, i1.d(str) + ".mod", z.f50168g + "mod/" + task.getPackageName() + e.F0, 0L);
        f73316u.b(cVar);
        if (f73318w == null || cVar.i() == null || cVar.i().equals("")) {
            return;
        }
        String strI = cVar.i();
        if (f73318w.get(cVar.i()) != null) {
            return;
        }
        synchronized (f73318w) {
            f73318w.put(strI, cVar);
        }
    }
}
