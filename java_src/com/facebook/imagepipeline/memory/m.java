package com.facebook.imagepipeline.memory;

import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.ThreadSafe;
import java.util.LinkedList;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
@ThreadSafe
public class m<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final SparseArray<b<T>> f28172a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    b<T> f28173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    b<T> f28174c;

    @VisibleForTesting
    static class b<I> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        b<I> f28175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f28176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        LinkedList<I> f28177c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        b<I> f28178d;

        public String toString() {
            return "LinkedEntry(key: " + this.f28176b + ")";
        }

        private b(@Nullable b<I> prev, int key, LinkedList<I> value, @Nullable b<I> next) {
            this.f28175a = prev;
            this.f28176b = key;
            this.f28177c = value;
            this.f28178d = next;
        }
    }

    private void b(b<T> bucket) {
        if (bucket == null || !bucket.f28177c.isEmpty()) {
            return;
        }
        d(bucket);
        this.f28172a.remove(bucket.f28176b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(b<T> bVar) {
        if (this.f28173b == bVar) {
            return;
        }
        d(bVar);
        b<T> bVar2 = this.f28173b;
        if (bVar2 == 0) {
            this.f28173b = bVar;
            this.f28174c = bVar;
        } else {
            bVar.f28178d = bVar2;
            bVar2.f28175a = bVar;
            this.f28173b = bVar;
        }
    }

    private synchronized void d(b<T> bVar) {
        b bVar2 = (b<T>) bVar.f28175a;
        b bVar3 = (b<T>) bVar.f28178d;
        if (bVar2 != null) {
            bVar2.f28178d = bVar3;
        }
        if (bVar3 != null) {
            bVar3.f28175a = bVar2;
        }
        bVar.f28175a = null;
        bVar.f28178d = null;
        if (bVar == this.f28173b) {
            this.f28173b = bVar3;
        }
        if (bVar == this.f28174c) {
            this.f28174c = bVar2;
        }
    }

    @Nullable
    public synchronized T a(int key) {
        b<T> bVar = this.f28172a.get(key);
        if (bVar == null) {
            return null;
        }
        T tPollFirst = bVar.f28177c.pollFirst();
        c(bVar);
        return tPollFirst;
    }

    public synchronized void e(int key, T value) {
        b<T> bVar = this.f28172a.get(key);
        if (bVar == null) {
            bVar = new b<>(null, key, new LinkedList(), null);
            this.f28172a.put(key, bVar);
        }
        bVar.f28177c.addLast(value);
        c(bVar);
    }

    @Nullable
    public synchronized T f() {
        b<T> bVar = this.f28174c;
        if (bVar == null) {
            return null;
        }
        T tPollLast = bVar.f28177c.pollLast();
        b(bVar);
        return tPollLast;
    }

    @VisibleForTesting
    synchronized int g() {
        int size;
        size = 0;
        for (b bVar = this.f28173b; bVar != null; bVar = bVar.f28178d) {
            LinkedList<I> linkedList = bVar.f28177c;
            if (linkedList != 0) {
                size += linkedList.size();
            }
        }
        return size;
    }
}
