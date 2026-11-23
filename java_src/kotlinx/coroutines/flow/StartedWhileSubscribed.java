package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nSharingStarted.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharingStarted.kt\nkotlinx/coroutines/flow/StartedWhileSubscribed\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,205:1\n1#2:206\n*E\n"})
final class StartedWhileSubscribed implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f93220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f93221c;

    public StartedWhileSubscribed(long j10, long j11) {
        this.f93220b = j10;
        this.f93221c = j11;
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(("stopTimeout(" + j10 + " ms) cannot be negative").toString());
        }
        if (j11 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j11 + " ms) cannot be negative").toString());
    }

    @Override // kotlinx.coroutines.flow.r
    @NotNull
    public e<SharingCommand> a(@NotNull u<Integer> uVar) {
        return g.g0(g.k0(g.c2(uVar, new StartedWhileSubscribed$command$1(this, null)), new StartedWhileSubscribed$command$2(null)));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof StartedWhileSubscribed) {
            StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
            if (this.f93220b == startedWhileSubscribed.f93220b && this.f93221c == startedWhileSubscribed.f93221c) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return (s5.a.a(this.f93220b) * 31) + s5.a.a(this.f93221c);
    }

    @NotNull
    public String toString() {
        List listCreateListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder(2);
        if (this.f93220b > 0) {
            listCreateListBuilder.add("stopTimeout=" + this.f93220b + "ms");
        }
        if (this.f93221c < Long.MAX_VALUE) {
            listCreateListBuilder.add("replayExpiration=" + this.f93221c + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt__CollectionsJVMKt.build(listCreateListBuilder), null, null, null, 0, null, null, 63, null) + ')';
    }
}
