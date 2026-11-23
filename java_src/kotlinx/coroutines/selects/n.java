package kotlinx.coroutines.selects;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.PublishedApi;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1855#2,2:66\n*S KotlinDebug\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n*L\n60#1:66,2\n*E\n"})
public class n<R> extends SelectImplementation<R> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final List<SelectImplementation<R>.a> f93774h;

    public n(@NotNull CoroutineContext coroutineContext) {
        super(coroutineContext);
        this.f93774h = new ArrayList();
    }

    @PublishedApi
    static /* synthetic */ <R> Object P(n<R> nVar, Continuation<? super R> continuation) {
        nVar.Q();
        return super.w(continuation);
    }

    private final void Q() {
        try {
            Collections.shuffle(this.f93774h);
            Iterator<T> it2 = this.f93774h.iterator();
            while (it2.hasNext()) {
                SelectImplementation.I(this, (SelectImplementation.a) it2.next(), false, 1, null);
            }
            this.f93774h.clear();
        } catch (Throwable th) {
            this.f93774h.clear();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.selects.SelectImplementation, kotlinx.coroutines.selects.b
    public void b(@NotNull c cVar, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f93774h.add(new SelectImplementation.a(cVar.d(), cVar.c(), cVar.b(), SelectKt.l(), function1, cVar.a()));
    }

    @Override // kotlinx.coroutines.selects.SelectImplementation, kotlinx.coroutines.selects.b
    public <P, Q> void d(@NotNull g<? super P, ? extends Q> gVar, P p10, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f93774h.add(new SelectImplementation.a(gVar.d(), gVar.c(), gVar.b(), p10, function2, gVar.a()));
    }

    @Override // kotlinx.coroutines.selects.SelectImplementation, kotlinx.coroutines.selects.b
    public <Q> void j(@NotNull e<? extends Q> eVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f93774h.add(new SelectImplementation.a(eVar.d(), eVar.c(), eVar.b(), null, function2, eVar.a()));
    }

    @Override // kotlinx.coroutines.selects.SelectImplementation
    @PublishedApi
    @Nullable
    public Object w(@NotNull Continuation<? super R> continuation) {
        return P(this, continuation);
    }
}
