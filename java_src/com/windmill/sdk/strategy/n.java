package com.windmill.sdk.strategy;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.WMFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class n extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87218b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s.d f87220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<a> f87221e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WMFilter f87224h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f87219c = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<a> f87222f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<a> f87223g = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f87217a = 1;

    public n(s.d strategyListener, List<a> adStrategyList, int maxConcurrent, WMFilter wmFilter) {
        this.f87220d = strategyListener;
        this.f87221e = new CopyOnWriteArrayList(adStrategyList);
        this.f87218b = maxConcurrent;
        this.f87224h = wmFilter;
        for (int i10 = 0; i10 < this.f87221e.size(); i10++) {
            a aVar = this.f87221e.get(i10);
            if (aVar.D()) {
                this.f87223g.add(aVar);
            }
        }
    }

    @Override // com.windmill.sdk.strategy.r
    public void a() {
        try {
            int size = this.f87218b <= 0 ? this.f87221e.size() : Math.min(this.f87221e.size(), this.f87218b);
            this.f87219c = size;
            this.f87222f.clear();
            this.f87222f.addAll(this.f87221e.subList(0, size));
            WMLogUtil.d(WMLogUtil.TAG, "WMStrategyA-------initializeADStrategyList:" + this.f87218b + ":" + this.f87222f.size() + ":" + this.f87223g.size());
            if (this.f87223g.size() > 0) {
                a aVar = this.f87223g.get(0);
                if (!this.f87222f.contains(aVar)) {
                    aVar.h(true);
                    if (this.f87220d != null) {
                        WindMillError windMillErrorA = r.a(aVar, this.f87224h);
                        if (windMillErrorA != null) {
                            this.f87220d.a(aVar, windMillErrorA);
                        } else {
                            this.f87220d.a(aVar);
                        }
                    }
                }
            }
            int i10 = 0;
            while (i10 < size) {
                a aVar2 = this.f87221e.get(i10);
                aVar2.k(1);
                i10++;
                aVar2.l(i10);
                aVar2.h(false);
                aVar2.i(false);
                if (this.f87220d != null) {
                    WindMillError windMillErrorA2 = r.a(aVar2, this.f87224h);
                    if (windMillErrorA2 != null) {
                        this.f87220d.a(aVar2, windMillErrorA2);
                    } else {
                        this.f87220d.a(aVar2);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.windmill.sdk.strategy.r
    public List<a> b() {
        return new CopyOnWriteArrayList(this.f87222f);
    }

    @Override // com.windmill.sdk.strategy.r
    public void c() {
        this.f87219c = this.f87221e.size();
    }

    @Override // com.windmill.sdk.strategy.r
    public synchronized void a(a adStrategy) {
        try {
            WMLogUtil.d(WMLogUtil.TAG, "WMStrategyA-------loadBackupStrategy:" + this.f87219c + ":" + adStrategy.aP());
            List<a> list = this.f87222f;
            if (list != null && !list.contains(adStrategy)) {
                WMLogUtil.d(WMLogUtil.TAG, "-------------loadBackupStrategy---A-----------");
                return;
            }
            if (this.f87219c < this.f87221e.size()) {
                this.f87217a++;
                a aVar = this.f87221e.get(this.f87219c);
                aVar.k(this.f87217a);
                aVar.l(this.f87219c + 1);
                aVar.h(false);
                aVar.i(false);
                this.f87219c++;
                List<a> list2 = this.f87222f;
                if (list2 != null) {
                    list2.remove(adStrategy);
                    this.f87222f.add(aVar);
                }
                if (this.f87220d != null) {
                    WindMillError windMillErrorA = r.a(aVar, this.f87224h);
                    if (windMillErrorA != null) {
                        this.f87220d.a(aVar, windMillErrorA);
                    } else {
                        WMLogUtil.i("-----StrategyA---adapterLoadPassFilterBackup");
                        this.f87220d.b(aVar);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
