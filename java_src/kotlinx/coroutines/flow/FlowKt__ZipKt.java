package kotlinx.coroutines.flow;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,328:1\n268#1,3:330\n268#1,3:333\n257#1:336\n259#1:338\n268#1,3:339\n257#1:342\n259#1:344\n268#1,3:345\n257#1:348\n259#1:350\n268#1,3:351\n105#2:329\n105#2:337\n105#2:343\n105#2:349\n105#2:354\n105#2:355\n105#2:358\n37#3,2:356\n37#3,2:359\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n71#1:330,3\n99#1:333,3\n115#1:336\n115#1:338\n134#1:339,3\n152#1:342\n152#1:344\n173#1:345,3\n193#1:348\n193#1:350\n216#1:351,3\n28#1:329\n115#1:337\n152#1:343\n193#1:349\n233#1:354\n257#1:355\n284#1:358\n283#1:356,2\n302#1:359,2\n*E\n"})
final /* synthetic */ class FlowKt__ZipKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,111:1\n29#2,2:112\n*E\n"})
    public static final class a<R> implements e<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f93173b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ e f93174c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function3 f93175d;

        public a(e eVar, e eVar2, Function3 function3) {
            this.f93173b = eVar;
            this.f93174c = eVar2;
            this.f93175d = function3;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull f<? super R> fVar, @NotNull Continuation<? super Unit> continuation) {
            Object objA = CombineKt.a(fVar, new e[]{this.f93173b, this.f93174c}, FlowKt__ZipKt.r(), new FlowKt__ZipKt$combine$1$1(this.f93175d, null), continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
    }

    public static final /* synthetic */ <T, R> e<R> b(Iterable<? extends e<? extends T>> iterable, Function2<? super T[], ? super Continuation<? super R>, ? extends Object> function2) {
        e[] eVarArr = (e[]) CollectionsKt___CollectionsKt.toList(iterable).toArray(new e[0]);
        Intrinsics.needClassReification();
        return new FlowKt__ZipKt$combine$$inlined$unsafeFlow$3(eVarArr, function2);
    }

    @NotNull
    public static final <T1, T2, R> e<R> c(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return g.J0(eVar, eVar2, function3);
    }

    @NotNull
    public static final <T1, T2, T3, R> e<R> d(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull e<? extends T3> eVar3, @BuilderInference @NotNull final Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        final e[] eVarArr = {eVar, eVar2, eVar3};
        return new e<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/f;", "", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 9, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2", f = "Zip.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION, 258}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,328:1\n116#2,4:329\n*E\n"})
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<f<? super R>, Object[], Continuation<? super Unit>, Object> {
                final /* synthetic */ Function4 $transform$inlined;
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function4 function4) {
                    super(3, continuation);
                    this.$transform$inlined = function4;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    f fVar;
                    Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            fVar = (f) this.L$0;
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
                    fVar = (f) this.L$0;
                    Object[] objArr = (Object[]) this.L$1;
                    Function4 function4 = this.$transform$inlined;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    this.L$0 = fVar;
                    this.label = 1;
                    InlineMarker.mark(6);
                    obj = function4.invoke(obj2, obj3, obj4, this);
                    InlineMarker.mark(7);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.L$0 = null;
                    this.label = 2;
                    if (fVar.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                public final Object invoke(@NotNull f<? super R> fVar, @NotNull Object[] objArr, @Nullable Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.$transform$inlined);
                    anonymousClass2.L$0 = fVar;
                    anonymousClass2.L$1 = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }
            }

            @Override // kotlinx.coroutines.flow.e
            @Nullable
            public Object a(@NotNull f fVar, @NotNull Continuation continuation) {
                Object objA = CombineKt.a(fVar, eVarArr, FlowKt__ZipKt.r(), new AnonymousClass2(null, function4), continuation);
                return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> e<R> e(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull e<? extends T3> eVar3, @NotNull e<? extends T4> eVar4, @NotNull final Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        final e[] eVarArr = {eVar, eVar2, eVar3, eVar4};
        return new e<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/f;", "", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 9, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2", f = "Zip.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION, 258}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,328:1\n153#2,5:329\n*E\n"})
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<f<? super R>, Object[], Continuation<? super Unit>, Object> {
                final /* synthetic */ Function5 $transform$inlined;
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function5 function5) {
                    super(3, continuation);
                    this.$transform$inlined = function5;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    f fVar;
                    Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            fVar = (f) this.L$0;
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
                    fVar = (f) this.L$0;
                    Object[] objArr = (Object[]) this.L$1;
                    Function5 function5 = this.$transform$inlined;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    Object obj5 = objArr[3];
                    this.L$0 = fVar;
                    this.label = 1;
                    InlineMarker.mark(6);
                    obj = function5.invoke(obj2, obj3, obj4, obj5, this);
                    InlineMarker.mark(7);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.L$0 = null;
                    this.label = 2;
                    if (fVar.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                public final Object invoke(@NotNull f<? super R> fVar, @NotNull Object[] objArr, @Nullable Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.$transform$inlined);
                    anonymousClass2.L$0 = fVar;
                    anonymousClass2.L$1 = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }
            }

            @Override // kotlinx.coroutines.flow.e
            @Nullable
            public Object a(@NotNull f fVar, @NotNull Continuation continuation) {
                Object objA = CombineKt.a(fVar, eVarArr, FlowKt__ZipKt.r(), new AnonymousClass2(null, function5), continuation);
                return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> e<R> f(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull e<? extends T3> eVar3, @NotNull e<? extends T4> eVar4, @NotNull e<? extends T5> eVar5, @NotNull final Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        final e[] eVarArr = {eVar, eVar2, eVar3, eVar4, eVar5};
        return new e<R>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¨\u0006\u0006"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/f;", "", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 9, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2", f = "Zip.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION, 258}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,328:1\n194#2,6:329\n*E\n"})
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<f<? super R>, Object[], Continuation<? super Unit>, Object> {
                final /* synthetic */ Function6 $transform$inlined;
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function6 function6) {
                    super(3, continuation);
                    this.$transform$inlined = function6;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    f fVar;
                    Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            fVar = (f) this.L$0;
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
                    fVar = (f) this.L$0;
                    Object[] objArr = (Object[]) this.L$1;
                    Function6 function6 = this.$transform$inlined;
                    Object obj2 = objArr[0];
                    Object obj3 = objArr[1];
                    Object obj4 = objArr[2];
                    Object obj5 = objArr[3];
                    Object obj6 = objArr[4];
                    this.L$0 = fVar;
                    this.label = 1;
                    InlineMarker.mark(6);
                    obj = function6.invoke(obj2, obj3, obj4, obj5, obj6, this);
                    InlineMarker.mark(7);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.L$0 = null;
                    this.label = 2;
                    if (fVar.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                public final Object invoke(@NotNull f<? super R> fVar, @NotNull Object[] objArr, @Nullable Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.$transform$inlined);
                    anonymousClass2.L$0 = fVar;
                    anonymousClass2.L$1 = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }
            }

            @Override // kotlinx.coroutines.flow.e
            @Nullable
            public Object a(@NotNull f fVar, @NotNull Continuation continuation) {
                Object objA = CombineKt.a(fVar, eVarArr, FlowKt__ZipKt.r(), new AnonymousClass2(null, function6), continuation);
                return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
            }
        };
    }

    public static final /* synthetic */ <T, R> e<R> g(e<? extends T>[] eVarArr, Function2<? super T[], ? super Continuation<? super R>, ? extends Object> function2) {
        Intrinsics.needClassReification();
        return new FlowKt__ZipKt$combine$$inlined$unsafeFlow$2(eVarArr, function2);
    }

    public static final /* synthetic */ <T, R> e<R> h(Iterable<? extends e<? extends T>> iterable, @BuilderInference Function3<? super f<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3) {
        e[] eVarArr = (e[]) CollectionsKt___CollectionsKt.toList(iterable).toArray(new e[0]);
        Intrinsics.needClassReification();
        return g.I0(new FlowKt__ZipKt$combineTransform$7(eVarArr, function3, null));
    }

    @NotNull
    public static final <T1, T2, R> e<R> i(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @BuilderInference @NotNull Function4<? super f<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return g.I0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$2(new e[]{eVar, eVar2}, null, function4));
    }

    @NotNull
    public static final <T1, T2, T3, R> e<R> j(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull e<? extends T3> eVar3, @BuilderInference @NotNull Function5<? super f<? super R>, ? super T1, ? super T2, ? super T3, ? super Continuation<? super Unit>, ? extends Object> function5) {
        return g.I0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3(new e[]{eVar, eVar2, eVar3}, null, function5));
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> e<R> k(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull e<? extends T3> eVar3, @NotNull e<? extends T4> eVar4, @BuilderInference @NotNull Function6<? super f<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super Unit>, ? extends Object> function6) {
        return g.I0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$4(new e[]{eVar, eVar2, eVar3, eVar4}, null, function6));
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> e<R> l(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull e<? extends T3> eVar3, @NotNull e<? extends T4> eVar4, @NotNull e<? extends T5> eVar5, @BuilderInference @NotNull Function7<? super f<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super Unit>, ? extends Object> function7) {
        return g.I0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$5(new e[]{eVar, eVar2, eVar3, eVar4, eVar5}, null, function7));
    }

    public static final /* synthetic */ <T, R> e<R> m(e<? extends T>[] eVarArr, @BuilderInference Function3<? super f<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3) {
        Intrinsics.needClassReification();
        return g.I0(new FlowKt__ZipKt$combineTransform$6(eVarArr, function3, null));
    }

    private static final /* synthetic */ <T, R> e<R> n(e<? extends T>[] eVarArr, @BuilderInference Function3<? super f<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3) {
        Intrinsics.needClassReification();
        return g.I0(new FlowKt__ZipKt$combineTransformUnsafe$1(eVarArr, function3, null));
    }

    private static final /* synthetic */ <T, R> e<R> o(e<? extends T>[] eVarArr, Function2<? super T[], ? super Continuation<? super R>, ? extends Object> function2) {
        Intrinsics.needClassReification();
        return new FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1(eVarArr, function2);
    }

    @JvmName(name = "flowCombine")
    @NotNull
    public static final <T1, T2, R> e<R> p(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new a(eVar, eVar2, function3);
    }

    @JvmName(name = "flowCombineTransform")
    @NotNull
    public static final <T1, T2, R> e<R> q(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @BuilderInference @NotNull Function4<? super f<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return g.I0(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1(new e[]{eVar, eVar2}, null, function4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Function0<T[]> r() {
        return new Function0() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$nullArrayFactory$1
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Void invoke() {
                return null;
            }
        };
    }

    @NotNull
    public static final <T1, T2, R> e<R> s(@NotNull e<? extends T1> eVar, @NotNull e<? extends T2> eVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return CombineKt.b(eVar, eVar2, function3);
    }
}
