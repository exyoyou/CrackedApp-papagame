package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class o<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f90844b = "Set contributions cannot be null";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<T> f90845a;

    private o(int estimatedSize) {
        this.f90845a = new ArrayList(estimatedSize);
    }

    public static <T> o<T> d(int estimatedSize) {
        return new o<>(estimatedSize);
    }

    public o<T> a(T t10) {
        this.f90845a.add((T) k.c(t10, f90844b));
        return this;
    }

    public o<T> b(Collection<? extends T> collection) {
        Iterator<? extends T> it2 = collection.iterator();
        while (it2.hasNext()) {
            k.c(it2.next(), f90844b);
        }
        this.f90845a.addAll(collection);
        return this;
    }

    public Set<T> c() {
        if (this.f90845a.isEmpty()) {
            return Collections.emptySet();
        }
        return this.f90845a.size() == 1 ? Collections.singleton(this.f90845a.get(0)) : Collections.unmodifiableSet(new HashSet(this.f90845a));
    }
}
