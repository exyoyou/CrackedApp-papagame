package kotlinx.coroutines.scheduling;

import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public abstract class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    public long f93688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    @NotNull
    public k f93689c;

    public j(long j10, @NotNull k kVar) {
        this.f93688b = j10;
        this.f93689c = kVar;
    }

    public final int b() {
        return this.f93689c.s();
    }

    public j() {
        this(0L, n.f93700i);
    }
}
