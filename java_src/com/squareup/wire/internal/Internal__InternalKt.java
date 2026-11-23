package com.squareup.wire.internal;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.b0;
import com.squareup.wire.c0;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.http.conn.ssl.TokenParser;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nInternal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Internal.kt\ncom/squareup/wire/internal/Internal__InternalKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Platform.kt\ncom/squareup/wire/internal/_PlatformKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,401:1\n1#2:402\n42#3:403\n42#3:404\n38#3:405\n42#3:406\n1549#4:407\n1620#4,3:408\n1238#4,4:413\n453#5:411\n403#5:412\n1174#6,2:417\n*S KotlinDebug\n*F\n+ 1 Internal.kt\ncom/squareup/wire/internal/Internal__InternalKt\n*L\n84#1:403\n95#1:404\n111#1:405\n119#1:406\n134#1:407\n134#1:408,3\n138#1:413,4\n138#1:411\n138#1:412\n212#1:417,2\n*E\n"})
final /* synthetic */ class Internal__InternalKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final String f82362a = ",[]{}\\";

    public static final int A(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return c0.f82330b.a(reader.t());
    }

    public static final long B(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return c0.f82330b.b(reader.u());
    }

    public static final int C(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.t();
    }

    public static final long D(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.u();
    }

    public static final void E(@NotNull double[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.i(Double.doubleToLongBits(array[length]));
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void F(@NotNull int[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.h(array[length]);
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void G(@NotNull long[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.i(array[length]);
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void H(@NotNull float[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.h(Float.floatToIntBits(array[length]));
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void I(@NotNull int[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.k(array[length]);
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void J(@NotNull long[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.p(array[length]);
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void K(@NotNull int[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        n.F(array, writer, i10);
    }

    public static final void L(@NotNull long[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        n.G(array, writer, i10);
    }

    public static final void M(@NotNull int[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.o(c0.f82330b.c(array[length]));
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void N(@NotNull long[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.p(c0.f82330b.d(array[length]));
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void O(@NotNull int[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        if (!(array.length == 0)) {
            int iC = writer.c();
            for (int length = array.length - 1; -1 < length; length--) {
                writer.o(array[length]);
            }
            writer.o(writer.c() - iC);
            writer.m(i10, FieldEncoding.LENGTH_DELIMITED);
        }
    }

    public static final void P(@NotNull long[] array, @NotNull ReverseProtoWriter writer, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(writer, "writer");
        n.J(array, writer, i10);
    }

    public static final boolean Q(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && Intrinsics.areEqual(obj, obj2));
    }

    private static final KClass<? extends Object> R(Object obj) {
        return Reflection.getOrCreateKotlinClass(obj.getClass());
    }

    @NotNull
    public static final <T> List<T> S(@NotNull String name, @NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(list, "list");
        if (list instanceof MutableOnWriteList) {
            list = (List<T>) ((MutableOnWriteList) list).getMutableList$wire_runtime();
        }
        if (list == CollectionsKt__CollectionsKt.emptyList() || (list instanceof ImmutableList)) {
            return (List<T>) list;
        }
        ImmutableList immutableList = new ImmutableList(list);
        if (!immutableList.contains(null)) {
            return immutableList;
        }
        throw new IllegalArgumentException((name + ".contains(null)").toString());
    }

    @NotNull
    public static final <K, V> Map<K, V> T(@NotNull String name, @NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(map, "map");
        if (map.isEmpty()) {
            return MapsKt__MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        Set<K> setKeySet = linkedHashMap.keySet();
        Intrinsics.checkNotNull(setKeySet, "null cannot be cast to non-null type kotlin.collections.Collection<K of com.squareup.wire.internal.Internal__InternalKt.immutableCopyOf?>");
        if (!(!setKeySet.contains(null))) {
            throw new IllegalArgumentException((name + ".containsKey(null)").toString());
        }
        Collection<V> collectionValues = linkedHashMap.values();
        Intrinsics.checkNotNull(collectionValues, "null cannot be cast to non-null type kotlin.collections.Collection<V of com.squareup.wire.internal.Internal__InternalKt.immutableCopyOf?>");
        if (!collectionValues.contains(null)) {
            Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
            return mapUnmodifiableMap;
        }
        throw new IllegalArgumentException((name + ".containsValue(null)").toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> U(@NotNull String name, @NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (!(key != null)) {
                throw new IllegalArgumentException((name + ".containsKey(null)").toString());
            }
            linkedHashMap.put(key, n.V(name, value));
        }
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(...)");
        Intrinsics.checkNotNull(mapUnmodifiableMap, "null cannot be cast to non-null type kotlin.collections.Map<K of com.squareup.wire.internal.Internal__InternalKt.immutableCopyOfMapWithStructValues, V of com.squareup.wire.internal.Internal__InternalKt.immutableCopyOfMapWithStructValues>");
        return mapUnmodifiableMap;
    }

    public static final <T> T V(@NotNull String name, T t10) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (t10 == null || (t10 instanceof Boolean) || (t10 instanceof Double) || (t10 instanceof String)) {
            return t10;
        }
        if (t10 instanceof List) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = ((List) t10).iterator();
            while (it2.hasNext()) {
                arrayList.add(n.V(name, it2.next()));
            }
            T t11 = (T) Collections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(t11, "unmodifiableList(...)");
            return t11;
        }
        if (!(t10 instanceof Map)) {
            throw new IllegalArgumentException("struct value " + name + " must be a JSON type (null, Boolean, Double, String, List, or Map) but was " + R(t10) + ": " + t10);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) t10).entrySet()) {
            linkedHashMap.put(n.V(name, entry.getKey()), n.V(name, entry.getValue()));
        }
        T t12 = (T) Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(t12, "unmodifiableMap(...)");
        return t12;
    }

    @NotNull
    public static final IllegalStateException W(@NotNull Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        StringBuilder sb2 = new StringBuilder();
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, args.length - 1, 2);
        String str = "";
        if (progressionLastElement >= 0) {
            int i10 = 0;
            while (true) {
                if (args[i10] == null) {
                    if (sb2.length() > 0) {
                        str = "s";
                    }
                    sb2.append("\n  ");
                    sb2.append(args[i10 + 1]);
                }
                if (i10 == progressionLastElement) {
                    break;
                }
                i10 += 2;
            }
        }
        String string = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        throw new IllegalStateException("Required field" + str + " not set:" + string);
    }

    @NotNull
    public static final <T> List<T> X() {
        return new MutableOnWriteList(CollectionsKt__CollectionsKt.emptyList());
    }

    @NotNull
    public static final <K, V> Map<K, V> Y() {
        return new LinkedHashMap();
    }

    @NotNull
    public static final String Z(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        StringBuilder sb2 = new StringBuilder(value.length());
        for (int i10 = 0; i10 < value.length(); i10++) {
            char cCharAt = value.charAt(i10);
            if (StringsKt__StringsKt.contains$default((CharSequence) f82362a, cCharAt, false, 2, (Object) null)) {
                sb2.append(TokenParser.ESCAPE);
            }
            sb2.append(cCharAt);
        }
        String string = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @JvmName(name = "-redactElements")
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> list, @NotNull ProtoAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        List<? extends T> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(adapter.J(it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public static final String a0(@NotNull List<String> values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return CollectionsKt___CollectionsKt.joinToString$default(values, null, "[", "]", 0, null, Internal__InternalKt$sanitize$2.f82363b, 25, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmName(name = "-redactElements")
    @NotNull
    public static final <K, V> Map<K, V> b(@NotNull Map<K, ? extends V> map, @NotNull ProtoAdapter<V> adapter) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(map.size()));
        Iterator<T> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(entry.getKey(), adapter.J(entry.getValue()));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final String c(@NotNull String oneOfName) {
        Intrinsics.checkNotNullParameter(oneOfName, "oneOfName");
        if (!(oneOfName.length() > 0)) {
            return oneOfName;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) CharsKt__CharKt.titlecase(oneOfName.charAt(0)));
        String strSubstring = oneOfName.substring(1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        sb2.append(strSubstring);
        return sb2.toString();
    }

    @NotNull
    public static final String d(@NotNull String oneOfName, @NotNull String fieldName) {
        Intrinsics.checkNotNullParameter(oneOfName, "oneOfName");
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        String upperCase = (oneOfName + '_' + fieldName).toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    @NotNull
    public static final String e(@NotNull String oneOfName) {
        Intrinsics.checkNotNullParameter(oneOfName, "oneOfName");
        String upperCase = (oneOfName + "_keys").toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public static final void f(@NotNull List<?> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (list.get(i10) == null) {
                throw new NullPointerException("Element at index " + i10 + " is null");
            }
        }
    }

    public static final void g(@NotNull Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key == null) {
                throw new NullPointerException("map.containsKey(null)");
            }
            if (value == null) {
                throw new NullPointerException("Value for key " + key + " is null");
            }
        }
    }

    public static final boolean h(@NotNull Duration duration, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(duration, "<this>");
        if (duration == obj) {
            return true;
        }
        return obj != null && q.a(obj) && duration.getSeconds() == com.squareup.wire.v.a(obj).getSeconds() && duration.getNano() == com.squareup.wire.v.a(obj).getNano();
    }

    public static final boolean i(@NotNull Instant instant, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        if (instant == obj) {
            return true;
        }
        return obj != null && p.a(obj) && instant.getEpochSecond() == com.squareup.wire.a0.a(obj).getEpochSecond() && instant.getNano() == com.squareup.wire.a0.a(obj).getNano();
    }

    public static final int j(@NotNull Duration duration) {
        Intrinsics.checkNotNullParameter(duration, "<this>");
        return (s5.a.a(duration.getSeconds()) * 31) + duration.getNano();
    }

    public static final int k(@NotNull Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        return (s5.a.a(instant.getEpochSecond()) * 31) + instant.getNano();
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(list)", imports = {}))
    @NotNull
    public static final <T> List<T> l(@NotNull String name, @Nullable List<? extends T> list) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNull(list);
        return n.m(list);
    }

    @NotNull
    public static final <T> List<T> m(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return (list == CollectionsKt__CollectionsKt.emptyList() || (list instanceof ImmutableList)) ? new MutableOnWriteList(list) : new ArrayList(list);
    }

    @Deprecated(message = "Please regenerate code using wire-compiler version 3.0.0 or higher.", replaceWith = @ReplaceWith(expression = "com.squareup.internal.Internal.copyOf(map)", imports = {}))
    @NotNull
    public static final <K, V> Map<K, V> n(@NotNull String name, @Nullable Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNull(map);
        return n.o(map);
    }

    @NotNull
    public static final <K, V> Map<K, V> o(@NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        return new LinkedHashMap(map);
    }

    public static final int p(@Nullable Object obj, @Nullable Object obj2) {
        return (obj != null ? 1 : 0) + (obj2 == null ? 0 : 1);
    }

    public static final int q(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3) {
        return (obj != null ? 1 : 0) + (obj2 != null ? 1 : 0) + (obj3 == null ? 0 : 1);
    }

    public static final int r(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @NotNull Object... rest) {
        Intrinsics.checkNotNullParameter(rest, "rest");
        int i10 = obj != null ? 1 : 0;
        if (obj2 != null) {
            i10++;
        }
        if (obj3 != null) {
            i10++;
        }
        if (obj4 != null) {
            i10++;
        }
        for (Object obj5 : rest) {
            if (obj5 != null) {
                i10++;
            }
        }
        return i10;
    }

    public static final double s(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        DoubleCompanionObject doubleCompanionObject = DoubleCompanionObject.INSTANCE;
        return Double.longBitsToDouble(reader.q());
    }

    public static final int t(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.p();
    }

    public static final long u(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.q();
    }

    public static final float v(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat(reader.p());
    }

    public static final int w(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.t();
    }

    public static final long x(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.u();
    }

    public static final int y(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.p();
    }

    public static final long z(@NotNull b0 reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return reader.q();
    }
}
