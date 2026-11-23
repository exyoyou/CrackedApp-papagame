package com.squareup.wire;

import com.squareup.wire.Message;
import com.squareup.wire.Message.a;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nKotlinConstructorBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinConstructorBuilder.kt\ncom/squareup/wire/KotlinConstructorBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1549#2:119\n1620#2,3:120\n766#2:123\n857#2,2:124\n1855#2,2:126\n1549#2:128\n1620#2,3:129\n1549#2:134\n1620#2,3:135\n1045#2:165\n37#3,2:132\n37#3,2:138\n11383#4,9:140\n13309#4:149\n4098#4,11:150\n13310#4:163\n11392#4:164\n1#5:161\n1#5:162\n*S KotlinDebug\n*F\n+ 1 KotlinConstructorBuilder.kt\ncom/squareup/wire/KotlinConstructorBuilder\n*L\n57#1:119\n57#1:120,3\n58#1:123\n58#1:124,2\n59#1:126,2\n91#1:128\n91#1:129,3\n93#1:134\n93#1:135,3\n108#1:165\n91#1:132,2\n99#1:138,2\n103#1:140,9\n103#1:149\n104#1:150,11\n103#1:163\n103#1:164\n103#1:162\n*E\n"})
public final class m<M extends Message<M, B>, B extends Message.a<M, B>> extends Message.a<M, B> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final Class<M> f82415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Map<Integer, Pair<WireField, Object>> f82416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final Map<Integer, Pair<WireField, List<?>>> f82417f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final Map<Integer, Pair<WireField, Map<?, ?>>> f82418g;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NotNull
        private final Class<?> f82419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final WireField f82420b;

        public a(@NotNull Class<?> type, @NotNull WireField wireField) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(wireField, "wireField");
            this.f82419a = type;
            this.f82420b = wireField;
        }

        @NotNull
        public final WireField a() {
            return this.f82420b;
        }

        @NotNull
        public final Class<?> getType() {
            return this.f82419a;
        }
    }

    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 KotlinConstructorBuilder.kt\ncom/squareup/wire/KotlinConstructorBuilder\n*L\n1#1,328:1\n108#2:329\n*E\n"})
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((a) t10).a().schemaIndex()), Integer.valueOf(((a) t11).a().schemaIndex()));
        }
    }

    public m(@NotNull Class<M> messageType) {
        Intrinsics.checkNotNullParameter(messageType, "messageType");
        this.f82415d = messageType;
        int length = messageType.getDeclaredFields().length;
        this.f82416e = new LinkedHashMap(length);
        this.f82417f = new LinkedHashMap(length);
        this.f82418g = new LinkedHashMap(length);
    }

    private final void m(WireField wireField) {
        Collection<Pair<WireField, Object>> collectionValues = this.f82416e.values();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionValues, 10));
        Iterator<T> it2 = collectionValues.iterator();
        while (it2.hasNext()) {
            arrayList.add((WireField) ((Pair) it2.next()).getFirst());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            WireField wireField2 = (WireField) obj;
            if (Intrinsics.areEqual(wireField2.oneofName(), wireField.oneofName()) && wireField2.tag() != wireField.tag()) {
                arrayList2.add(obj);
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            this.f82416e.remove(Integer.valueOf(((WireField) it3.next()).tag()));
        }
    }

    private final List<a> n(Class<M> cls) {
        a aVar;
        Field[] declaredFields = cls.getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            Annotation[] declaredAnnotations = field.getDeclaredAnnotations();
            Intrinsics.checkNotNullExpressionValue(declaredAnnotations, "getDeclaredAnnotations(...)");
            ArrayList arrayList2 = new ArrayList();
            for (Annotation annotation : declaredAnnotations) {
                if (annotation instanceof WireField) {
                    arrayList2.add(annotation);
                }
            }
            WireField wireField = (WireField) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList2);
            if (wireField != null) {
                Class<?> type = field.getType();
                Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                aVar = new a(type, wireField);
            } else {
                aVar = null;
            }
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        return CollectionsKt___CollectionsKt.sortedWith(arrayList, new b());
    }

    @Override // com.squareup.wire.Message.a
    @NotNull
    public M c() throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        List<a> listN = n(this.f82415d);
        ArrayDeque arrayDeque = new ArrayDeque();
        Iterator<a> it2 = listN.iterator();
        while (it2.hasNext()) {
            arrayDeque.add(it2.next());
        }
        List<a> list = listN;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            arrayList.add(((a) it3.next()).getType());
        }
        Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
        Class<M> cls = this.f82415d;
        SpreadBuilder spreadBuilder = new SpreadBuilder(2);
        spreadBuilder.addSpread(clsArr);
        spreadBuilder.add(ByteString.class);
        Constructor<M> declaredConstructor = cls.getDeclaredConstructor((Class[]) spreadBuilder.toArray(new Class[spreadBuilder.size()]));
        IntRange intRange = new IntRange(0, clsArr.length);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it4 = intRange.iterator();
        while (it4.hasNext()) {
            arrayList2.add(((IntIterator) it4).nextInt() == listN.size() ? d() : o(((a) arrayDeque.removeFirst()).a()));
        }
        Object[] array = arrayList2.toArray(new Object[0]);
        M mNewInstance = declaredConstructor.newInstance(Arrays.copyOf(array, array.length));
        Intrinsics.checkNotNull(mNewInstance, "null cannot be cast to non-null type M of com.squareup.wire.KotlinConstructorBuilder");
        return mNewInstance;
    }

    @Nullable
    public final Object o(@NotNull WireField field) {
        List<?> second;
        Map<?, ?> second2;
        Intrinsics.checkNotNullParameter(field, "field");
        if (n.b(field)) {
            Pair<WireField, Map<?, ?>> pair = this.f82418g.get(Integer.valueOf(field.tag()));
            return (pair == null || (second2 = pair.getSecond()) == null) ? MapsKt__MapsKt.emptyMap() : second2;
        }
        if (field.label().isRepeated()) {
            Pair<WireField, List<?>> pair2 = this.f82417f.get(Integer.valueOf(field.tag()));
            return (pair2 == null || (second = pair2.getSecond()) == null) ? CollectionsKt__CollectionsKt.emptyList() : second;
        }
        Pair<WireField, Object> pair3 = this.f82416e.get(Integer.valueOf(field.tag()));
        Object second3 = pair3 != null ? pair3.getSecond() : null;
        return (second3 == null && field.label() == WireField.Label.OMIT_IDENTITY) ? ProtoAdapter.f82266i.c(field.adapter()).w() : second3;
    }

    public final void p(@NotNull WireField field, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(field, "field");
        if (n.b(field)) {
            Map<Integer, Pair<WireField, Map<?, ?>>> map = this.f82418g;
            Integer numValueOf = Integer.valueOf(field.tag());
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.MutableMap<*, *>");
            map.put(numValueOf, TuplesKt.to(field, TypeIntrinsics.asMutableMap(obj)));
            return;
        }
        if (field.label().isRepeated()) {
            Map<Integer, Pair<WireField, List<?>>> map2 = this.f82417f;
            Integer numValueOf2 = Integer.valueOf(field.tag());
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.MutableList<*>");
            map2.put(numValueOf2, TuplesKt.to(field, TypeIntrinsics.asMutableList(obj)));
            return;
        }
        this.f82416e.put(Integer.valueOf(field.tag()), TuplesKt.to(field, obj));
        if (obj == null || !field.label().isOneOf()) {
            return;
        }
        m(field);
    }
}
