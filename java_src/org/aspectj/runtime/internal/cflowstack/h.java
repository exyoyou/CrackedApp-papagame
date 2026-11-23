package org.aspectj.runtime.internal.cflowstack;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Stack;

/* JADX INFO: loaded from: classes4.dex */
public class h implements c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f95172e = 20000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f95173f = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread f95175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Stack f95176c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Hashtable f95174a = new Hashtable();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f95177d = 0;

    @Override // org.aspectj.runtime.internal.cflowstack.c
    public void a() {
    }

    @Override // org.aspectj.runtime.internal.cflowstack.c
    public synchronized Stack b() {
        if (Thread.currentThread() != this.f95175b) {
            Thread threadCurrentThread = Thread.currentThread();
            this.f95175b = threadCurrentThread;
            Stack stack = (Stack) this.f95174a.get(threadCurrentThread);
            this.f95176c = stack;
            if (stack == null) {
                Stack stack2 = new Stack();
                this.f95176c = stack2;
                this.f95174a.put(this.f95175b, stack2);
            }
            this.f95177d++;
            if (this.f95177d > Math.max(100, 20000 / Math.max(1, this.f95174a.size()))) {
                Stack stack3 = new Stack();
                Enumeration enumerationKeys = this.f95174a.keys();
                while (enumerationKeys.hasMoreElements()) {
                    Thread thread = (Thread) enumerationKeys.nextElement();
                    if (!thread.isAlive()) {
                        stack3.push(thread);
                    }
                }
                Enumeration enumerationElements = stack3.elements();
                while (enumerationElements.hasMoreElements()) {
                    this.f95174a.remove((Thread) enumerationElements.nextElement());
                }
                this.f95177d = 0;
            }
        }
        return this.f95176c;
    }
}
