package com.facebook.drawee.components;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
class b extends com.facebook.drawee.components.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f27049b = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f27053f = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<com.facebook.drawee.components.a.InterfaceC0563a> f27051d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<com.facebook.drawee.components.a.InterfaceC0563a> f27052e = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f27050c = new Handler(Looper.getMainLooper());

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            synchronized (b.this.f27049b) {
                ArrayList arrayList = b.this.f27052e;
                b bVar = b.this;
                bVar.f27052e = bVar.f27051d;
                b.this.f27051d = arrayList;
            }
            int size = b.this.f27052e.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((com.facebook.drawee.components.a.InterfaceC0563a) b.this.f27052e.get(i10)).release();
            }
            b.this.f27052e.clear();
        }
    }

    @Override // com.facebook.drawee.components.a
    @AnyThread
    public void a(com.facebook.drawee.components.a.InterfaceC0563a releasable) {
        synchronized (this.f27049b) {
            this.f27051d.remove(releasable);
        }
    }

    @Override // com.facebook.drawee.components.a
    @AnyThread
    public void d(com.facebook.drawee.components.a.InterfaceC0563a releasable) {
        if (!com.facebook.drawee.components.a.c()) {
            releasable.release();
            return;
        }
        synchronized (this.f27049b) {
            if (this.f27051d.contains(releasable)) {
                return;
            }
            this.f27051d.add(releasable);
            boolean z10 = true;
            if (this.f27051d.size() != 1) {
                z10 = false;
            }
            if (z10) {
                this.f27050c.post(this.f27053f);
            }
        }
    }
}
