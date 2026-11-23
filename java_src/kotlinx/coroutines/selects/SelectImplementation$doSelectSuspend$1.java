package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", i = {0}, l = {438, 441}, m = "doSelectSuspend", n = {"this"}, s = {"L$0"})
final class SelectImplementation$doSelectSuspend$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    /* synthetic */ Object f93739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ SelectImplementation<R> f93740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f93741e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SelectImplementation$doSelectSuspend$1(SelectImplementation<R> selectImplementation, Continuation<? super SelectImplementation$doSelectSuspend$1> continuation) {
        super(continuation);
        this.f93740d = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f93739c = obj;
        this.f93741e |= Integer.MIN_VALUE;
        return this.f93740d.y(this);
    }
}
