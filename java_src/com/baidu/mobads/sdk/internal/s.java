package com.baidu.mobads.sdk.internal;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile s f7940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<aa.a> f7941b = new CopyOnWriteArrayList();

    private s() {
    }

    public static s a() {
        if (f7940a == null) {
            synchronized (s.class) {
                if (f7940a == null) {
                    f7940a = new s();
                }
            }
        }
        return f7940a;
    }

    private void b(aa.a aVar) {
        if (this.f7941b.contains(aVar)) {
            this.f7941b.remove(aVar);
        }
    }

    public void a(aa.a aVar) {
        if (aVar == null || this.f7941b.contains(aVar)) {
            return;
        }
        this.f7941b.add(aVar);
    }

    public void a(int i10) {
        for (aa.a aVar : this.f7941b) {
            if (i10 == 1) {
                aVar.onSuccess();
            } else if (i10 == 2) {
                aVar.onFailure();
            }
            b(aVar);
        }
    }
}
