package kotlinx.coroutines.scheduling;

import kotlin.jvm.JvmField;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class m extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Runnable f93691d;

    public m(@NotNull Runnable runnable, long j10, @NotNull k kVar) {
        super(j10, kVar);
        this.f93691d = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f93691d.run();
        } finally {
            this.f93689c.j();
        }
    }

    @NotNull
    public String toString() {
        return "Task[" + o0.a(this.f93691d) + '@' + o0.b(this.f93691d) + ", " + this.f93688b + ", " + this.f93689c + ']';
    }
}
