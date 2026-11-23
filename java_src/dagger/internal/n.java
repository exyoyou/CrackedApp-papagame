package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class n {

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> implements l<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ vb.a f90843a;

        a(final vb.a val$provider) {
            this.f90843a = val$provider;
        }

        @Override // vb.a, tb.a
        public T get() {
            return (T) this.f90843a.get();
        }
    }

    private n() {
    }

    public static <T> l<T> a(final vb.a<T> provider) {
        k.b(provider);
        return provider instanceof l ? (l) provider : new a(provider);
    }
}
