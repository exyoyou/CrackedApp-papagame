package com.squareup.wire.internal;

import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireField;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nFieldBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FieldBinding.kt\ncom/squareup/wire/internal/FieldBinding\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,173:1\n1#2:174\n*E\n"})
public final class FieldBinding<M extends Message<M, B>, B extends Message.a<M, B>> extends FieldOrOneOfBinding<M, B> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NotNull
    public static final a f82337p = new a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NotNull
    private static final Regex f82338q = new Regex("^is[^a-z].*$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Field f82339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f82340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final ClassLoader f82341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final WireField.Label f82342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final String f82343f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final String f82344g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final String f82345h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f82346i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private final String f82347j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    private final String f82348k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f82349l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NotNull
    private final Function2<B, Object, Unit> f82350m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NotNull
    private final Function1<B, Object> f82351n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotNull
    private final Function1<M, Object> f82352o;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public /* synthetic */ FieldBinding(WireField wireField, Class cls, Field field, Class cls2, boolean z10, ClassLoader classLoader, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(wireField, cls, field, cls2, z10, (i10 & 32) != 0 ? cls.getClassLoader() : classLoader);
    }

    private final Function1<B, Object> v(Class<?> cls, final WireField wireField) {
        if (cls.isAssignableFrom(com.squareup.wire.m.class)) {
            return (Function1<B, Object>) new Function1<B, Object>() { // from class: com.squareup.wire.internal.FieldBinding$getBuilderGetter$1
                {
                    super(1);
                }

                /* JADX WARN: Incorrect types in method signature: (TB;)Ljava/lang/Object; */
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull Message.a builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return ((com.squareup.wire.m) builder).o(wireField);
                }
            };
        }
        try {
            final Field field = cls.getField(h());
            return (Function1<B, Object>) new Function1<B, Object>() { // from class: com.squareup.wire.internal.FieldBinding$getBuilderGetter$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Incorrect types in method signature: (TB;)Ljava/lang/Object; */
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull Message.a builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return field.get(builder);
                }
            };
        } catch (NoSuchFieldException unused) {
            throw new AssertionError("No builder field " + cls.getName() + external.org.apache.commons.lang3.d.f90941a + h());
        }
    }

    private final Function2<B, Object, Unit> w(Class<?> cls, final WireField wireField) {
        Function function;
        if (cls.isAssignableFrom(com.squareup.wire.m.class)) {
            return (Function2<B, Object, Unit>) new Function2<B, Object, Unit>() { // from class: com.squareup.wire.internal.FieldBinding$getBuilderSetter$1
                {
                    super(2);
                }

                /* JADX WARN: Incorrect types in method signature: (TB;Ljava/lang/Object;)V */
                public final void a(@NotNull Message.a builder, @Nullable Object obj) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    ((com.squareup.wire.m) builder).p(wireField, obj);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2) {
                    a((Message.a) obj, obj2);
                    return Unit.INSTANCE;
                }
            };
        }
        if (wireField.label().isOneOf()) {
            Class<?> type = this.f82339b.getType();
            try {
                final Method method = cls.getMethod(h(), type);
                function = new Function2<B, Object, Unit>() { // from class: com.squareup.wire.internal.FieldBinding$getBuilderSetter$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    /* JADX WARN: Incorrect types in method signature: (TB;Ljava/lang/Object;)V */
                    public final void a(@NotNull Message.a builder, @Nullable Object obj) throws IllegalAccessException, InvocationTargetException {
                        Intrinsics.checkNotNullParameter(builder, "builder");
                        method.invoke(builder, obj);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2) throws IllegalAccessException, InvocationTargetException {
                        a((Message.a) obj, obj2);
                        return Unit.INSTANCE;
                    }
                };
            } catch (NoSuchMethodException unused) {
                throw new AssertionError("No builder method " + cls.getName() + external.org.apache.commons.lang3.d.f90941a + h() + '(' + type.getName() + ')');
            }
        } else {
            try {
                final Field field = cls.getField(h());
                function = new Function2<B, Object, Unit>() { // from class: com.squareup.wire.internal.FieldBinding$getBuilderSetter$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    /* JADX WARN: Incorrect types in method signature: (TB;Ljava/lang/Object;)V */
                    public final void a(@NotNull Message.a builder, @Nullable Object obj) throws IllegalAccessException {
                        Intrinsics.checkNotNullParameter(builder, "builder");
                        field.set(builder, obj);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2) throws IllegalAccessException {
                        a((Message.a) obj, obj2);
                        return Unit.INSTANCE;
                    }
                };
            } catch (NoSuchFieldException unused2) {
                throw new AssertionError("No builder field " + cls.getName() + external.org.apache.commons.lang3.d.f90941a + h());
            }
        }
        return (Function2<B, Object, Unit>) function;
    }

    private final Function1<M, Object> y(Class<M> cls) throws NoSuchMethodException {
        if (!Modifier.isPrivate(this.f82339b.getModifiers())) {
            return (Function1<M, Object>) new Function1<M, Object>(this) { // from class: com.squareup.wire.internal.FieldBinding$getInstanceGetter$2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ FieldBinding<M, B> f82359b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.f82359b = this;
                }

                /* JADX WARN: Incorrect types in method signature: (TM;)Ljava/lang/Object; */
                @Override // kotlin.jvm.functions.Function1
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull Message instance) {
                    Intrinsics.checkNotNullParameter(instance, "instance");
                    return ((FieldBinding) this.f82359b).f82339b.get(instance);
                }
            };
        }
        String name = this.f82339b.getName();
        Regex regex = f82338q;
        Intrinsics.checkNotNull(name);
        if (!regex.matches(name)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("get");
            if (name.length() > 0) {
                StringBuilder sb3 = new StringBuilder();
                String strValueOf = String.valueOf(name.charAt(0));
                Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                sb3.append((Object) upperCase);
                String strSubstring = name.substring(1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                sb3.append(strSubstring);
                name = sb3.toString();
            }
            sb2.append(name);
            name = sb2.toString();
        }
        final Method method = cls.getMethod(name, new Class[0]);
        return (Function1<M, Object>) new Function1<M, Object>() { // from class: com.squareup.wire.internal.FieldBinding$getInstanceGetter$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Incorrect types in method signature: (TM;)Ljava/lang/Object; */
            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull Message instance) {
                Intrinsics.checkNotNullParameter(instance, "instance");
                return method.invoke(instance, new Object[0]);
            }
        };
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void s(@NotNull B builder, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (g().isRepeated()) {
            Object objE = e(builder);
            if (TypeIntrinsics.isMutableList(objE)) {
                Intrinsics.checkNotNull(objE, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.Any>");
                TypeIntrinsics.asMutableList(objE).add(value);
                return;
            } else if (objE instanceof List) {
                List mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) objE);
                mutableList.add(value);
                r(builder, mutableList);
                return;
            } else {
                throw new ClassCastException("Expected a list type, got " + (objE != null ? objE.getClass() : null) + external.org.apache.commons.lang3.d.f90941a);
            }
        }
        if (!(this.f82347j.length() > 0)) {
            r(builder, value);
            return;
        }
        Object objE2 = e(builder);
        if (TypeIntrinsics.isMutableMap(objE2)) {
            ((Map) objE2).putAll((Map) value);
            return;
        }
        if (objE2 instanceof Map) {
            Map mutableMap = MapsKt__MapsKt.toMutableMap((Map) objE2);
            mutableMap.putAll((Map) value);
            r(builder, mutableMap);
        } else {
            throw new ClassCastException("Expected a map type, got " + (objE2 != null ? objE2.getClass() : null) + external.org.apache.commons.lang3.d.f90941a);
        }
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public String d() {
        return this.f82345h;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public ProtoAdapter<?> f() {
        return ProtoAdapter.f82266i.d(this.f82347j, this.f82341d);
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public WireField.Label g() {
        return this.f82342e;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public String h() {
        return this.f82343f;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean i() {
        return this.f82349l;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public ProtoAdapter<?> j() {
        return ProtoAdapter.f82266i.d(this.f82348k, this.f82341d);
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public int k() {
        return this.f82346i;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @NotNull
    public String l() {
        return this.f82344g;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean m() {
        return this.f82340c;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean n() {
        return this.f82347j.length() > 0;
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    public boolean o() {
        KClass<?> type = j().getType();
        Class javaObjectType = type != null ? JvmClassMappingKt.getJavaObjectType(type) : null;
        Intrinsics.checkNotNull(javaObjectType);
        return Message.class.isAssignableFrom(javaObjectType);
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @Nullable
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public Object a(@NotNull M message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return this.f82352o.invoke(message);
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    @Nullable
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public Object e(@NotNull B builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return this.f82351n.invoke(builder);
    }

    @Override // com.squareup.wire.internal.FieldOrOneOfBinding
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void r(@NotNull B builder, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f82350m.invoke(builder, obj);
    }

    public FieldBinding(@NotNull WireField wireField, @NotNull Class<M> messageType, @NotNull Field messageField, @NotNull Class<B> builderType, boolean z10, @Nullable ClassLoader classLoader) {
        String strDeclaredName;
        Intrinsics.checkNotNullParameter(wireField, "wireField");
        Intrinsics.checkNotNullParameter(messageType, "messageType");
        Intrinsics.checkNotNullParameter(messageField, "messageField");
        Intrinsics.checkNotNullParameter(builderType, "builderType");
        this.f82339b = messageField;
        this.f82340c = z10;
        this.f82341d = classLoader;
        this.f82342e = wireField.label();
        String name = messageField.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        this.f82343f = name;
        this.f82344g = wireField.jsonName();
        if (wireField.declaredName().length() == 0) {
            strDeclaredName = messageField.getName();
            Intrinsics.checkNotNullExpressionValue(strDeclaredName, "getName(...)");
        } else {
            strDeclaredName = wireField.declaredName();
        }
        this.f82345h = strDeclaredName;
        this.f82346i = wireField.tag();
        this.f82347j = wireField.keyAdapter();
        this.f82348k = wireField.adapter();
        this.f82349l = wireField.redacted();
        this.f82350m = w(builderType, wireField);
        this.f82351n = v(builderType, wireField);
        this.f82352o = y(messageType);
    }
}
