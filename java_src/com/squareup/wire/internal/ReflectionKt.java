package com.squareup.wire.internal;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class ReflectionKt {
    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> x<M, B> a(@NotNull final Class<M> messageType, @Nullable String str, @NotNull Syntax syntax, @Nullable ClassLoader classLoader, boolean z10) {
        Intrinsics.checkNotNullParameter(messageType, "messageType");
        Intrinsics.checkNotNullParameter(syntax, "syntax");
        final Class clsE = e(messageType);
        Function0<B> function0 = new Function0<B>() { // from class: com.squareup.wire.internal.ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TB; */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Message.a invoke() throws IllegalAccessException, InstantiationException {
                if (clsE.isAssignableFrom(com.squareup.wire.m.class)) {
                    return new com.squareup.wire.m(messageType);
                }
                B bNewInstance = clsE.newInstance();
                Intrinsics.checkNotNull(bNewInstance);
                return (Message.a) bNewInstance;
            }
        };
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Field[] declaredFields = messageType.getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
        for (Field field : declaredFields) {
            WireField wireField = (WireField) field.getAnnotation(WireField.class);
            if (wireField != null) {
                Integer numValueOf = Integer.valueOf(wireField.tag());
                Intrinsics.checkNotNull(field);
                linkedHashMap.put(numValueOf, new FieldBinding(wireField, messageType, field, clsE, z10, classLoader));
            } else if (Intrinsics.areEqual(field.getType(), com.squareup.wire.t.class)) {
                Intrinsics.checkNotNull(field);
                for (com.squareup.wire.t.a<?> aVar : f(field)) {
                    linkedHashMap.put(Integer.valueOf(aVar.e()), new w(field, clsE, aVar, z10));
                }
            }
        }
        KClass kotlinClass = JvmClassMappingKt.getKotlinClass(messageType);
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        return new x<>(new y(kotlinClass, clsE, function0, mapUnmodifiableMap, str, syntax));
    }

    @NotNull
    public static final <M extends Message<M, B>, B extends Message.a<M, B>> x<M, B> b(@NotNull Class<M> messageType, boolean z10, @Nullable ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(messageType, "messageType");
        ProtoAdapter protoAdapterB = ProtoAdapter.f82266i.b(messageType);
        return a(messageType, protoAdapterB.B(), protoAdapterB.A(), classLoader, z10);
    }

    public static /* synthetic */ x c(Class cls, String str, Syntax syntax, ClassLoader classLoader, boolean z10, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            classLoader = cls.getClassLoader();
        }
        if ((i10 & 16) != 0) {
            z10 = false;
        }
        return a(cls, str, syntax, classLoader, z10);
    }

    public static /* synthetic */ x d(Class cls, boolean z10, ClassLoader classLoader, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            classLoader = cls.getClassLoader();
        }
        return b(cls, z10, classLoader);
    }

    private static final <M extends Message<M, B>, B extends Message.a<M, B>> Class<B> e(Class<M> cls) {
        Object objM50constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Class<?> cls2 = Class.forName(cls.getName() + "$Builder");
            Intrinsics.checkNotNull(cls2, "null cannot be cast to non-null type java.lang.Class<B of com.squareup.wire.internal.ReflectionKt.getBuilderType$lambda$0>");
            objM50constructorimpl = Result.m50constructorimpl(cls2);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m56isFailureimpl(objM50constructorimpl)) {
            objM50constructorimpl = null;
        }
        Class<B> cls3 = (Class) objM50constructorimpl;
        return cls3 == null ? com.squareup.wire.m.class : cls3;
    }

    private static final <M extends Message<M, B>, B extends Message.a<M, B>> Set<com.squareup.wire.t.a<?>> f(Field field) throws IllegalAccessException, NoSuchFieldException {
        Class<?> declaringClass = field.getDeclaringClass();
        String name = field.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        Field declaredField = declaringClass.getDeclaredField(n.e(name));
        declaredField.setAccessible(true);
        Object obj = declaredField.get(null);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.Set<com.squareup.wire.OneOf.Key<*>>");
        return (Set) obj;
    }
}
