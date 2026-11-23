package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedHashSet;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class d<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkedHashSet<E> f27665b;

    public d(final int maxSize) {
        this.f27665b = new LinkedHashSet<>(maxSize);
        this.f27664a = maxSize;
    }

    public synchronized boolean a(E key) {
        if (this.f27665b.size() == this.f27664a) {
            LinkedHashSet<E> linkedHashSet = this.f27665b;
            linkedHashSet.remove(linkedHashSet.iterator().next());
        }
        this.f27665b.remove(key);
        return this.f27665b.add(key);
    }

    public synchronized boolean b(E o10) {
        return this.f27665b.contains(o10);
    }
}
