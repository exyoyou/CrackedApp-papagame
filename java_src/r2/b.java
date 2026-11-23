package r2;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f96741a;

    public static final class a extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final Throwable f96742b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull Throwable error) {
            super(false, null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.f96742b = error;
        }

        @NotNull
        public final Throwable b() {
            return this.f96742b;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (a() == aVar.a() && Intrinsics.areEqual(this.f96742b, aVar.f96742b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return r2.a.a(a()) + this.f96742b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(endOfPaginationReached=" + a() + ", error=" + this.f96742b + ')';
        }
    }

    /* JADX INFO: renamed from: r2.b$b, reason: collision with other inner class name */
    public static final class C1240b extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        public static final C1240b f96743b = new C1240b();

        private C1240b() {
            super(false, null);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof C1240b) && a() == ((C1240b) obj).a();
        }

        public int hashCode() {
            return r2.a.a(a());
        }

        @NotNull
        public String toString() {
            return "Loading(endOfPaginationReached=" + a() + ')';
        }
    }

    public static final class c extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        public static final c f96744b = new c();

        private c() {
            super(false, null);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof c) && a() == ((c) obj).a();
        }

        public int hashCode() {
            return r2.a.a(a());
        }

        @NotNull
        public String toString() {
            return "None(endOfPaginationReached=" + a() + ')';
        }
    }

    public static final class d extends b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        public static final a f96745b = new a(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NotNull
        private static final d f96746c = new d(true);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NotNull
        private static final d f96747d = new d(false);

        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final d a() {
                return d.f96746c;
            }

            @NotNull
            public final d b() {
                return d.f96747d;
            }

            private a() {
            }
        }

        public d(boolean z10) {
            super(z10, null);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof d) && a() == ((d) obj).a();
        }

        public int hashCode() {
            return r2.a.a(a());
        }

        @NotNull
        public String toString() {
            return "NotLoading(endOfPaginationReached=" + a() + ')';
        }
    }

    public /* synthetic */ b(boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10);
    }

    public final boolean a() {
        return this.f96741a;
    }

    private b(boolean z10) {
        this.f96741a = z10;
    }
}
