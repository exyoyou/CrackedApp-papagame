package com.byazt.pop;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 993, 15})
public class uj implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap<Integer, c> f18788c = new ConcurrentHashMap<>();

    public void c(c cVar) {
        if (cVar != null) {
            this.f18788c.put(Integer.valueOf(cVar.hashCode()), cVar);
        }
    }

    public void tt() {
        if (this.f18788c.isEmpty()) {
            return;
        }
        this.f18788c.clear();
    }

    @Override // com.byazt.pop.c
    public void ve(long j10, long j11, String str, String str2) {
        Iterator<Map.Entry<Integer, c>> it2 = this.f18788c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, c> next = it2.next();
            if (next == null) {
                it2.remove();
            } else {
                new tt.c().c(next.getValue()).c("onDownloadFailed").c(j10).tt(j11).tt(str).ve(str2).c();
            }
        }
    }

    @Override // com.byazt.pop.c
    public void c() {
        Iterator<Map.Entry<Integer, c>> it2 = this.f18788c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, c> next = it2.next();
            if (next == null) {
                it2.remove();
            } else {
                new tt.c().c(next.getValue()).c("onIdle").c();
            }
        }
    }

    @Override // com.byazt.pop.c
    public void tt(long j10, long j11, String str, String str2) {
        Iterator<Map.Entry<Integer, c>> it2 = this.f18788c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, c> next = it2.next();
            if (next == null) {
                it2.remove();
            } else {
                new tt.c().c(next.getValue()).c("onDownloadPaused").c(j10).tt(j11).tt(str).ve(str2).c();
            }
        }
    }

    @Override // com.byazt.pop.c
    public void c(long j10, long j11, String str, String str2) {
        Iterator<Map.Entry<Integer, c>> it2 = this.f18788c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, c> next = it2.next();
            if (next == null) {
                it2.remove();
            } else {
                new tt.c().c(next.getValue()).c("onDownloadActive").c(j10).tt(j11).tt(str).ve(str2).c();
            }
        }
    }

    @Override // com.byazt.pop.c
    public void c(String str, String str2) {
        Iterator<Map.Entry<Integer, c>> it2 = this.f18788c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, c> next = it2.next();
            if (next == null) {
                it2.remove();
            } else {
                next.getValue().c(str, str2);
                new tt.c().c(next.getValue()).c("onInstalled").tt(str).ve(str2).c();
            }
        }
    }

    @Override // com.byazt.pop.c
    public void c(long j10, String str, String str2) {
        Iterator<Map.Entry<Integer, c>> it2 = this.f18788c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, c> next = it2.next();
            if (next == null) {
                it2.remove();
            } else {
                new tt.c().c(next.getValue()).c("onDownloadFinished").c(j10).tt(str).ve(str2).c();
            }
        }
    }
}
