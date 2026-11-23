package com.join.mgps.socket;

import com.join.mgps.socket.entity.e;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f72931b = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    LinkedBlockingQueue<e> f72932a;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f72933a = new a();

        private b() {
        }
    }

    public static a b() {
        return b.f72933a;
    }

    public void a() {
        LinkedBlockingQueue<e> linkedBlockingQueue = this.f72932a;
        if (linkedBlockingQueue != null) {
            linkedBlockingQueue.clear();
        }
    }

    public e c() {
        LinkedBlockingQueue<e> linkedBlockingQueue = this.f72932a;
        if (linkedBlockingQueue != null) {
            return linkedBlockingQueue.poll();
        }
        return null;
    }

    public void d(e entity) {
        try {
            if (this.f72932a == null) {
                this.f72932a = new LinkedBlockingQueue<>();
            }
            this.f72932a.put(entity);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("push: 装入数据 size");
            sb2.append(this.f72932a.size());
            sb2.append(entity.toString());
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    private a() {
        this.f72932a = new LinkedBlockingQueue<>();
    }
}
