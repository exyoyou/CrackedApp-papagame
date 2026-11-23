package com.facebook.rebound;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28808g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Queue<Double> f28803b = new LinkedList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Queue<Double> f28804c = new LinkedList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<InterfaceC0586b> f28805d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayList<Double> f28806e = new ArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f28802a = f.e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f.a f28807f = new a();

    class a extends f.a {
        a() {
        }

        @Override // com.facebook.rebound.f.a
        public void a(long j10) {
            b.this.g(j10);
        }
    }

    /* JADX INFO: renamed from: com.facebook.rebound.b$b, reason: collision with other inner class name */
    public interface InterfaceC0586b {
        void a(Double d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(long j10) {
        int iMax;
        Double dPoll = this.f28803b.poll();
        if (dPoll != null) {
            this.f28804c.offer(dPoll);
            iMax = 0;
        } else {
            iMax = Math.max(this.f28805d.size() - this.f28804c.size(), 0);
        }
        this.f28806e.addAll(this.f28804c);
        int size = this.f28806e.size();
        while (true) {
            size--;
            if (size <= -1) {
                break;
            }
            Double d10 = this.f28806e.get(size);
            int size2 = ((this.f28806e.size() - 1) - size) + iMax;
            if (this.f28805d.size() > size2) {
                this.f28805d.get(size2).a(d10);
            }
        }
        this.f28806e.clear();
        while (this.f28804c.size() + iMax >= this.f28805d.size()) {
            this.f28804c.poll();
        }
        if (this.f28804c.isEmpty() && this.f28803b.isEmpty()) {
            this.f28808g = false;
        } else {
            this.f28802a.f(this.f28807f);
        }
    }

    private void i() {
        if (this.f28808g) {
            return;
        }
        this.f28808g = true;
        this.f28802a.f(this.f28807f);
    }

    public void b(Collection<Double> collection) {
        this.f28803b.addAll(collection);
        i();
    }

    public void c(InterfaceC0586b interfaceC0586b) {
        this.f28805d.add(interfaceC0586b);
    }

    public void d(Double d10) {
        this.f28803b.add(d10);
        i();
    }

    public void e() {
        this.f28805d.clear();
    }

    public void f() {
        this.f28803b.clear();
    }

    public void h(InterfaceC0586b interfaceC0586b) {
        this.f28805d.remove(interfaceC0586b);
    }
}
