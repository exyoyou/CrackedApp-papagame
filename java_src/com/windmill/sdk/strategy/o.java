package com.windmill.sdk.strategy;

import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.WMFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class o extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f87225a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s.d f87227c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WMFilter f87231g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87226b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<List<a>> f87228d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<a> f87229e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<a> f87230f = new ArrayList();

    public o(s.d strategyListener, List<a> adStrategyList, int maxConcurrent, WMFilter wmFilter) {
        this.f87227c = strategyListener;
        this.f87225a = maxConcurrent;
        this.f87231g = wmFilter;
        a(new CopyOnWriteArrayList(adStrategyList));
    }

    private void a(List<a> adStrategyList) {
        int size = this.f87225a <= 0 ? adStrategyList.size() : Math.min(adStrategyList.size(), this.f87225a);
        if (size < adStrategyList.size()) {
            int size2 = adStrategyList.size();
            int i10 = ((size2 + size) - 1) / size;
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 * size;
                i11++;
                this.f87228d.add(adStrategyList.subList(i12, Math.min(i11 * size, size2)));
            }
        } else {
            this.f87228d.add(adStrategyList);
        }
        for (int i13 = 0; i13 < adStrategyList.size(); i13++) {
            a aVar = adStrategyList.get(i13);
            if (aVar.D()) {
                this.f87230f.add(aVar);
            }
        }
    }

    @Override // com.windmill.sdk.strategy.r
    public List<a> b() {
        return new CopyOnWriteArrayList(this.f87229e);
    }

    @Override // com.windmill.sdk.strategy.r
    public void c() {
        this.f87226b = this.f87228d.size();
    }

    @Override // com.windmill.sdk.strategy.r
    public void a() {
        this.f87226b = 0;
        List<a> list = this.f87228d.get(0);
        this.f87229e.clear();
        this.f87229e.addAll(list);
        WMLogUtil.d(WMLogUtil.TAG, "WMStrategyB-------initializeADStrategyList:" + this.f87225a + ":" + this.f87229e.size() + ":" + this.f87230f.size());
        if (this.f87230f.size() > 0) {
            a aVar = this.f87230f.get(0);
            if (!this.f87229e.contains(aVar)) {
                aVar.h(true);
                if (this.f87227c != null) {
                    WindMillError windMillErrorA = r.a(aVar, this.f87231g);
                    if (windMillErrorA != null) {
                        this.f87227c.a(aVar, windMillErrorA);
                    } else {
                        this.f87227c.a(aVar);
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
            if (this.f87227c != null) {
                WindMillError windMillErrorA2 = r.a(aVar2, this.f87231g);
                if (windMillErrorA2 != null) {
                    this.f87227c.a(aVar2, windMillErrorA2);
                } else {
                    this.f87227c.a(aVar2);
                }
            }
        }
    }

    @Override // com.windmill.sdk.strategy.r
    public synchronized void a(a adStrategy) {
        WMLogUtil.d(WMLogUtil.TAG, "WMStrategyB-------loadBackupStrategy-----1:" + this.f87226b + ":" + adStrategy.aP());
        List<a> list = this.f87229e;
        if (list != null) {
            if (list.contains(adStrategy)) {
                this.f87229e.remove(adStrategy);
            }
            if (this.f87229e.size() > 0) {
                return;
            }
        }
        this.f87226b++;
        WMLogUtil.d(WMLogUtil.TAG, "WMStrategyB-------loadBackupStrategy-----2:" + this.f87226b + ":" + this.f87228d.size());
        if (this.f87226b < this.f87228d.size()) {
            List<a> list2 = this.f87228d.get(this.f87226b);
            this.f87229e.clear();
            this.f87229e.addAll(list2);
            int i10 = 0;
            while (i10 < list2.size()) {
                a aVar = list2.get(i10);
                aVar.k(this.f87226b + 1);
                i10++;
                aVar.l(i10);
                aVar.h(false);
                aVar.i(false);
                if (this.f87227c != null) {
                    WindMillError windMillErrorA = r.a(aVar, this.f87231g);
                    if (windMillErrorA != null) {
                        this.f87227c.a(aVar, windMillErrorA);
                    } else {
                        WMLogUtil.i("-----StrategyB---adapterLoadPassFilterBackup");
                        this.f87227c.b(aVar);
                    }
                }
            }
        }
    }
}
