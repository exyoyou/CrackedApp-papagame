package com.czhj.wire;

import com.czhj.wire.Message;
import com.czhj.wire.Message.Builder;
import com.czhj.wire.internal.Internal;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
final class RuntimeMessageAdapter<M extends Message<M, B>, B extends Message.Builder<M, B>> extends ProtoAdapter<M> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25894a = "██";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<M> f25895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class<B> f25896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Integer, FieldBinding<M, B>> f25897d;

    RuntimeMessageAdapter(Class<M> cls, Class<B> cls2, Map<Integer, FieldBinding<M, B>> map) {
        super(FieldEncoding.LENGTH_DELIMITED, cls);
        this.f25895b = cls;
        this.f25896c = cls2;
        this.f25897d = map;
    }

    static <M extends Message<M, B>, B extends Message.Builder<M, B>> RuntimeMessageAdapter<M, B> a(Class<M> cls) {
        Class clsB = b(cls);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Field field : cls.getDeclaredFields()) {
            WireField wireField = (WireField) field.getAnnotation(WireField.class);
            if (wireField != null) {
                linkedHashMap.put(Integer.valueOf(wireField.tag()), new FieldBinding(wireField, field, clsB));
            }
        }
        return new RuntimeMessageAdapter<>(cls, clsB, Collections.unmodifiableMap(linkedHashMap));
    }

    B b() {
        try {
            return this.f25896c.newInstance();
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    @Override // com.czhj.wire.ProtoAdapter
    public M decode(ProtoReader protoReader) throws IOException {
        Message.Builder builderB = b();
        long jBeginMessage = protoReader.beginMessage();
        while (true) {
            int iNextTag = protoReader.nextTag();
            if (iNextTag == -1) {
                protoReader.endMessage(jBeginMessage);
                return (M) builderB.build();
            }
            FieldBinding<M, B> fieldBinding = this.f25897d.get(Integer.valueOf(iNextTag));
            if (fieldBinding != null) {
                try {
                    fieldBinding.a(builderB, (fieldBinding.a() ? fieldBinding.d() : fieldBinding.b()).decode(protoReader));
                } catch (ProtoAdapter.EnumConstantNotFoundException e10) {
                    builderB.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e10.value));
                }
            } else {
                FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                builderB.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
            }
        }
    }

    @Override // com.czhj.wire.ProtoAdapter
    public void encode(ProtoWriter protoWriter, M m10) throws IOException {
        for (FieldBinding<M, B> fieldBinding : this.f25897d.values()) {
            Object objA = fieldBinding.a(m10);
            if (objA != null) {
                fieldBinding.d().encodeWithTag(protoWriter, fieldBinding.tag, objA);
            }
        }
        protoWriter.writeBytes(m10.unknownFields());
    }

    @Override // com.czhj.wire.ProtoAdapter
    public int encodedSize(M m10) {
        int i10 = m10.cachedSerializedSize;
        if (i10 != 0) {
            return i10;
        }
        int iEncodedSizeWithTag = 0;
        for (FieldBinding<M, B> fieldBinding : this.f25897d.values()) {
            Object objA = fieldBinding.a(m10);
            if (objA != null) {
                iEncodedSizeWithTag += fieldBinding.d().encodedSizeWithTag(fieldBinding.tag, objA);
            }
        }
        int size = iEncodedSizeWithTag + m10.unknownFields().size();
        m10.cachedSerializedSize = size;
        return size;
    }

    public boolean equals(Object obj) {
        return (obj instanceof RuntimeMessageAdapter) && ((RuntimeMessageAdapter) obj).f25895b == this.f25895b;
    }

    public int hashCode() {
        return this.f25895b.hashCode();
    }

    @Override // com.czhj.wire.ProtoAdapter
    public M redact(M m10) {
        Message.Builder builderNewBuilder = m10.newBuilder();
        for (FieldBinding<M, B> fieldBinding : this.f25897d.values()) {
            if (fieldBinding.redacted && fieldBinding.label == WireField.Label.REQUIRED) {
                throw new UnsupportedOperationException(String.format("Field '%s' in %s is required and cannot be redacted.", fieldBinding.name, this.javaType.getName()));
            }
            boolean zIsAssignableFrom = Message.class.isAssignableFrom(fieldBinding.b().javaType);
            if (fieldBinding.redacted || (zIsAssignableFrom && !fieldBinding.label.a())) {
                Object objA = fieldBinding.a(builderNewBuilder);
                if (objA != null) {
                    fieldBinding.b(builderNewBuilder, fieldBinding.d().redact(objA));
                }
            } else if (zIsAssignableFrom && fieldBinding.label.a()) {
                Internal.redactElements((List) fieldBinding.a(builderNewBuilder), fieldBinding.b());
            }
        }
        builderNewBuilder.clearUnknownFields();
        return (M) builderNewBuilder.build();
    }

    @Override // com.czhj.wire.ProtoAdapter
    public String toString(M m10) {
        StringBuilder sb2 = new StringBuilder();
        for (FieldBinding<M, B> fieldBinding : this.f25897d.values()) {
            Object objA = fieldBinding.a(m10);
            if (objA != null) {
                sb2.append(", ");
                sb2.append(fieldBinding.name);
                sb2.append('=');
                if (fieldBinding.redacted) {
                    objA = f25894a;
                }
                sb2.append(objA);
            }
        }
        sb2.replace(0, 2, this.f25895b.getSimpleName() + '{');
        sb2.append('}');
        return sb2.toString();
    }

    private static <M extends Message<M, B>, B extends Message.Builder<M, B>> Class<B> b(Class<M> cls) {
        try {
            return (Class<B>) Class.forName(cls.getName() + "$Builder");
        } catch (ClassNotFoundException unused) {
            throw new IllegalArgumentException("No builder class found for message type " + cls.getName());
        }
    }

    Map<Integer, FieldBinding<M, B>> a() {
        return this.f25897d;
    }
}
