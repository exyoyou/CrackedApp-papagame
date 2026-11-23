package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public interface r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final a f93414a = a.f93415a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f93415a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private static final r f93416b = new t();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NotNull
        private static final r f93417c = new StartedLazily();

        private a() {
        }

        public static /* synthetic */ r b(a aVar, long j10, long j11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                j10 = 0;
            }
            if ((i10 & 2) != 0) {
                j11 = Long.MAX_VALUE;
            }
            return aVar.a(j10, j11);
        }

        @NotNull
        public final r a(long j10, long j11) {
            return new StartedWhileSubscribed(j10, j11);
        }

        @NotNull
        public final r c() {
            return f93416b;
        }

        @NotNull
        public final r d() {
            return f93417c;
        }
    }

    @NotNull
    e<SharingCommand> a(@NotNull u<Integer> uVar);
}
