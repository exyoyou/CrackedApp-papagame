package com.tencent.stat;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.tencent.stat.a.e f83944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StatReportStrategy f83945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f83946c = new l(this);

    public k(com.tencent.stat.a.e eVar) {
        this.f83945b = null;
        this.f83944a = eVar;
        this.f83945b = StatConfig.getStatSendStrategy();
    }

    @Override // java.lang.Runnable
    public void run() {
        n nVarA;
        com.tencent.stat.a.e eVar;
        try {
            if (StatConfig.isEnableStatService()) {
                if (this.f83944a.a() != com.tencent.stat.a.f.ERROR && this.f83944a.d().length() > StatConfig.getMaxReportEventLength()) {
                    StatService.f83814i.e("Event length exceed StatConfig.getMaxReportEventLength(): " + StatConfig.getMaxReportEventLength());
                    return;
                }
                if (StatConfig.getMaxSessionStatReportCount() > 0) {
                    if (StatConfig.getCurSessionStatReportCount() >= StatConfig.getMaxSessionStatReportCount()) {
                        StatService.f83814i.e("Times for reporting events has reached the limit of StatConfig.getMaxSessionStatReportCount() in current session.");
                        return;
                    }
                    StatConfig.c();
                }
                StatService.f83814i.i("Lauch stat task in thread:" + Thread.currentThread().getName());
                Context contextC = this.f83944a.c();
                m mVar = null;
                if (!com.tencent.stat.common.k.h(contextC)) {
                    n.a(contextC).a(this.f83944a, (c) null);
                    return;
                }
                if (StatConfig.isEnableSmartReporting() && this.f83945b != StatReportStrategy.ONLY_WIFI_NO_CACHE && com.tencent.stat.common.k.g(contextC)) {
                    this.f83945b = StatReportStrategy.INSTANT;
                }
                switch (h.f83940a[this.f83945b.ordinal()]) {
                    case 2:
                        if (!com.tencent.stat.common.k.e(contextC)) {
                            nVarA = n.a(contextC);
                            eVar = this.f83944a;
                            nVarA.a(eVar, mVar);
                            break;
                        }
                    case 1:
                        a();
                        break;
                    case 3:
                    case 4:
                        nVarA = n.a(contextC);
                        eVar = this.f83944a;
                        nVarA.a(eVar, mVar);
                        break;
                    case 5:
                        if (n.a(this.f83944a.c()) != null) {
                            nVarA = n.a(contextC);
                            eVar = this.f83944a;
                            mVar = new m(this);
                            nVarA.a(eVar, mVar);
                            break;
                        }
                        break;
                    case 6:
                        try {
                            n.a(contextC).a(this.f83944a, (c) null);
                            Long lValueOf = Long.valueOf(com.tencent.stat.common.p.a(contextC, "last_period_ts", 0L));
                            Long lValueOf2 = Long.valueOf(System.currentTimeMillis());
                            if (Long.valueOf(Long.valueOf(lValueOf2.longValue() - lValueOf.longValue()).longValue() / 60000).longValue() > StatConfig.getSendPeriodMinutes()) {
                                n.a(contextC).a(-1);
                                com.tencent.stat.common.p.b(contextC, "last_period_ts", lValueOf2.longValue());
                            }
                        } catch (Exception e10) {
                            StatService.f83814i.e(e10);
                            return;
                        }
                        break;
                    case 7:
                        if (com.tencent.stat.common.k.e(contextC)) {
                            a(false);
                        }
                        break;
                    default:
                        StatService.f83814i.error("Invalid stat strategy:" + StatConfig.getStatSendStrategy());
                        break;
                }
            }
        } catch (Throwable th) {
            StatService.f83814i.e(th);
        }
    }

    private void a() {
        if (n.b().a() <= 0) {
            a(true);
        } else {
            n.b().a(this.f83944a, (c) null);
            n.b().a(-1);
        }
    }

    private void a(boolean z10) {
        d.b().a(this.f83944a, this.f83946c);
    }
}
