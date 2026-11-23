package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@IgnoreJRERequirement
final class d extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final d f93487a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final a f93488b = new a();

    public static final class a extends ClassValue<Function1<? super Throwable, ? extends Throwable>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ClassValue
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Function1<Throwable, Throwable> computeValue(@Nullable Class<?> cls) {
            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<out kotlin.Throwable>");
            return ExceptionsConstructorKt.b(cls);
        }
    }

    private d() {
    }

    @Override // kotlinx.coroutines.internal.l
    @NotNull
    public Function1<Throwable, Throwable> a(@NotNull Class<? extends Throwable> cls) {
        return (Function1) f93488b.get(cls);
    }
}
