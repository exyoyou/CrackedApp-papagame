package com.join.kotlin.base.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.h;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.s2;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J4\u0010\u0004\u001a\u00020\u00052'\u0010\u0006\u001a#\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\b\u000b¢\u0006\u0002\u0010\fJ4\u0010\r\u001a\u00020\u00052'\u0010\u0006\u001a#\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\b\u000b¢\u0006\u0002\u0010\fJ<\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102'\u0010\u0006\u001a#\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\b\u000b¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0005H\u0014¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "launchOnUI", "", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;)V", "runUi", "delay", "time", "", "(JLkotlin/jvm/functions/Function2;)V", "onCleared", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class BaseViewModel extends ViewModel {

    /* JADX INFO: renamed from: com.join.kotlin.base.viewmodel.BaseViewModel$delay$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.viewmodel.BaseViewModel$delay$1", f = "BaseViewModel.kt", i = {}, l = {43}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<l0, Continuation<? super Unit>, Object> $block;
        final /* synthetic */ long $time;
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.base.viewmodel.BaseViewModel$delay$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.base.viewmodel.BaseViewModel$delay$1$1", f = "BaseViewModel.kt", i = {0}, l = {45, 46}, m = "invokeSuspend", n = {"$this$withContext"}, s = {"L$0"})
        static final class C06501 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function2<l0, Continuation<? super Unit>, Object> $block;
            final /* synthetic */ long $time;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C06501(long j10, Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C06501> continuation) {
                super(2, continuation);
                this.$time = j10;
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C06501 c06501 = new C06501(this.$time, this.$block, continuation);
                c06501.L$0 = obj;
                return c06501;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                l0 l0Var;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.label;
                try {
                    if (i10 != 0) {
                        if (i10 == 1) {
                            l0Var = (l0) this.L$0;
                            ResultKt.throwOnFailure(obj);
                        } else {
                            if (i10 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                    ResultKt.throwOnFailure(obj);
                    l0Var = (l0) this.L$0;
                    long j10 = this.$time;
                    this.L$0 = l0Var;
                    this.label = 1;
                    if (DelayKt.b(j10, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Function2<l0, Continuation<? super Unit>, Object> function2 = this.$block;
                    this.L$0 = null;
                    this.label = 2;
                    if (function2.invoke(l0Var, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06501) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(long j10, Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$time = j10;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$time, this.$block, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineContext coroutineContextPlus = z0.c().plus(s2.c(null, 1, null));
                C06501 c06501 = new C06501(this.$time, this.$block, null);
                this.label = 1;
                if (h.h(coroutineContextPlus, c06501, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.base.viewmodel.BaseViewModel$launchOnUI$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.viewmodel.BaseViewModel$launchOnUI$1", f = "BaseViewModel.kt", i = {}, l = {20}, m = "invokeSuspend", n = {}, s = {})
    static final class C13001 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<l0, Continuation<? super Unit>, Object> $block;
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.base.viewmodel.BaseViewModel$launchOnUI$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.base.viewmodel.BaseViewModel$launchOnUI$1$1", f = "BaseViewModel.kt", i = {}, l = {22}, m = "invokeSuspend", n = {}, s = {})
        static final class C06511 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function2<l0, Continuation<? super Unit>, Object> $block;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C06511(Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C06511> continuation) {
                super(2, continuation);
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C06511 c06511 = new C06511(this.$block, continuation);
                c06511.L$0 = obj;
                return c06511;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.label;
                try {
                    if (i10 == 0) {
                        ResultKt.throwOnFailure(obj);
                        l0 l0Var = (l0) this.L$0;
                        Function2<l0, Continuation<? super Unit>, Object> function2 = this.$block;
                        this.label = 1;
                        if (function2.invoke(l0Var, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06511) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C13001(Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C13001> continuation) {
            super(2, continuation);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13001(this.$block, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineContext coroutineContextPlus = z0.c().plus(s2.c(null, 1, null));
                C06511 c06511 = new C06511(this.$block, null);
                this.label = 1;
                if (h.h(coroutineContextPlus, c06511, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13001) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.base.viewmodel.BaseViewModel$runUi$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.viewmodel.BaseViewModel$runUi$1", f = "BaseViewModel.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
    static final class C13011 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<l0, Continuation<? super Unit>, Object> $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C13011(Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C13011> continuation) {
            super(2, continuation);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C13011 c13011 = new C13011(this.$block, continuation);
            c13011.L$0 = obj;
            return c13011;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    l0 l0Var = (l0) this.L$0;
                    Function2<l0, Continuation<? super Unit>, Object> function2 = this.$block;
                    this.label = 1;
                    if (function2.invoke(l0Var, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13011) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public final void delay(long time, @NotNull Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        j.f(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(time, block, null), 3, null);
    }

    public final void launchOnUI(@NotNull Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        j.f(ViewModelKt.getViewModelScope(this), null, null, new C13001(block, null), 3, null);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        m0.f(ViewModelKt.getViewModelScope(this), null, 1, null);
    }

    public final void runUi(@NotNull Function2<? super l0, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        j.f(ViewModelKt.getViewModelScope(this), null, null, new C13011(block, null), 3, null);
    }
}
