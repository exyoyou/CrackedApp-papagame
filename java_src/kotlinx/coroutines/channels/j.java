package kotlinx.coroutines.channels;

import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@JvmInline
public final class j<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final b f92703b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final c f92704c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Object f92705a;

    public static final class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @JvmField
        @Nullable
        public final Throwable f92706a;

        public a(@Nullable Throwable th) {
            this.f92706a = th;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof a) && Intrinsics.areEqual(this.f92706a, ((a) obj).f92706a);
        }

        public int hashCode() {
            Throwable th = this.f92706a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.j.c
        @NotNull
        public String toString() {
            return "Closed(" + this.f92706a + ')';
        }
    }

    @InternalCoroutinesApi
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @InternalCoroutinesApi
        @NotNull
        public final <E> Object a(@Nullable Throwable th) {
            return j.c(new a(th));
        }

        @InternalCoroutinesApi
        @NotNull
        public final <E> Object b() {
            return j.c(j.f92704c);
        }

        @InternalCoroutinesApi
        @NotNull
        public final <E> Object c(E e10) {
            return j.c(e10);
        }

        private b() {
        }
    }

    public static class c {
        @NotNull
        public String toString() {
            return "Failed";
        }
    }

    @PublishedApi
    private /* synthetic */ j(Object obj) {
        this.f92705a = obj;
    }

    public static final /* synthetic */ j b(Object obj) {
        return new j(obj);
    }

    @PublishedApi
    @NotNull
    public static <T> Object c(@Nullable Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof j) && Intrinsics.areEqual(obj, ((j) obj2).o());
    }

    public static final boolean e(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    @Nullable
    public static final Throwable f(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.f92706a;
        }
        return null;
    }

    @PublishedApi
    public static /* synthetic */ void g() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final T h(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T i(Object obj) throws Throwable {
        Throwable th;
        if (!(obj instanceof c)) {
            return obj;
        }
        if ((obj instanceof a) && (th = ((a) obj).f92706a) != null) {
            throw th;
        }
        throw new IllegalStateException(("Trying to call 'getOrThrow' on a failed channel result: " + obj).toString());
    }

    public static int j(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean k(Object obj) {
        return obj instanceof a;
    }

    public static final boolean l(Object obj) {
        return obj instanceof c;
    }

    public static final boolean m(Object obj) {
        return !(obj instanceof c);
    }

    @NotNull
    public static String n(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f92705a, obj);
    }

    public int hashCode() {
        return j(this.f92705a);
    }

    public final /* synthetic */ Object o() {
        return this.f92705a;
    }

    @NotNull
    public String toString() {
        return n(this.f92705a);
    }
}
