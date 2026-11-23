package com.windmill.sdk.strategy;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.WMFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class p extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s.d f87234c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WMFilter f87238g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f87232a = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87233b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<List<a>> f87235d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<a> f87236e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<a> f87237f = new ArrayList();

    public p(s.d strategyListener, List<a> adStrategyList, WMFilter wmFilter) {
        this.f87234c = strategyListener;
        this.f87238g = wmFilter;
        a(new CopyOnWriteArrayList(adStrategyList));
    }

    private void a(List<a> adStrategyList) {
        this.f87235d.add(new ArrayList());
        for (int i10 = 0; i10 < adStrategyList.size(); i10++) {
            a aVar = adStrategyList.get(i10);
            List<List<a>> list = this.f87235d;
            List<a> list2 = list.get(list.size() - 1);
            if (list2.isEmpty() || (list2.get(list2.size() - 1).X().equals(aVar.X()) && list2.size() < this.f87232a)) {
                list2.add(aVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(aVar);
                this.f87235d.add(arrayList);
            }
        }
        for (int i11 = 0; i11 < adStrategyList.size(); i11++) {
            a aVar2 = adStrategyList.get(i11);
            if (aVar2.D()) {
                this.f87237f.add(aVar2);
            }
        }
    }

    @Override // com.windmill.sdk.strategy.r
    public List<a> b() {
        return new CopyOnWriteArrayList(this.f87236e);
    }

    @Override // com.windmill.sdk.strategy.r
    public void c() {
        this.f87233b = this.f87235d.size();
    }

    @Override // com.windmill.sdk.strategy.r
    public void a() {
        this.f87233b = 0;
        List<a> list = this.f87235d.get(0);
        this.f87236e.clear();
        this.f87236e.addAll(list);
        WMLogUtil.d(WMLogUtil.TAG, "WMStrategyC-------initializeADStrategyList:" + this.f87232a + ":" + this.f87236e.size() + ":" + this.f87237f.size());
        if (this.f87237f.size() > 0) {
            a aVar = this.f87237f.get(0);
            if (!this.f87236e.contains(aVar)) {
                aVar.h(true);
                if (this.f87234c != null) {
                    WindMillError windMillErrorA = r.a(aVar, this.f87238g);
                    if (windMillErrorA != null) {
                        this.f87234c.a(aVar, windMillErrorA);
                    } else {
                        this.f87234c.a(aVar);
                    }
                }
            }
        }
        int i10 = 0;
        while (i10 < list.size()) {
            a aVar2 = list.get(i10);
            aVar2.k(1);
            i10++;
            aVar2.l(i10);
            aVar2.h(false);
            aVar2.i(false);
            if (this.f87234c != null) {
                WindMillError windMillErrorA2 = r.a(aVar2, this.f87238g);
                if (windMillErrorA2 != null) {
                    this.f87234c.a(aVar2, windMillErrorA2);
                } else {
                    this.f87234c.a(aVar2);
                }
            }
        }
    }

    @Override // com.windmill.sdk.strategy.r
    public synchronized void a(a adStrategy) {
        WMLogUtil.d(WMLogUtil.TAG, "WMStrategyC-------loadBackupStrategy-----1:" + this.f87233b + ":" + adStrategy.aP());
        List<a> list = this.f87236e;
        if (list != null) {
            if (list.contains(adStrategy)) {
                this.f87236e.remove(adStrategy);
            }
            if (this.f87236e.size() > 0) {
                return;
            }
        }
        this.f87233b++;
        WMLogUtil.d(WMLogUtil.TAG, "WMStrategyC-------loadBackupStrategy-----2:" + this.f87233b + ":" + this.f87235d.size());
        if (this.f87233b < this.f87235d.size()) {
            List<a> list2 = this.f87235d.get(this.f87233b);
            this.f87236e.clear();
            this.f87236e.addAll(list2);
            int i10 = 0;
            while (i10 < list2.size()) {
                a aVar = list2.get(i10);
                aVar.k(this.f87233b + 1);
                i10++;
                aVar.l(i10);
                aVar.h(false);
                aVar.i(false);
                if (this.f87234c != null) {
                    WindMillError windMillErrorA = r.a(aVar, this.f87238g);
                    if (windMillErrorA != null) {
                        this.f87234c.a(aVar, windMillErrorA);
                    } else {
                        WMLogUtil.i("-----StrategyC---adapterLoadPassFilterBackup");
                        this.f87234c.b(aVar);
                    }
                }
            }
        }
    }
}
