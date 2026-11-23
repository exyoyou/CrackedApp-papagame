package org.aspectj.runtime.internal.cflowstack;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class b implements org.aspectj.runtime.internal.cflowstack.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f95164e = 20000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f95165f = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread f95167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f95168c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Hashtable f95166a = new Hashtable();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f95169d = 0;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f95170a = 0;

        a() {
        }
    }

    private synchronized a e() {
        if (Thread.currentThread() != this.f95167b) {
            Thread threadCurrentThread = Thread.currentThread();
            this.f95167b = threadCurrentThread;
            a aVar = (a) this.f95166a.get(threadCurrentThread);
            this.f95168c = aVar;
            if (aVar == null) {
                a aVar2 = new a();
                this.f95168c = aVar2;
                this.f95166a.put(this.f95167b, aVar2);
            }
            this.f95169d++;
            if (this.f95169d > Math.max(100, 20000 / Math.max(1, this.f95166a.size()))) {
                ArrayList arrayList = new ArrayList();
                Enumeration enumerationKeys = this.f95166a.keys();
                while (enumerationKeys.hasMoreElements()) {
                    Thread thread = (Thread) enumerationKeys.nextElement();
                    if (!thread.isAlive()) {
                        arrayList.add(thread);
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    this.f95166a.remove((Thread) it2.next());
                }
                this.f95169d = 0;
            }
        }
        return this.f95168c;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public void a() {
        e().f95170a--;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public void b() {
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public void c() {
        e().f95170a++;
    }

    @Override // org.aspectj.runtime.internal.cflowstack.a
    public boolean d() {
        return e().f95170a != 0;
    }
}
