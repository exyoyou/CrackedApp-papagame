package com.googlecode.mp4parser.authoring;

import com.googlecode.mp4parser.util.l;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    l f32864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<h> f32865b;

    public d() {
        this.f32864a = l.f33794j;
        this.f32865b = new LinkedList();
    }

    public static long b(long j10, long j11) {
        return j11 == 0 ? j10 : b(j11, j10 % j11);
    }

    public void a(h hVar) {
        if (f(hVar.H().j()) != null) {
            hVar.H().u(d());
        }
        this.f32865b.add(hVar);
    }

    public l c() {
        return this.f32864a;
    }

    public long d() {
        long j10 = 0;
        for (h hVar : this.f32865b) {
            if (j10 < hVar.H().j()) {
                j10 = hVar.H().j();
            }
        }
        return j10 + 1;
    }

    public long e() {
        long jI = g().iterator().next().H().i();
        Iterator<h> it2 = g().iterator();
        while (it2.hasNext()) {
            jI = b(it2.next().H().i(), jI);
        }
        return jI;
    }

    public h f(long j10) {
        for (h hVar : this.f32865b) {
            if (hVar.H().j() == j10) {
                return hVar;
            }
        }
        return null;
    }

    public List<h> g() {
        return this.f32865b;
    }

    public void h(l lVar) {
        this.f32864a = lVar;
    }

    public void i(List<h> list) {
        this.f32865b = list;
    }

    public String toString() {
        String str = "Movie{ ";
        for (h hVar : this.f32865b) {
            str = String.valueOf(str) + "track_" + hVar.H().j() + " (" + hVar.getHandler() + ") ";
        }
        return String.valueOf(str) + '}';
    }

    public d(List<h> list) {
        this.f32864a = l.f33794j;
        new LinkedList();
        this.f32865b = list;
    }
}
