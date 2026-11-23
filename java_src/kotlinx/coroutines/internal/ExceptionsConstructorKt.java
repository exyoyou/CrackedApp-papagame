package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1#2:113\n11065#3:114\n11400#3,3:115\n12634#3,3:132\n1963#4,14:118\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n41#1:114\n41#1:115,3\n78#1:132,3\n59#1:118,14\n*E\n"})
public final class ExceptionsConstructorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93451a = e(Throwable.class, -1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final l f93452b;

    static {
        l lVar;
        try {
            lVar = p.a() ? c1.f93484a : d.f93487a;
        } catch (Throwable unused) {
            lVar = c1.f93484a;
        }
        f93452b = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> Function1<Throwable, Throwable> b(Class<E> cls) {
        Object next;
        Function1<Throwable, Throwable> function1;
        Pair pair;
        ExceptionsConstructorKt$createConstructor$nullResult$1 exceptionsConstructorKt$createConstructor$nullResult$1 = new Function1() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$nullResult$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Void invoke(@NotNull Throwable th) {
                return null;
            }
        };
        if (f93451a != e(cls, 0)) {
            return exceptionsConstructorKt$createConstructor$nullResult$1;
        }
        Constructor<?>[] constructors = cls.getConstructors();
        ArrayList arrayList = new ArrayList(constructors.length);
        int length = constructors.length;
        int i10 = 0;
        while (true) {
            next = null;
            if (i10 >= length) {
                break;
            }
            final Constructor<?> constructor = constructors[i10];
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            int length2 = parameterTypes.length;
            if (length2 == 0) {
                pair = TuplesKt.to(f(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final Throwable invoke(@NotNull Throwable th) throws IllegalAccessException, InstantiationException, InvocationTargetException {
                        Object objNewInstance = constructor.newInstance(new Object[0]);
                        Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                        Throwable th2 = (Throwable) objNewInstance;
                        th2.initCause(th);
                        return th2;
                    }
                }), 0);
            } else if (length2 == 1) {
                Class<?> cls2 = parameterTypes[0];
                if (Intrinsics.areEqual(cls2, String.class)) {
                    pair = TuplesKt.to(f(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public final Throwable invoke(@NotNull Throwable th) throws IllegalAccessException, InstantiationException, InvocationTargetException {
                            Object objNewInstance = constructor.newInstance(th.getMessage());
                            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                            Throwable th2 = (Throwable) objNewInstance;
                            th2.initCause(th);
                            return th2;
                        }
                    }), 2);
                } else {
                    pair = Intrinsics.areEqual(cls2, Throwable.class) ? TuplesKt.to(f(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public final Throwable invoke(@NotNull Throwable th) throws IllegalAccessException, InstantiationException, InvocationTargetException {
                            Object objNewInstance = constructor.newInstance(th);
                            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                            return (Throwable) objNewInstance;
                        }
                    }), 1) : TuplesKt.to(null, -1);
                }
            } else if (length2 != 2) {
                pair = TuplesKt.to(null, -1);
            } else {
                pair = (Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) ? TuplesKt.to(f(new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$createConstructor$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final Throwable invoke(@NotNull Throwable th) throws IllegalAccessException, InstantiationException, InvocationTargetException {
                        Object objNewInstance = constructor.newInstance(th.getMessage(), th);
                        Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                        return (Throwable) objNewInstance;
                    }
                }), 3) : TuplesKt.to(null, -1);
            }
            arrayList.add(pair);
            i10++;
        }
        Iterator it2 = arrayList.iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                int iIntValue = ((Number) ((Pair) next).getSecond()).intValue();
                do {
                    Object next2 = it2.next();
                    int iIntValue2 = ((Number) ((Pair) next2).getSecond()).intValue();
                    if (iIntValue < iIntValue2) {
                        next = next2;
                        iIntValue = iIntValue2;
                    }
                } while (it2.hasNext());
            }
        }
        Pair pair2 = (Pair) next;
        return (pair2 == null || (function1 = (Function1) pair2.getFirst()) == null) ? exceptionsConstructorKt$createConstructor$nullResult$1 : function1;
    }

    private static final int c(Class<?> cls, int i10) {
        do {
            int i11 = 0;
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i11++;
                }
            }
            i10 += i11;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i10;
    }

    static /* synthetic */ int d(Class cls, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return c(cls, i10);
    }

    private static final int e(Class<?> cls, int i10) {
        Object objM50constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(Integer.valueOf(d(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        Integer numValueOf = Integer.valueOf(i10);
        if (Result.m56isFailureimpl(objM50constructorimpl)) {
            objM50constructorimpl = numValueOf;
        }
        return ((Number) objM50constructorimpl).intValue();
    }

    private static final Function1<Throwable, Throwable> f(final Function1<? super Throwable, ? extends Throwable> function1) {
        return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstructorKt$safeCtor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Throwable invoke(@NotNull Throwable th) {
                Object objM50constructorimpl;
                Function1<Throwable, Throwable> function2 = function1;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Throwable thInvoke = function2.invoke(th);
                    if (!Intrinsics.areEqual(th.getMessage(), thInvoke.getMessage()) && !Intrinsics.areEqual(thInvoke.getMessage(), th.toString())) {
                        thInvoke = null;
                    }
                    objM50constructorimpl = Result.m50constructorimpl(thInvoke);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th2));
                }
                return (Throwable) (Result.m56isFailureimpl(objM50constructorimpl) ? null : objM50constructorimpl);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E extends Throwable> E g(@NotNull E e10) {
        Object objM50constructorimpl;
        if (!(e10 instanceof kotlinx.coroutines.g0)) {
            return (E) f93452b.a(e10.getClass()).invoke(e10);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(((kotlinx.coroutines.g0) e10).createCopy());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m56isFailureimpl(objM50constructorimpl)) {
            objM50constructorimpl = null;
        }
        return (E) objM50constructorimpl;
    }
}
