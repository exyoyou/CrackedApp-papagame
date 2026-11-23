package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface m extends i2 {

    public static final class a implements m {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final Function1<Throwable, Unit> f93591b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Function1<? super Throwable, Unit> function1) {
            this.f93591b = function1;
        }

        @Override // kotlinx.coroutines.m
        public void a(@Nullable Throwable th) {
            this.f93591b.invoke(th);
        }

        @NotNull
        public String toString() {
            return "CancelHandler.UserSupplied[" + o0.a(this.f93591b) + '@' + o0.b(this) + ']';
        }
    }

    void a(@Nullable Throwable th);
}
