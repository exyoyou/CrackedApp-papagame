package com.squareup.wire.internal;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.b0;
import com.squareup.wire.c0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nRuntimeMessageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,229:1\n37#2,2:230\n11065#3:232\n11400#3,3:233\n11065#3:236\n11400#3,3:237\n11065#3:240\n11400#3,3:241\n*S KotlinDebug\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n*L\n40#1:230,2\n41#1:232\n41#1:233,3\n57#1:236\n57#1:237,3\n58#1:240\n58#1:241,3\n*E\n"})
public final class x<M, B> extends ProtoAdapter<M> {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    @NotNull
    public static final a f82400g0 = new a(null);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    @NotNull
    private static final String f82401h0 = "██";

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    @NotNull
    private final v<M, B> f82402a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    @NotNull
    private final KClass<? super M> f82403b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    @NotNull
    private final Map<Integer, FieldOrOneOfBinding<M, B>> f82404c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    @NotNull
    private final FieldOrOneOfBinding<M, B>[] f82405d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    @NotNull
    private final List<String> f82406e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    @NotNull
    private final List<String> f82407f0;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(@NotNull v<M, B> binding) {
        String strH;
        super(FieldEncoding.LENGTH_DELIMITED, binding.getMessageType(), binding.getTypeUrl(), binding.getSyntax());
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.f82402a0 = binding;
        this.f82403b0 = binding.getMessageType();
        Map<Integer, FieldOrOneOfBinding<M, B>> fields = binding.getFields();
        this.f82404c0 = fields;
        FieldOrOneOfBinding<M, B>[] fieldOrOneOfBindingArr = (FieldOrOneOfBinding[]) fields.values().toArray(new FieldOrOneOfBinding[0]);
        this.f82405d0 = fieldOrOneOfBindingArr;
        ArrayList arrayList = new ArrayList(fieldOrOneOfBindingArr.length);
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding : fieldOrOneOfBindingArr) {
            arrayList.add(Q(fieldOrOneOfBinding));
        }
        this.f82406e0 = arrayList;
        FieldOrOneOfBinding<M, B>[] fieldOrOneOfBindingArr2 = this.f82405d0;
        ArrayList arrayList2 = new ArrayList(fieldOrOneOfBindingArr2.length);
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding2 : fieldOrOneOfBindingArr2) {
            arrayList2.add(Q(fieldOrOneOfBinding2));
        }
        FieldOrOneOfBinding<M, B>[] fieldOrOneOfBindingArr3 = this.f82405d0;
        ArrayList arrayList3 = new ArrayList(fieldOrOneOfBindingArr3.length);
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding3 : fieldOrOneOfBindingArr3) {
            if (!Intrinsics.areEqual(Q(fieldOrOneOfBinding3), fieldOrOneOfBinding3.d())) {
                strH = fieldOrOneOfBinding3.d();
            } else if (Intrinsics.areEqual(Q(fieldOrOneOfBinding3), fieldOrOneOfBinding3.h())) {
                String strB = a0.b(fieldOrOneOfBinding3.d(), false, 2, null);
                strH = (Intrinsics.areEqual(Q(fieldOrOneOfBinding3), strB) || arrayList2.contains(strB)) ? null : strB;
            } else {
                strH = fieldOrOneOfBinding3.h();
            }
            arrayList3.add(strH);
        }
        this.f82407f0 = arrayList3;
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    public M J(@NotNull M value) {
        Intrinsics.checkNotNullParameter(value, "value");
        B bNewBuilder = this.f82402a0.newBuilder();
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding : this.f82404c0.values()) {
            if (fieldOrOneOfBinding.i() && fieldOrOneOfBinding.g() == WireField.Label.REQUIRED) {
                throw new UnsupportedOperationException("Field '" + fieldOrOneOfBinding.h() + "' in " + getType() + " is required and cannot be redacted.");
            }
            boolean zO = fieldOrOneOfBinding.o();
            if (fieldOrOneOfBinding.i() || (zO && !fieldOrOneOfBinding.g().isRepeated())) {
                Object objE = fieldOrOneOfBinding.e(bNewBuilder);
                if (objE != null) {
                    fieldOrOneOfBinding.r(bNewBuilder, fieldOrOneOfBinding.b().J(objE));
                }
            } else if (zO && fieldOrOneOfBinding.g().isRepeated()) {
                Object objE2 = fieldOrOneOfBinding.e(bNewBuilder);
                Intrinsics.checkNotNull(objE2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
                ProtoAdapter<?> protoAdapterJ = fieldOrOneOfBinding.j();
                Intrinsics.checkNotNull(protoAdapterJ, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>");
                fieldOrOneOfBinding.r(bNewBuilder, n.a((List) objE2, protoAdapterJ));
            }
        }
        this.f82402a0.a(bNewBuilder);
        return this.f82402a0.f(bNewBuilder);
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    public String K(@NotNull M value) {
        Intrinsics.checkNotNullParameter(value, "value");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f82403b0.getSimpleName());
        sb2.append('{');
        boolean z10 = true;
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding : this.f82404c0.values()) {
            Object objA = fieldOrOneOfBinding.a(value);
            if (objA != null) {
                if (!z10) {
                    sb2.append(", ");
                }
                sb2.append(fieldOrOneOfBinding.h());
                sb2.append('=');
                if (fieldOrOneOfBinding.i()) {
                    objA = f82401h0;
                }
                sb2.append(objA);
                z10 = false;
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @NotNull
    public final FieldOrOneOfBinding<M, B>[] N() {
        return this.f82405d0;
    }

    @NotNull
    public final Map<Integer, FieldOrOneOfBinding<M, B>> O() {
        return this.f82404c0;
    }

    @NotNull
    public final List<String> P() {
        return this.f82407f0;
    }

    @NotNull
    public final String Q(@NotNull FieldOrOneOfBinding<?, ?> fieldOrOneOfBinding) {
        Intrinsics.checkNotNullParameter(fieldOrOneOfBinding, "<this>");
        return fieldOrOneOfBinding.l().length() == 0 ? fieldOrOneOfBinding.d() : fieldOrOneOfBinding.l();
    }

    @NotNull
    public final List<String> R() {
        return this.f82406e0;
    }

    @NotNull
    public final B S() {
        return this.f82402a0.newBuilder();
    }

    public final <A> void T(@Nullable M m10, @NotNull List<? extends A> jsonAdapters, @Nullable A a10, @NotNull Function3<? super String, Object, ? super A, Unit> encodeValue) {
        Intrinsics.checkNotNullParameter(jsonAdapters, "jsonAdapters");
        Intrinsics.checkNotNullParameter(encodeValue, "encodeValue");
        int length = this.f82405d0.length;
        ArrayList arrayList = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            FieldOrOneOfBinding<M, B> fieldOrOneOfBinding = this.f82405d0[i10];
            Intrinsics.checkNotNull(m10);
            Object objA = fieldOrOneOfBinding.a(m10);
            if (!fieldOrOneOfBinding.p(A(), objA)) {
                if (!fieldOrOneOfBinding.i() || a10 == null || objA == null) {
                    encodeValue.invoke(this.f82406e0.get(i10), objA, jsonAdapters.get(i10));
                } else {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(this.f82406e0.get(i10));
                }
            }
        }
        if (arrayList != null && (!arrayList.isEmpty())) {
            z10 = true;
        }
        if (z10) {
            Intrinsics.checkNotNull(a10);
            encodeValue.invoke("__redacted_fields", arrayList, a10);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    @NotNull
    public M c(@NotNull b0 reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        B bS = S();
        long jF = reader.f();
        while (true) {
            int iM = reader.m();
            if (iM == -1) {
                reader.h(jF);
                return this.f82402a0.f(bS);
            }
            FieldOrOneOfBinding<M, B> fieldOrOneOfBinding = this.f82404c0.get(Integer.valueOf(iM));
            if (fieldOrOneOfBinding != null) {
                try {
                    Object objC = (fieldOrOneOfBinding.n() ? fieldOrOneOfBinding.b() : fieldOrOneOfBinding.j()).c(reader);
                    Intrinsics.checkNotNull(objC);
                    fieldOrOneOfBinding.s(bS, objC);
                } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                    this.f82402a0.b(bS, iM, FieldEncoding.VARINT, Long.valueOf(e10.value));
                }
            } else {
                FieldEncoding fieldEncodingN = reader.n();
                Intrinsics.checkNotNull(fieldEncodingN);
                this.f82402a0.b(bS, iM, fieldEncodingN, fieldEncodingN.rawProtoAdapter().c(reader));
            }
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof x) && Intrinsics.areEqual(((x) obj).f82403b0, this.f82403b0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public void h(@NotNull c0 writer, @NotNull M value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding : this.f82404c0.values()) {
            Object objA = fieldOrOneOfBinding.a(value);
            if (objA != null) {
                fieldOrOneOfBinding.b().n(writer, fieldOrOneOfBinding.k(), objA);
            }
        }
        writer.a(this.f82402a0.d(value));
    }

    public int hashCode() {
        return this.f82403b0.hashCode();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public void i(@NotNull ReverseProtoWriter writer, @NotNull M value) throws IOException {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.g(this.f82402a0.d(value));
        int length = this.f82405d0.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            }
            FieldOrOneOfBinding<M, B> fieldOrOneOfBinding = this.f82405d0[length];
            Object objA = fieldOrOneOfBinding.a(value);
            if (objA != null) {
                fieldOrOneOfBinding.b().o(writer, fieldOrOneOfBinding.k(), objA);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public int p(@NotNull M value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int iC = this.f82402a0.c(value);
        if (iC != 0) {
            return iC;
        }
        int iQ = 0;
        for (FieldOrOneOfBinding<M, B> fieldOrOneOfBinding : this.f82404c0.values()) {
            Object objA = fieldOrOneOfBinding.a(value);
            if (objA != null) {
                iQ += fieldOrOneOfBinding.b().q(fieldOrOneOfBinding.k(), objA);
            }
        }
        int size = iQ + this.f82402a0.d(value).size();
        this.f82402a0.e(value, size);
        return size;
    }
}
