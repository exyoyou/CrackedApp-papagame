package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class p<T> implements e<Set<T>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final e<Set<Object>> f90846c = f.a(Collections.emptySet());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<l<T>> f90847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<l<Collection<T>>> f90848b;

    public static final class b<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final /* synthetic */ boolean f90849c = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<l<T>> f90850a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<l<Collection<T>>> f90851b;

        public b<T> a(l<? extends Collection<? extends T>> collectionProvider) {
            this.f90851b.add(collectionProvider);
            return this;
        }

        @Deprecated
        public b<T> b(vb.a<? extends Collection<? extends T>> collectionProvider) {
            return a(n.a(collectionProvider));
        }

        public b<T> c(l<? extends T> individualProvider) {
            this.f90850a.add(individualProvider);
            return this;
        }

        @Deprecated
        public b<T> d(vb.a<? extends T> individualProvider) {
            return c(n.a(individualProvider));
        }

        public p<T> e() {
            return new p<>(this.f90850a, this.f90851b);
        }

        private b(int individualProviderSize, int collectionProviderSize) {
            this.f90850a = dagger.internal.b.e(individualProviderSize);
            this.f90851b = dagger.internal.b.e(collectionProviderSize);
        }
    }

    public static <T> b<T> a(int individualProviderSize, int collectionProviderSize) {
        return new b<>(individualProviderSize, collectionProviderSize);
    }

    public static <T> e<Set<T>> b() {
        return (e<Set<T>>) f90846c;
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set<T> get() {
        int size = this.f90847a.size();
        ArrayList arrayList = new ArrayList(this.f90848b.size());
        int size2 = this.f90848b.size();
        for (int i10 = 0; i10 < size2; i10++) {
            Collection<T> collection = this.f90848b.get(i10).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSetC = dagger.internal.b.c(size);
        int size3 = this.f90847a.size();
        for (int i11 = 0; i11 < size3; i11++) {
            hashSetC.add(k.b(this.f90847a.get(i11).get()));
        }
        int size4 = arrayList.size();
        for (int i12 = 0; i12 < size4; i12++) {
            Iterator it2 = ((Collection) arrayList.get(i12)).iterator();
            while (it2.hasNext()) {
                hashSetC.add(k.b(it2.next()));
            }
        }
        return Collections.unmodifiableSet(hashSetC);
    }

    private p(List<l<T>> individualProviders, List<l<Collection<T>>> collectionProviders) {
        this.f90847a = individualProviders;
        this.f90848b = collectionProviders;
    }
}
