package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface s1 {

    public static final class a implements s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final Function1<Throwable, Unit> f93633b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Function1<? super Throwable, Unit> function1) {
            this.f93633b = function1;
        }

        @Override // kotlinx.coroutines.s1
        public void a(@Nullable Throwable th) {
            this.f93633b.invoke(th);
        }

        @NotNull
        public String toString() {
            return "InternalCompletionHandler.UserSupplied[" + o0.a(this.f93633b) + '@' + o0.b(this) + ']';
        }
    }

    void a(@Nullable Throwable th);
}
