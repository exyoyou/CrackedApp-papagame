package com.efs.sdk.base.core.util.concurrent;

import androidx.annotation.NonNull;
import com.efs.sdk.base.core.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class d<T> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<b<T>> f26398a = new ArrayList(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c<T> f26399b;

    public d(@NonNull c<T> cVar) {
        this.f26399b = cVar;
    }

    public final void a(@NonNull List<b<T>> list) {
        this.f26398a.addAll(list);
    }

    @Override // java.lang.Runnable
    public void run() {
        a();
    }

    public final T a() {
        T tA = null;
        try {
            Iterator<b<T>> it2 = this.f26398a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            tA = this.f26399b.a();
            Iterator<b<T>> it3 = this.f26398a.iterator();
            while (it3.hasNext()) {
                it3.next().a(this.f26399b, tA);
            }
            Iterator<b<T>> it4 = this.f26398a.iterator();
            while (it4.hasNext()) {
                it4.next().result(tA);
            }
        } catch (Throwable th) {
            Log.w("efs.util.concurrent", th);
            Iterator<b<T>> it5 = this.f26398a.iterator();
            while (it5.hasNext()) {
                it5.next();
            }
        }
        return tA;
    }
}
