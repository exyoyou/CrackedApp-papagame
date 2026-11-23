package com.xinzhu.overmind.client.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Service f89435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<Intent.FilterComparison, b> f89436b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f89437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f89438d;

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.service.a$a, reason: collision with other inner class name */
    class C1124a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IBinder f89439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Intent.FilterComparison f89440c;

        C1124a(IBinder iBinder, Intent.FilterComparison filterComparison) {
            this.f89439b = iBinder;
            this.f89440c = filterComparison;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.f89439b.unlinkToDeath(this, 0);
            a.this.f89436b.remove(this.f89440c);
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IBinder f89442a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AtomicInteger f89443b = new AtomicInteger(0);

        public b() {
        }

        public int a() {
            return this.f89443b.decrementAndGet();
        }

        public int b() {
            return this.f89443b.get();
        }

        public IBinder c() {
            return this.f89442a;
        }

        public int d() {
            return this.f89443b.incrementAndGet();
        }

        public void e(IBinder iBinder) {
            this.f89442a = iBinder;
        }
    }

    public void b(Intent intent, IBinder iBinder) {
        Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
        b bVarF = f(intent);
        if (bVarF == null) {
            bVarF = new b();
            this.f89436b.put(filterComparison, bVarF);
        }
        bVarF.e(iBinder);
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(new C1124a(iBinder, filterComparison), 0);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        }
    }

    public boolean c(Intent intent) {
        b bVar = this.f89436b.get(new Intent.FilterComparison(intent));
        return bVar == null || bVar.a() <= 0;
    }

    public int d(Intent intent) {
        return f(intent).b();
    }

    public IBinder e(Intent intent) {
        return f(intent).c();
    }

    public b f(Intent intent) {
        Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
        b bVar = this.f89436b.get(filterComparison);
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b();
        this.f89436b.put(filterComparison, bVar2);
        return bVar2;
    }

    public Service g() {
        return this.f89435a;
    }

    public int h() {
        return this.f89438d;
    }

    public int i() {
        Iterator<b> it2 = this.f89436b.values().iterator();
        int iB = 0;
        while (it2.hasNext()) {
            iB += it2.next().b();
        }
        return iB;
    }

    public boolean j(Intent intent) {
        return f(intent).c() != null;
    }

    public int k(Intent intent) {
        return f(intent).d();
    }

    public boolean l() {
        return this.f89437c;
    }

    public void m(boolean z10) {
        this.f89437c = z10;
    }

    public void n(Service service) {
        this.f89435a = service;
    }

    public void o(int i10) {
        this.f89438d = i10;
    }
}
