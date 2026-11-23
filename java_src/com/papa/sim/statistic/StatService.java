package com.papa.sim.statistic;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.papa.sim.statistic.db.BossTable;
import com.papa.sim.statistic.db.EMUApkTable;
import com.papa.sim.statistic.db.StatisticTable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class StatService extends Service {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f77174n = "StatService";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    y7.a f77175b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<BossTable> f77177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.papa.sim.statistic.pref.b f77178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    s f77179f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f77182i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f77183j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<EMUApkTable> f77184k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<StatisticTable> f77176c = new ArrayList(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Object f77180g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final AtomicBoolean f77181h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<EMUApkTable> f77185l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b f77186m = new b();

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    try {
                        Thread.sleep(30000L);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("[");
                        sb2.append(Thread.currentThread().getId());
                        sb2.append("]method statService is running...");
                        StatService.this.f77175b.g();
                        StatService statService = StatService.this;
                        statService.f77176c = statService.f77175b.k();
                        StatService.this.i();
                        StatService.this.j();
                        StatService.this.k();
                        try {
                            StatService.this.o();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        List<StatisticTable> list = StatService.this.f77176c;
                        if (list != null && list.size() >= 11) {
                            for (StatisticTable statisticTable : StatService.this.f77176c) {
                                if (StatService.this.delete(statisticTable)) {
                                    if (statisticTable.getIsdirect() != 1) {
                                        statisticTable.setIsdirect(2);
                                    }
                                    if (StatService.this.f77179f.r() && statisticTable.getType().equals(Event.joyStickConfigPost.name())) {
                                        try {
                                            StatService.this.p(statisticTable);
                                        } catch (Exception e11) {
                                            e11.printStackTrace();
                                            StatService.this.n("", e11);
                                        }
                                    } else if (StatService.this.f77179f.s() && statisticTable.getType().equals(Event.joyStickInfoPost.name())) {
                                        try {
                                            StatService.this.q(statisticTable);
                                        } catch (Exception e12) {
                                            e12.printStackTrace();
                                            StatService.this.n("", e12);
                                        }
                                    } else if (statisticTable.getType().equals(Event.pluginPlayTime.name())) {
                                        arrayList2.add(statisticTable);
                                    } else {
                                        Thread.sleep(500L);
                                        if (statisticTable.getType() != null && (statisticTable.getType().equals(Event.click_vs_hall.name()) || statisticTable.getType().equals(Event.click_vs_create_room.name()) || statisticTable.getType().equals(Event.user_filters_refresh.name()) || statisticTable.getType().equals(Event.joystickSetting.name()) || statisticTable.getType().equals(Event.joystickJoin.name()) || statisticTable.getType().equals(Event.joystickConfigChanged.name()) || statisticTable.getType().equals(Event.clickVsBtn.name()) || statisticTable.getType().equals(Event.clickVsHallBtn.name()) || statisticTable.getType().equals(Event.visitVsRoomPage.name()) || statisticTable.getType().equals(Event.visitVsMainPage.name()) || statisticTable.getType().equals(Event.VsGameStart.name()) || statisticTable.getType().equals(Event.clickVsForumBtn.name()) || statisticTable.getType().equals(Event.clickVsAdvBtn.name()) || statisticTable.getType().equals(Event.clickVsCreateRoom.name()) || statisticTable.getType().equals(Event.clickVsQuickJoin.name()) || statisticTable.getType().equals(Event.VsCreateWaitOver.name()) || statisticTable.getType().equals(Event.VsGameOverSuccess.name()) || statisticTable.getType().equals(Event.VsSelectSilentBtn.name()) || statisticTable.getType().equals(Event.VsCreateSilentRoom.name()) || statisticTable.getType().equals(Event.VsSilentTransform.name()) || statisticTable.getType().equals(Event.clickVsLocalBat.name()) || statisticTable.getType().equals(Event.clickVslLocalCreateRoom.name()) || statisticTable.getType().equals(Event.clickVsJoinRoom.name()) || statisticTable.getType().equals(Event.clickVsNetBattleMatch.name()))) {
                                            try {
                                                StatService.this.f77179f.b0((StatDataCenterReq) JsonMapper.getInstance().fromJson(statisticTable.getArgs1(), StatDataCenterReq.class));
                                            } catch (Exception e13) {
                                                e13.printStackTrace();
                                                arrayList.add(statisticTable);
                                            }
                                        }
                                        arrayList.add(statisticTable);
                                    }
                                }
                            }
                            if (arrayList2.size() > 0) {
                                StatService statService2 = StatService.this;
                                statService2.f77179f.a0(statService2.getApplicationContext(), arrayList2);
                            }
                            StatService statService3 = StatService.this;
                            statService3.f77179f.u(statService3.getApplicationContext(), arrayList);
                            StatService.this.f77176c.clear();
                        }
                    } catch (Throwable th) {
                        StatService.this.f77181h.set(false);
                        throw th;
                    }
                } catch (Exception e14) {
                    e14.printStackTrace();
                    StatService.this.n("", e14);
                    StatService.this.f77181h.set(false);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean delete(StatisticTable statisticTable) {
        try {
            this.f77175b.delete(statisticTable);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Statservice deleStat ");
            sb2.append(statisticTable.getId());
            sb2.append(statisticTable.getArgs1());
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            n(statisticTable.getId() + "", e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        boolean z10;
        boolean zM = m(Long.parseLong(this.f77178e.q()));
        boolean zT = u.t(getApplicationContext());
        boolean zV = u.v(getApplicationContext());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isBackground=");
        sb2.append(zT);
        if (zM || zT || !zV) {
            return;
        }
        Iterator<StatisticTable> it2 = this.f77176c.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            StatisticTable next = it2.next();
            if (next.getType().equals(Event.startApp.name()) && m(Long.parseLong(next.getTime()))) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            return;
        }
        t.l(getApplicationContext()).a2("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        boolean z10;
        j jVarN;
        boolean zM = m(Long.parseLong(this.f77178e.h()));
        boolean zT = u.t(getApplicationContext());
        boolean zV = u.v(getApplicationContext());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isBackground=");
        sb2.append(zT);
        if (zM || zT || !zV) {
            return;
        }
        Iterator<StatisticTable> it2 = this.f77176c.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            StatisticTable next = it2.next();
            if (next.getType().equals(Event.gameList.name()) && m(Long.parseLong(next.getTime()))) {
                z10 = true;
                break;
            }
        }
        if (z10 || (jVarN = t.l(getApplicationContext()).n()) == null) {
            return;
        }
        String strC = jVarN.c();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("gameList is =");
        sb3.append(strC);
        t.l(getApplicationContext()).J0(strC, jVarN.a(getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
    }

    private void l() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(String str, Throwable th) {
        StringBuffer stringBuffer = new StringBuffer(u.f(getApplicationContext()).e() + ";error::");
        stringBuffer.append(th.getMessage());
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            try {
                stringBuffer.append(stackTraceElement.toString());
            } catch (Exception unused) {
            }
        }
        if (str == null || str.equals("") || !this.f77175b.i(Event.setpapaerror, str)) {
            this.f77179f.J(Event.setpapaerror, stringBuffer.toString(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        List<BossTable> listL = this.f77175b.l();
        this.f77177d = listL;
        if (listL == null || listL.size() == 0) {
            return;
        }
        for (BossTable bossTable : this.f77177d) {
            if (delete(bossTable) && !this.f77179f.c0(bossTable)) {
                this.f77175b.t(bossTable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(StatisticTable statisticTable) {
        String args1 = statisticTable.getArgs1();
        if (args1 == null || args1.equals("")) {
            return;
        }
        JoyStickConfig joyStickConfig = (JoyStickConfig) JsonMapper.nonDefaultMapper().fromJson(args1, JoyStickConfig.class);
        joyStickConfig.setId(statisticTable.getId());
        this.f77179f.u0(getApplicationContext(), joyStickConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(StatisticTable statisticTable) {
        String args1 = statisticTable.getArgs1();
        if (args1 == null || args1.equals("")) {
            return;
        }
        try {
            JoyStickConfig joyStickConfig = (JoyStickConfig) JsonMapper.getInstance().fromJson(args1, JoyStickConfig.class);
            joyStickConfig.setId(statisticTable.getId());
            n.b(getApplicationContext(), joyStickConfig);
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f77175b.r(statisticTable);
        }
    }

    public boolean m(long j10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        int i10 = calendar.get(1);
        int i11 = calendar.get(2);
        int i12 = calendar.get(5);
        calendar.setTimeInMillis(System.currentTimeMillis());
        return i10 == calendar.get(1) && i11 == calendar.get(2) && i12 == calendar.get(5);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        t.l(getApplicationContext()).o();
    }

    @Override // android.app.Service
    public void onDestroy() {
        y7.a aVar = this.f77175b;
        if (aVar != null) {
            aVar.b();
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        this.f77182i = u.t(getApplicationContext());
        this.f77175b = y7.a.o(getApplicationContext());
        synchronized (this.f77180g) {
            if (this.f77181h.compareAndSet(false, true)) {
                if (this.f77179f == null) {
                    this.f77179f = s.m(getApplicationContext());
                }
                if (this.f77178e == null) {
                    this.f77178e = com.papa.sim.statistic.pref.b.k(getApplicationContext());
                }
                if (this.f77175b == null) {
                    this.f77175b = y7.a.o(getApplicationContext());
                }
                if (com.papa.sim.statistic.pref.b.k(this).s()) {
                    return super.onStartCommand(intent, i10, i11);
                }
                new a().start();
            }
            return super.onStartCommand(intent, i10, i11);
        }
    }

    private boolean delete(BossTable bossTable) {
        try {
            this.f77175b.d(bossTable);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            n(bossTable.getId() + "", e10);
            return false;
        }
    }
}
