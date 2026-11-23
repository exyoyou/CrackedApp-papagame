package kotlinx.coroutines;

import kotlin.PublishedApi;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public class x1 extends JobSupport implements z {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f93848d;

    public x1(@Nullable v1 v1Var) {
        super(true);
        Q0(v1Var);
        this.f93848d = F1();
    }

    private final boolean F1() {
        JobSupport jobSupportH;
        t tVarI0 = I0();
        u uVar = tVarI0 instanceof u ? (u) tVarI0 : null;
        if (uVar != null && (jobSupportH = uVar.H()) != null) {
            while (!jobSupportH.C0()) {
                t tVarI1 = jobSupportH.I0();
                u uVar2 = tVarI1 instanceof u ? (u) tVarI1 : null;
                if (uVar2 == null || (jobSupportH = uVar2.H()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean C0() {
        return this.f93848d;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean F0() {
        return true;
    }

    @Override // kotlinx.coroutines.z
    public boolean c(@NotNull Throwable th) {
        return b1(new b0(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.z
    public boolean complete() {
        return b1(Unit.INSTANCE);
    }
}
