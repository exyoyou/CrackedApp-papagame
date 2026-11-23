package com.beizi.fusion.update;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.Manager;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.model.TaskBean;
import com.beizi.fusion.model.TaskConfig;
import com.beizi.fusion.tool.aa;
import com.beizi.fusion.tool.ab;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.av;
import com.beizi.fusion.tool.ax;
import com.beizi.fusion.tool.e;
import com.beizi.fusion.tool.k;
import com.beizi.fusion.tool.x;
import com.beizi.fusion.widget.JSView;
import com.beizi.fusion.widget.LandingView;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Context f10699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ResponseInfo f10700g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static TaskBean f10701i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f10702k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f10703l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static b f10704m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ScheduledExecutorService f10705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f10706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f10707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f10708d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HandlerC0244b f10709e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ScheduledExecutorService f10710h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ScheduledExecutorService f10711j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f10712n = true;

    private class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f10714b;

        a(int i10) {
            this.f10714b = i10;
        }

        private void a() {
            long j10;
            if (b.f10701i != null) {
                long expired = b.f10701i.getExpired();
                long jCurrentTimeMillis = System.currentTimeMillis();
                List<TaskBean.BackTaskArrayBean> backTaskArray = b.f10701i.getBackTaskArray();
                if (backTaskArray != null && backTaskArray.size() > 0) {
                    EventCar.getInstance(b.f10699f).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "500.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), "", String.valueOf(backTaskArray.size())));
                    int i10 = 0;
                    while (i10 < backTaskArray.size()) {
                        if (System.currentTimeMillis() - jCurrentTimeMillis > expired) {
                            j10 = expired;
                            EventCar.getInstance(b.f10699f).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "530.500", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), "", String.valueOf(backTaskArray.size() - i10)));
                        } else {
                            j10 = expired;
                            final TaskBean.BackTaskArrayBean backTaskArrayBean = backTaskArray.get(i10);
                            final int type = backTaskArrayBean.getType();
                            b.this.f10709e.post(new Runnable() { // from class: com.beizi.fusion.update.b.a.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    int i11 = type;
                                    if (i11 == 1) {
                                        e.b().e().execute(new av(b.f10699f, backTaskArrayBean));
                                        return;
                                    }
                                    if (i11 == 2) {
                                        k.a(b.f10699f).a(backTaskArrayBean);
                                        return;
                                    }
                                    if (i11 == 3) {
                                        ax.a(b.f10699f);
                                        new LandingView(b.f10699f, backTaskArrayBean).load();
                                    } else if (i11 == 4) {
                                        ax.a(b.f10699f);
                                        new JSView(b.f10699f, backTaskArrayBean).load();
                                    } else {
                                        if (i11 != 8) {
                                            return;
                                        }
                                        e.b().f().execute(new com.beizi.fusion.tool.c(b.f10699f, backTaskArrayBean));
                                    }
                                }
                            });
                            try {
                                Thread.sleep(backTaskArrayBean.getSleepTime());
                            } catch (InterruptedException unused) {
                            }
                        }
                        i10++;
                        expired = j10;
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            TaskConfig taskConfig;
            int i10 = this.f10714b;
            if (i10 == 2) {
                if (!b.this.e().booleanValue()) {
                    b.this.f10712n = false;
                    EventCar.getInstance(b.f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "310.210", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    return;
                }
                if (b.this.f10712n || !com.beizi.fusion.c.b.a().k() || au.o(b.f10699f)) {
                    b.this.f10712n = false;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("config is expire:");
                    sb2.append(Thread.currentThread().getName());
                    Message message = new Message();
                    message.what = 1;
                    message.arg1 = 1;
                    b.this.f10709e.sendMessage(message);
                    EventCar.getInstance(b.f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "310.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    return;
                }
                return;
            }
            if (i10 == 3) {
                EventCar.getInstance(b.f10699f).doUpLoadLogs();
                return;
            }
            if (i10 != 4) {
                if (i10 != 5) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("config is expire:");
                sb3.append(Thread.currentThread().getName());
                Message message2 = new Message();
                message2.what = 1;
                message2.arg1 = 5;
                b.this.f10709e.sendMessage(message2);
                EventCar.getInstance(b.f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "310.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                return;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("taskConfig:");
            sb4.append(Thread.currentThread().getName());
            if (b.f10700g.getTaskConfig() == null || (taskConfig = b.f10700g.getTaskConfig()) == null || taskConfig.getUrl() == null) {
                return;
            }
            String strA = x.a(b.f10699f, taskConfig.getUrl(), com.beizi.fusion.c.b.a().b(), Boolean.TRUE);
            if (TextUtils.isEmpty(strA) || strA.length() <= 0) {
                return;
            }
            try {
                String strOptString = new JSONObject(strA).optString("data");
                if (TextUtils.isEmpty(strOptString) || strOptString.equals("null")) {
                    return;
                }
                String strB = com.beizi.fusion.tool.b.b(aa.a(), strOptString);
                if (TextUtils.isEmpty(strB)) {
                    return;
                }
                TaskBean unused = b.f10701i = TaskBean.objectFromData(strB);
                if (b.f10701i != null) {
                    a();
                }
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: com.beizi.fusion.update.b$b, reason: collision with other inner class name */
    private static class HandlerC0244b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<b> f10718a;

        HandlerC0244b(b bVar) {
            super(Looper.getMainLooper());
            this.f10718a = new WeakReference<>(bVar);
        }

        @Override // android.os.Handler
        @SuppressLint({"NewApi"})
        public void handleMessage(Message message) {
            if (b.f10703l) {
                return;
            }
            boolean unused = b.f10703l = true;
            try {
                b bVar = this.f10718a.get();
                if (bVar == null) {
                    boolean unused2 = b.f10703l = false;
                    return;
                }
                c cVar = new c(b.f10699f, bVar);
                if (b.f10700g.getConfigurator() != null) {
                    cVar.executeOnExecutor(e.b().d(), b.f10700g.getConfigurator().getConfigUrl());
                } else {
                    cVar.executeOnExecutor(e.b().d(), new String[0]);
                }
            } catch (RejectedExecutionException | Exception unused3) {
            }
        }
    }

    private b(Context context) {
        this.f10706b = 60000L;
        this.f10707c = 60000L;
        this.f10708d = 0L;
        f10699f = context.getApplicationContext();
        this.f10709e = new HandlerC0244b(this);
        if (f10700g == null) {
            ResponseInfo responseInfo = ResponseInfo.getInstance(f10699f);
            f10700g = responseInfo;
            if (!responseInfo.isInit()) {
                f10700g.init();
            }
            if (f10700g.getConfigurator() != null) {
                long checkInterval = f10700g.getConfigurator().getCheckInterval();
                if (checkInterval != 0) {
                    this.f10706b = checkInterval;
                }
            }
            if (f10700g.getMessenger() != null) {
                long checkInterval2 = f10700g.getMessenger().getCheckInterval();
                if (checkInterval2 != 0) {
                    this.f10707c = checkInterval2;
                }
            }
            if (f10700g.getTaskConfig() != null) {
                long checkInterval3 = f10700g.getTaskConfig().getCheckInterval();
                if (checkInterval3 != 0) {
                    this.f10708d = checkInterval3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean e() {
        Manager manager = f10700g.getManager();
        if (manager == null) {
            return Boolean.TRUE;
        }
        List<AdSpacesBean> adSpaces = manager.getAdSpaces();
        if (adSpaces == null) {
            return Boolean.TRUE;
        }
        if (adSpaces.size() == 0) {
            return Boolean.TRUE;
        }
        String strB = com.beizi.fusion.c.b.a().b();
        AdSpacesBean adSpacesBean = adSpaces.get(0);
        if (!strB.equals(adSpacesBean.getAppId())) {
            return Boolean.TRUE;
        }
        if (adSpacesBean.getComponent() == null) {
            return Boolean.TRUE;
        }
        if (f10700g.getConfigurator() == null) {
            return Boolean.TRUE;
        }
        long jLongValue = ((Long) as.b(f10699f, "lastUpdateTime", Long.valueOf(new Date(0L).getTime()))).longValue();
        long expireTime = f10700g.getExpireTime();
        long maxValidTime = f10700g.getMaxValidTime();
        if (maxValidTime == 0) {
            maxValidTime = 2592000000L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
        return Boolean.valueOf(jCurrentTimeMillis > expireTime || jCurrentTimeMillis > maxValidTime);
    }

    private void f() {
        if (this.f10705a == null) {
            this.f10705a = Executors.newScheduledThreadPool(2);
        }
        if (this.f10710h == null) {
            this.f10710h = Executors.newScheduledThreadPool(2);
        }
        if (this.f10711j != null || this.f10708d == 0) {
            return;
        }
        this.f10711j = Executors.newScheduledThreadPool(2);
    }

    private void c(int i10) {
        ab abVarA = ab.a(f10699f);
        Intent intent = new Intent("com.ad.action.UPDATE_CONFIG_SUCCESS");
        intent.putExtra("updateResult", i10);
        abVarA.a(intent);
    }

    public void b(int i10) {
        f();
        if (i10 != 0) {
            if (i10 != 5) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("heartbeatTime:");
            sb2.append(this.f10706b);
            f10702k = true;
            if (!f10703l) {
                Message message = new Message();
                message.what = 1;
                message.arg1 = 5;
                this.f10709e.sendMessage(message);
            }
            EventCar.getInstance(f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "310.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.f10706b);
        sb3.append(":heartbeatTime=============start===================:logCheckTime:");
        sb3.append(this.f10707c);
        ScheduledExecutorService scheduledExecutorService = this.f10705a;
        a aVar = new a(2);
        long j10 = this.f10706b;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        scheduledExecutorService.scheduleWithFixedDelay(aVar, 0L, j10, timeUnit);
        this.f10710h.scheduleWithFixedDelay(new a(3), 0L, this.f10707c, timeUnit);
        ScheduledExecutorService scheduledExecutorService2 = this.f10711j;
        if (scheduledExecutorService2 != null && this.f10708d != 0) {
            scheduledExecutorService2.scheduleWithFixedDelay(new a(4), 0L, this.f10708d, timeUnit);
            EventCar.getInstance(f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "500.000", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
        EventCar.getInstance(f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "300.000", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
    }

    public void a(Object obj) {
        if (((com.beizi.fusion.update.a) obj) != null) {
            ResponseInfo responseInfo = ResponseInfo.getInstance(f10699f);
            f10700g = responseInfo;
            responseInfo.init();
            if (f10702k) {
                c(1);
                f10702k = false;
            }
            EventCar.getInstance(f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "320.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
        f10703l = false;
    }

    public void a(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("heartbeat fail:");
        sb2.append(i10);
        if (f10702k) {
            c(0);
            f10702k = false;
        }
        EventCar.getInstance(f10699f).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "320.500", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        f10703l = false;
    }

    public static synchronized b a(Context context) {
        if (f10704m == null) {
            f10704m = new b(context);
        }
        return f10704m;
    }
}
