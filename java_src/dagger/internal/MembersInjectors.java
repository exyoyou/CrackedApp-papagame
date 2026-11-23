package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class MembersInjectors {

    private enum NoOpMembersInjector implements dagger.b<Object> {
        INSTANCE;

        @Override // dagger.b
        public void injectMembers(Object instance) {
            k.c(instance, "Cannot inject members into a null reference");
        }
    }

    private MembersInjectors() {
    }

    public static <T> dagger.b<T> a() {
        return NoOpMembersInjector.INSTANCE;
    }
}
