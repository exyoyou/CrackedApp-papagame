package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
final class MessageSchema<T> implements Schema<T> {
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int INTS_PER_FIELD = 3;
    private static final int NO_PRESENCE_SENTINEL = 1048575;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_MASK = 268435456;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final ExtensionSchema<?> extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final ListFieldSchema listFieldSchema;
    private final boolean lite;
    private final MapFieldSchema mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final NewInstanceSchema newInstanceSchema;
    private final Object[] objects;
    private final boolean proto3;
    private final int repeatedFieldOffsetStart;
    private final UnknownFieldSchema<?, ?> unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();

    /* JADX INFO: renamed from: com.google.protobuf.MessageSchema$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private MessageSchema(int[] iArr, Object[] objArr, int i10, int i11, MessageLite messageLite, boolean z10, boolean z11, int[] iArr2, int i12, int i13, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i10;
        this.maxFieldNumber = i11;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.proto3 = z10;
        this.hasExtensions = extensionSchema != null && extensionSchema.hasExtensions(messageLite);
        this.useCachedSizeField = z11;
        this.intArray = iArr2;
        this.checkInitializedCount = i12;
        this.repeatedFieldOffsetStart = i13;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchema;
    }

    private boolean arePresentForEquals(T t10, T t11, int i10) {
        return isFieldPresent(t10, i10) == isFieldPresent(t11, i10);
    }

    private static <T> boolean booleanAt(T t10, long j10) {
        return UnsafeUtil.getBoolean(t10, j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int decodeMapEntry(byte[] bArr, int i10, int i11, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map, ArrayDecoders.Registers registers) throws IOException {
        int iDecodeVarint32;
        int iDecodeVarint33 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
        int i12 = registers.int1;
        if (i12 < 0 || i12 > i11 - iDecodeVarint33) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i13 = iDecodeVarint33 + i12;
        Object obj = metadata.defaultKey;
        Object obj2 = metadata.defaultValue;
        while (iDecodeVarint33 < i13) {
            int i14 = iDecodeVarint33 + 1;
            int i15 = bArr[iDecodeVarint33];
            if (i15 < 0) {
                iDecodeVarint32 = ArrayDecoders.decodeVarint32(i15, bArr, i14, registers);
                i15 = registers.int1;
            } else {
                iDecodeVarint32 = i14;
            }
            int i16 = i15 >>> 3;
            int i17 = i15 & 7;
            if (i16 != 1) {
                if (i16 == 2 && i17 == metadata.valueType.getWireType()) {
                    iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i11, metadata.valueType, metadata.defaultValue.getClass(), registers);
                    obj2 = registers.object1;
                } else {
                    iDecodeVarint33 = ArrayDecoders.skipField(i15, bArr, iDecodeVarint32, i11, registers);
                }
            } else if (i17 == metadata.keyType.getWireType()) {
                iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i11, metadata.keyType, null, registers);
                obj = registers.object1;
            } else {
                iDecodeVarint33 = ArrayDecoders.skipField(i15, bArr, iDecodeVarint32, i11, registers);
            }
        }
        if (iDecodeVarint33 != i13) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return i13;
    }

    private int decodeMapEntryValue(byte[] bArr, int i10, int i11, WireFormat.FieldType fieldType, Class<?> cls, ArrayDecoders.Registers registers) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i10, registers);
                registers.object1 = Boolean.valueOf(registers.long1 != 0);
                return iDecodeVarint64;
            case 2:
                return ArrayDecoders.decodeBytes(bArr, i10, registers);
            case 3:
                registers.object1 = Double.valueOf(ArrayDecoders.decodeDouble(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                registers.object1 = Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                registers.object1 = Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i10));
                return i10 + 8;
            case 8:
                registers.object1 = Float.valueOf(ArrayDecoders.decodeFloat(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int iDecodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                return iDecodeVarint32;
            case 12:
            case 13:
                int iDecodeVarint65 = ArrayDecoders.decodeVarint64(bArr, i10, registers);
                registers.object1 = Long.valueOf(registers.long1);
                return iDecodeVarint65;
            case 14:
                return ArrayDecoders.decodeMessageField(Protobuf.getInstance().schemaFor((Class) cls), bArr, i10, i11, registers);
            case 15:
                int iDecodeVarint33 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                return iDecodeVarint33;
            case 16:
                int iDecodeVarint66 = ArrayDecoders.decodeVarint64(bArr, i10, registers);
                registers.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                return iDecodeVarint66;
            case 17:
                return ArrayDecoders.decodeStringRequireUtf8(bArr, i10, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static <T> double doubleAt(T t10, long j10) {
        return UnsafeUtil.getDouble(t10, j10);
    }

    private final <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i10, UB ub2, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        Internal.EnumVerifier enumFieldVerifier;
        int iNumberAt = numberAt(i10);
        Object object = UnsafeUtil.getObject(obj, offset(typeAndOffsetAt(i10)));
        return (object == null || (enumFieldVerifier = getEnumFieldVerifier(i10)) == null) ? ub2 : (UB) filterUnknownEnumMap(i10, iNumberAt, this.mapFieldSchema.forMutableMapData(object), enumFieldVerifier, ub2, unknownFieldSchema);
    }

    private final <K, V, UT, UB> UB filterUnknownEnumMap(int i10, int i11, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub2, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        MapEntryLite.Metadata<?, ?> metadataForMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i10));
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = unknownFieldSchema.newBuilder();
                }
                ByteString.CodedBuilder codedBuilderNewCodedBuilder = ByteString.newCodedBuilder(MapEntryLite.computeSerializedSize(metadataForMapMetadata, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.writeTo(codedBuilderNewCodedBuilder.getCodedOutput(), metadataForMapMetadata, next.getKey(), next.getValue());
                    unknownFieldSchema.addLengthDelimited(ub2, i11, codedBuilderNewCodedBuilder.build());
                    it2.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub2;
    }

    private static <T> float floatAt(T t10, long j10) {
        return UnsafeUtil.getFloat(t10, j10);
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int i10) {
        return (Internal.EnumVerifier) this.objects[((i10 / 3) * 2) + 1];
    }

    private Object getMapFieldDefaultEntry(int i10) {
        return this.objects[(i10 / 3) * 2];
    }

    private Schema getMessageFieldSchema(int i10) {
        int i11 = (i10 / 3) * 2;
        Schema schema = (Schema) this.objects[i11];
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaSchemaFor = Protobuf.getInstance().schemaFor((Class) this.objects[i11 + 1]);
        this.objects[i11] = schemaSchemaFor;
        return schemaSchemaFor;
    }

    static UnknownFieldSetLite getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != UnknownFieldSetLite.getDefaultInstance()) {
            return unknownFieldSetLite;
        }
        UnknownFieldSetLite unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
        generatedMessageLite.unknownFields = unknownFieldSetLiteNewInstance;
        return unknownFieldSetLiteNewInstance;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:184:0x041e A[PHI: r6
      0x041e: PHI (r6v4 int) = 
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v7 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v8 int)
      (r6v1 int)
     binds: [B:20:0x005f, B:223:0x04c5, B:220:0x04ba, B:214:0x049e, B:211:0x048d, B:208:0x047e, B:205:0x0471, B:202:0x0464, B:198:0x0459, B:195:0x0450, B:192:0x0443, B:189:0x0436, B:186:0x0423, B:160:0x0334, B:154:0x0317, B:148:0x02fa, B:142:0x02dd, B:136:0x02bf, B:130:0x02a1, B:124:0x0283, B:118:0x0265, B:112:0x0247, B:106:0x0229, B:100:0x020b, B:94:0x01ed, B:88:0x01cf, B:82:0x01b1, B:77:0x017d, B:74:0x0171, B:71:0x0161, B:68:0x0151, B:65:0x0141, B:62:0x0135, B:59:0x0128, B:56:0x011b, B:50:0x00fd, B:47:0x00e9, B:44:0x00d7, B:41:0x00c7, B:38:0x00b7, B:200:0x0460, B:35:0x00aa, B:32:0x009e, B:29:0x008e, B:26:0x007e, B:183:0x041d, B:23:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    private int getSerializedSizeProto2(T t10) {
        int i10;
        int i11;
        int iComputeDoubleSize;
        int iComputeBoolSize;
        int iComputeSFixed32Size;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1048575;
        int i16 = 0;
        while (i13 < this.buffer.length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i13);
            int iNumberAt = numberAt(i13);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                i10 = this.buffer[i13 + 2];
                int i17 = i10 & i12;
                i11 = 1 << (i10 >>> 20);
                if (i17 != i15) {
                    i16 = unsafe.getInt(t10, i17);
                    i15 = i17;
                }
            } else {
                i10 = (!this.useCachedSizeField || iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i13 + 2] & i12;
                i11 = 0;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i14 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i14 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, unsafe.getLong(t10, jOffset));
                        i14 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, unsafe.getLong(t10, jOffset));
                        i14 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, unsafe.getInt(t10, jOffset));
                        i14 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i14 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i14 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 8:
                    if ((i16 & i11) != 0) {
                        Object object = unsafe.getObject(t10, jOffset);
                        iComputeBoolSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 9:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(t10, jOffset), getMessageFieldSchema(i13));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 10:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 11:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, unsafe.getInt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 12:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, unsafe.getInt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 13:
                    if ((i16 & i11) != 0) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 14:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 15:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, unsafe.getInt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 16:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, unsafe.getLong(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 17:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(t10, jOffset), getMessageFieldSchema(i13));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 18:
                    iComputeBoolSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 19:
                    iComputeBoolSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 20:
                    iComputeBoolSize = SchemaUtil.computeSizeInt64List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 21:
                    iComputeBoolSize = SchemaUtil.computeSizeUInt64List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 22:
                    iComputeBoolSize = SchemaUtil.computeSizeInt32List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 23:
                    iComputeBoolSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 24:
                    iComputeBoolSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 25:
                    iComputeBoolSize = SchemaUtil.computeSizeBoolList(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 26:
                    iComputeBoolSize = SchemaUtil.computeSizeStringList(iNumberAt, (List) unsafe.getObject(t10, jOffset));
                    i14 += iComputeBoolSize;
                    break;
                case 27:
                    iComputeBoolSize = SchemaUtil.computeSizeMessageList(iNumberAt, (List) unsafe.getObject(t10, jOffset), getMessageFieldSchema(i13));
                    i14 += iComputeBoolSize;
                    break;
                case 28:
                    iComputeBoolSize = SchemaUtil.computeSizeByteStringList(iNumberAt, (List) unsafe.getObject(t10, jOffset));
                    i14 += iComputeBoolSize;
                    break;
                case 29:
                    iComputeBoolSize = SchemaUtil.computeSizeUInt32List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 30:
                    iComputeBoolSize = SchemaUtil.computeSizeEnumList(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 31:
                    iComputeBoolSize = SchemaUtil.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 32:
                    iComputeBoolSize = SchemaUtil.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 33:
                    iComputeBoolSize = SchemaUtil.computeSizeSInt32List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 34:
                    iComputeBoolSize = SchemaUtil.computeSizeSInt64List(iNumberAt, (List) unsafe.getObject(t10, jOffset), false);
                    i14 += iComputeBoolSize;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 48:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 49:
                    iComputeBoolSize = SchemaUtil.computeSizeGroupList(iNumberAt, (List) unsafe.getObject(t10, jOffset), getMessageFieldSchema(i13));
                    i14 += iComputeBoolSize;
                    break;
                case 50:
                    iComputeBoolSize = this.mapFieldSchema.getSerializedSize(iNumberAt, unsafe.getObject(t10, jOffset), getMapFieldDefaultEntry(i13));
                    i14 += iComputeBoolSize;
                    break;
                case 51:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeSFixed32Size = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        Object object2 = unsafe.getObject(t10, jOffset);
                        iComputeBoolSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = SchemaUtil.computeSizeMessage(iNumberAt, unsafe.getObject(t10, jOffset), getMessageFieldSchema(i13));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i14 += iComputeSFixed32Size;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t10, jOffset));
                        i14 += iComputeBoolSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t10, iNumberAt, i13)) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(t10, jOffset), getMessageFieldSchema(i13));
                        i14 += iComputeBoolSize;
                    }
                    break;
                default:
                    break;
            }
            i13 += 3;
            i12 = 1048575;
        }
        int unknownFieldsSerializedSize = i14 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t10);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t10).getSerializedSize() : unknownFieldsSerializedSize;
    }

    private int getSerializedSizeProto3(T t10) {
        int iComputeDoubleSize;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i10 = 0;
        for (int i11 = 0; i11 < this.buffer.length; i11 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i11);
            int iType = type(iTypeAndOffsetAt);
            int iNumberAt = numberAt(i11);
            long jOffset = offset(iTypeAndOffsetAt);
            int i12 = (iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i11 + 2] & 1048575;
            switch (iType) {
                case 0:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, UnsafeUtil.getLong(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, UnsafeUtil.getLong(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, UnsafeUtil.getInt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 8:
                    if (isFieldPresent(t10, i11)) {
                        Object object = UnsafeUtil.getObject(t10, jOffset);
                        iComputeDoubleSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 9:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, UnsafeUtil.getObject(t10, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 10:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) UnsafeUtil.getObject(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 11:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, UnsafeUtil.getInt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 12:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, UnsafeUtil.getInt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 13:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 14:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 15:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, UnsafeUtil.getInt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 16:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, UnsafeUtil.getLong(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 17:
                    if (isFieldPresent(t10, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) UnsafeUtil.getObject(t10, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 18:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 19:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 20:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt64List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 21:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt64List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 22:
                    iComputeDoubleSize = SchemaUtil.computeSizeInt32List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 23:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 24:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 25:
                    iComputeDoubleSize = SchemaUtil.computeSizeBoolList(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 26:
                    iComputeDoubleSize = SchemaUtil.computeSizeStringList(iNumberAt, listAt(t10, jOffset));
                    i10 += iComputeDoubleSize;
                    break;
                case 27:
                    iComputeDoubleSize = SchemaUtil.computeSizeMessageList(iNumberAt, listAt(t10, jOffset), getMessageFieldSchema(i11));
                    i10 += iComputeDoubleSize;
                    break;
                case 28:
                    iComputeDoubleSize = SchemaUtil.computeSizeByteStringList(iNumberAt, listAt(t10, jOffset));
                    i10 += iComputeDoubleSize;
                    break;
                case 29:
                    iComputeDoubleSize = SchemaUtil.computeSizeUInt32List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 30:
                    iComputeDoubleSize = SchemaUtil.computeSizeEnumList(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 31:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed32List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 32:
                    iComputeDoubleSize = SchemaUtil.computeSizeFixed64List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 33:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt32List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 34:
                    iComputeDoubleSize = SchemaUtil.computeSizeSInt64List(iNumberAt, listAt(t10, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 48:
                    iComputeSizeFixed64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t10, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t10, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 49:
                    iComputeDoubleSize = SchemaUtil.computeSizeGroupList(iNumberAt, listAt(t10, jOffset), getMessageFieldSchema(i11));
                    i10 += iComputeDoubleSize;
                    break;
                case 50:
                    iComputeDoubleSize = this.mapFieldSchema.getSerializedSize(iNumberAt, UnsafeUtil.getObject(t10, jOffset), getMapFieldDefaultEntry(i11));
                    i10 += iComputeDoubleSize;
                    break;
                case 51:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        Object object2 = UnsafeUtil.getObject(t10, jOffset);
                        iComputeDoubleSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = SchemaUtil.computeSizeMessage(iNumberAt, UnsafeUtil.getObject(t10, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) UnsafeUtil.getObject(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t10, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t10, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) UnsafeUtil.getObject(t10, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
            }
        }
        return i10 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t10);
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t10) {
        return unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(t10));
    }

    private static <T> int intAt(T t10, long j10) {
        return UnsafeUtil.getInt(t10, j10);
    }

    private static boolean isEnforceUtf8(int i10) {
        return (i10 & 536870912) != 0;
    }

    private boolean isFieldPresent(T t10, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return isFieldPresent(t10, i10);
        }
        return (i12 & i13) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean isListInitialized(Object obj, int i10, int i11) {
        List list = (List) UnsafeUtil.getObject(obj, offset(i10));
        if (list.isEmpty()) {
            return true;
        }
        Schema messageFieldSchema = getMessageFieldSchema(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!messageFieldSchema.isInitialized(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.google.protobuf.Schema] */
    private boolean isMapInitialized(T t10, int i10, int i11) {
        Map<?, ?> mapForMapData = this.mapFieldSchema.forMapData(UnsafeUtil.getObject(t10, offset(i10)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i11)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        ?? SchemaFor = 0;
        for (Object obj : mapForMapData.values()) {
            if (SchemaFor == 0) {
                SchemaFor = SchemaFor;
                SchemaFor = Protobuf.getInstance().schemaFor((Class) obj.getClass());
            }
            SchemaFor = SchemaFor;
            if (!SchemaFor.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    private boolean isOneofCaseEqual(T t10, T t11, int i10) {
        long jPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10) & 1048575;
        return UnsafeUtil.getInt(t10, jPresenceMaskAndOffsetAt) == UnsafeUtil.getInt(t11, jPresenceMaskAndOffsetAt);
    }

    private boolean isOneofPresent(T t10, int i10, int i11) {
        return UnsafeUtil.getInt(t10, (long) (presenceMaskAndOffsetAt(i11) & 1048575)) == i10;
    }

    private static boolean isRequired(int i10) {
        return (i10 & 268435456) != 0;
    }

    private static List<?> listAt(Object obj, long j10) {
        return (List) UnsafeUtil.getObject(obj, j10);
    }

    private static <T> long longAt(T t10, long j10) {
        return UnsafeUtil.getLong(t10, j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(UnknownFieldSchema<UT, UB> unknownFieldSchema, ExtensionSchema<ET> extensionSchema, T t10, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        Object objFilterMapUnknownEnumValues = null;
        Object mutableExtensions = null;
        while (true) {
            try {
                int fieldNumber = reader.getFieldNumber();
                int iPositionForFieldNumber = positionForFieldNumber(fieldNumber);
                if (iPositionForFieldNumber >= 0) {
                    int iTypeAndOffsetAt = typeAndOffsetAt(iPositionForFieldNumber);
                    try {
                        switch (type(iTypeAndOffsetAt)) {
                            case 0:
                                UnsafeUtil.putDouble(t10, offset(iTypeAndOffsetAt), reader.readDouble());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 1:
                                UnsafeUtil.putFloat(t10, offset(iTypeAndOffsetAt), reader.readFloat());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 2:
                                UnsafeUtil.putLong(t10, offset(iTypeAndOffsetAt), reader.readInt64());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 3:
                                UnsafeUtil.putLong(t10, offset(iTypeAndOffsetAt), reader.readUInt64());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 4:
                                UnsafeUtil.putInt(t10, offset(iTypeAndOffsetAt), reader.readInt32());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 5:
                                UnsafeUtil.putLong(t10, offset(iTypeAndOffsetAt), reader.readFixed64());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 6:
                                UnsafeUtil.putInt(t10, offset(iTypeAndOffsetAt), reader.readFixed32());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 7:
                                UnsafeUtil.putBoolean(t10, offset(iTypeAndOffsetAt), reader.readBool());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 8:
                                readString(t10, iTypeAndOffsetAt, reader);
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 9:
                                if (isFieldPresent(t10, iPositionForFieldNumber)) {
                                    UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Internal.mergeMessage(UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), reader.readMessageBySchemaWithCheck(getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), reader.readMessageBySchemaWithCheck(getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite));
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                }
                                break;
                            case 10:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), reader.readBytes());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 11:
                                UnsafeUtil.putInt(t10, offset(iTypeAndOffsetAt), reader.readUInt32());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 12:
                                int i10 = reader.readEnum();
                                Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(iPositionForFieldNumber);
                                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i10)) {
                                    UnsafeUtil.putInt(t10, offset(iTypeAndOffsetAt), i10);
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                } else {
                                    objFilterMapUnknownEnumValues = SchemaUtil.storeUnknownEnum(fieldNumber, i10, objFilterMapUnknownEnumValues, unknownFieldSchema);
                                }
                                break;
                            case 13:
                                UnsafeUtil.putInt(t10, offset(iTypeAndOffsetAt), reader.readSFixed32());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 14:
                                UnsafeUtil.putLong(t10, offset(iTypeAndOffsetAt), reader.readSFixed64());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 15:
                                UnsafeUtil.putInt(t10, offset(iTypeAndOffsetAt), reader.readSInt32());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 16:
                                UnsafeUtil.putLong(t10, offset(iTypeAndOffsetAt), reader.readSInt64());
                                setFieldPresent(t10, iPositionForFieldNumber);
                                break;
                            case 17:
                                if (isFieldPresent(t10, iPositionForFieldNumber)) {
                                    UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Internal.mergeMessage(UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), reader.readGroupBySchemaWithCheck(getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), reader.readGroupBySchemaWithCheck(getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite));
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                }
                                break;
                            case 18:
                                reader.readDoubleList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 19:
                                reader.readFloatList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 20:
                                reader.readInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 21:
                                reader.readUInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 22:
                                reader.readInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 23:
                                reader.readFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 24:
                                reader.readFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 25:
                                reader.readBoolList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 26:
                                readStringList(t10, iTypeAndOffsetAt, reader);
                                break;
                            case 27:
                                readMessageList(t10, iTypeAndOffsetAt, reader, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                break;
                            case 28:
                                reader.readBytesList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 29:
                                reader.readUInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 30:
                                List<Integer> listMutableListAt = this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt));
                                reader.readEnumList(listMutableListAt);
                                objFilterMapUnknownEnumValues = SchemaUtil.filterUnknownEnumList(fieldNumber, listMutableListAt, getEnumFieldVerifier(iPositionForFieldNumber), objFilterMapUnknownEnumValues, unknownFieldSchema);
                                break;
                            case 31:
                                reader.readSFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 32:
                                reader.readSFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 33:
                                reader.readSInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 34:
                                reader.readSInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 35:
                                reader.readDoubleList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 36:
                                reader.readFloatList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 37:
                                reader.readInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 38:
                                reader.readUInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 39:
                                reader.readInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 40:
                                reader.readFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 41:
                                reader.readFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 42:
                                reader.readBoolList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 43:
                                reader.readUInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 44:
                                List<Integer> listMutableListAt2 = this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt));
                                reader.readEnumList(listMutableListAt2);
                                objFilterMapUnknownEnumValues = SchemaUtil.filterUnknownEnumList(fieldNumber, listMutableListAt2, getEnumFieldVerifier(iPositionForFieldNumber), objFilterMapUnknownEnumValues, unknownFieldSchema);
                                break;
                            case 45:
                                reader.readSFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 46:
                                reader.readSFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 47:
                                reader.readSInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 48:
                                reader.readSInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                break;
                            case 49:
                                readGroupList(t10, offset(iTypeAndOffsetAt), reader, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                break;
                            case 50:
                                mergeMap(t10, iPositionForFieldNumber, getMapFieldDefaultEntry(iPositionForFieldNumber), extensionRegistryLite, reader);
                                break;
                            case 51:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Double.valueOf(reader.readDouble()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 52:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Float.valueOf(reader.readFloat()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 53:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(reader.readInt64()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 54:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(reader.readUInt64()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 55:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readInt32()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 56:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(reader.readFixed64()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 57:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readFixed32()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 58:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Boolean.valueOf(reader.readBool()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 59:
                                readString(t10, iTypeAndOffsetAt, reader);
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 60:
                                if (isOneofPresent(t10, fieldNumber, iPositionForFieldNumber)) {
                                    UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Internal.mergeMessage(UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), reader.readMessageBySchemaWithCheck(getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), reader.readMessageBySchemaWithCheck(getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite));
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                }
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 61:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), reader.readBytes());
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 62:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readUInt32()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 63:
                                int i11 = reader.readEnum();
                                Internal.EnumVerifier enumFieldVerifier2 = getEnumFieldVerifier(iPositionForFieldNumber);
                                if (enumFieldVerifier2 == null || enumFieldVerifier2.isInRange(i11)) {
                                    UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(i11));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                } else {
                                    objFilterMapUnknownEnumValues = SchemaUtil.storeUnknownEnum(fieldNumber, i11, objFilterMapUnknownEnumValues, unknownFieldSchema);
                                }
                                break;
                            case 64:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readSFixed32()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 65:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(reader.readSFixed64()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 66:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(reader.readSInt32()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 67:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(reader.readSInt64()));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            case 68:
                                UnsafeUtil.putObject(t10, offset(iTypeAndOffsetAt), reader.readGroupBySchemaWithCheck(getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite));
                                setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                break;
                            default:
                                if (objFilterMapUnknownEnumValues == null) {
                                    objFilterMapUnknownEnumValues = unknownFieldSchema.newBuilder();
                                }
                                if (!unknownFieldSchema.mergeOneFieldFrom(objFilterMapUnknownEnumValues, reader)) {
                                    for (int i12 = this.checkInitializedCount; i12 < this.repeatedFieldOffsetStart; i12++) {
                                        objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t10, this.intArray[i12], objFilterMapUnknownEnumValues, unknownFieldSchema);
                                    }
                                    if (objFilterMapUnknownEnumValues != null) {
                                        unknownFieldSchema.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                        return;
                                    }
                                    return;
                                }
                                break;
                                break;
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!unknownFieldSchema.shouldDiscardUnknownFields(reader)) {
                            if (objFilterMapUnknownEnumValues == null) {
                                objFilterMapUnknownEnumValues = unknownFieldSchema.getBuilderFromMessage(t10);
                            }
                            if (!unknownFieldSchema.mergeOneFieldFrom(objFilterMapUnknownEnumValues, reader)) {
                                for (int i13 = this.checkInitializedCount; i13 < this.repeatedFieldOffsetStart; i13++) {
                                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t10, this.intArray[i13], objFilterMapUnknownEnumValues, unknownFieldSchema);
                                }
                                if (objFilterMapUnknownEnumValues != null) {
                                    unknownFieldSchema.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                    return;
                                }
                                return;
                            }
                        } else if (!reader.skipField()) {
                            for (int i14 = this.checkInitializedCount; i14 < this.repeatedFieldOffsetStart; i14++) {
                                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t10, this.intArray[i14], objFilterMapUnknownEnumValues, unknownFieldSchema);
                            }
                            if (objFilterMapUnknownEnumValues != null) {
                                unknownFieldSchema.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        for (int i15 = this.checkInitializedCount; i15 < this.repeatedFieldOffsetStart; i15++) {
                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t10, this.intArray[i15], objFilterMapUnknownEnumValues, unknownFieldSchema);
                        }
                        if (objFilterMapUnknownEnumValues != null) {
                            unknownFieldSchema.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                            return;
                        }
                        return;
                    }
                    Object objFindExtensionByNumber = !this.hasExtensions ? null : extensionSchema.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, fieldNumber);
                    if (objFindExtensionByNumber != null) {
                        if (mutableExtensions == null) {
                            mutableExtensions = extensionSchema.getMutableExtensions(t10);
                        }
                        objFilterMapUnknownEnumValues = extensionSchema.parseExtension(reader, objFindExtensionByNumber, extensionRegistryLite, mutableExtensions, objFilterMapUnknownEnumValues, unknownFieldSchema);
                    } else if (!unknownFieldSchema.shouldDiscardUnknownFields(reader)) {
                        if (objFilterMapUnknownEnumValues == null) {
                            objFilterMapUnknownEnumValues = unknownFieldSchema.getBuilderFromMessage(t10);
                        }
                        if (unknownFieldSchema.mergeOneFieldFrom(objFilterMapUnknownEnumValues, reader)) {
                        }
                    } else if (reader.skipField()) {
                    }
                }
            } catch (Throwable th) {
                for (int i16 = this.checkInitializedCount; i16 < this.repeatedFieldOffsetStart; i16++) {
                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t10, this.intArray[i16], objFilterMapUnknownEnumValues, unknownFieldSchema);
                }
                if (objFilterMapUnknownEnumValues != null) {
                    unknownFieldSchema.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                }
                throw th;
            }
        }
        for (int i17 = this.checkInitializedCount; i17 < this.repeatedFieldOffsetStart; i17++) {
            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t10, this.intArray[i17], objFilterMapUnknownEnumValues, unknownFieldSchema);
        }
        if (objFilterMapUnknownEnumValues != null) {
            unknownFieldSchema.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
        }
    }

    private final <K, V> void mergeMap(Object obj, int i10, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) throws IOException {
        long jOffset = offset(typeAndOffsetAt(i10));
        Object object = UnsafeUtil.getObject(obj, jOffset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            UnsafeUtil.putObject(obj, jOffset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            UnsafeUtil.putObject(obj, jOffset, objNewMapField);
            object = objNewMapField;
        }
        reader.readMap(this.mapFieldSchema.forMutableMapData(object), this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    private void mergeMessage(T t10, T t11, int i10) {
        long jOffset = offset(typeAndOffsetAt(i10));
        if (isFieldPresent(t11, i10)) {
            Object object = UnsafeUtil.getObject(t10, jOffset);
            Object object2 = UnsafeUtil.getObject(t11, jOffset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t10, jOffset, Internal.mergeMessage(object, object2));
                setFieldPresent(t10, i10);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t10, jOffset, object2);
                setFieldPresent(t10, i10);
            }
        }
    }

    private void mergeOneofMessage(T t10, T t11, int i10) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        int iNumberAt = numberAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        if (isOneofPresent(t11, iNumberAt, i10)) {
            Object object = isOneofPresent(t10, iNumberAt, i10) ? UnsafeUtil.getObject(t10, jOffset) : null;
            Object object2 = UnsafeUtil.getObject(t11, jOffset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t10, jOffset, Internal.mergeMessage(object, object2));
                setOneofPresent(t10, iNumberAt, i10);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t10, jOffset, object2);
                setOneofPresent(t10, iNumberAt, i10);
            }
        }
    }

    private void mergeSingleField(T t10, T t11, int i10) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        int iNumberAt = numberAt(i10);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putDouble(t10, jOffset, UnsafeUtil.getDouble(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 1:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putFloat(t10, jOffset, UnsafeUtil.getFloat(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 2:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putLong(t10, jOffset, UnsafeUtil.getLong(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 3:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putLong(t10, jOffset, UnsafeUtil.getLong(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 4:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putInt(t10, jOffset, UnsafeUtil.getInt(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 5:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putLong(t10, jOffset, UnsafeUtil.getLong(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 6:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putInt(t10, jOffset, UnsafeUtil.getInt(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 7:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putBoolean(t10, jOffset, UnsafeUtil.getBoolean(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 8:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putObject(t10, jOffset, UnsafeUtil.getObject(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 9:
                mergeMessage(t10, t11, i10);
                break;
            case 10:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putObject(t10, jOffset, UnsafeUtil.getObject(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 11:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putInt(t10, jOffset, UnsafeUtil.getInt(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 12:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putInt(t10, jOffset, UnsafeUtil.getInt(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 13:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putInt(t10, jOffset, UnsafeUtil.getInt(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 14:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putLong(t10, jOffset, UnsafeUtil.getLong(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 15:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putInt(t10, jOffset, UnsafeUtil.getInt(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 16:
                if (isFieldPresent(t11, i10)) {
                    UnsafeUtil.putLong(t10, jOffset, UnsafeUtil.getLong(t11, jOffset));
                    setFieldPresent(t10, i10);
                }
                break;
            case 17:
                mergeMessage(t10, t11, i10);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.listFieldSchema.mergeListsAt(t10, t11, jOffset);
                break;
            case 50:
                SchemaUtil.mergeMap(this.mapFieldSchema, t10, t11, jOffset);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (isOneofPresent(t11, iNumberAt, i10)) {
                    UnsafeUtil.putObject(t10, jOffset, UnsafeUtil.getObject(t11, jOffset));
                    setOneofPresent(t10, iNumberAt, i10);
                }
                break;
            case 60:
                mergeOneofMessage(t10, t11, i10);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (isOneofPresent(t11, iNumberAt, i10)) {
                    UnsafeUtil.putObject(t10, jOffset, UnsafeUtil.getObject(t11, jOffset));
                    setOneofPresent(t10, iNumberAt, i10);
                }
                break;
            case 68:
                mergeOneofMessage(t10, t11, i10);
                break;
        }
    }

    static <T> MessageSchema<T> newSchema(Class<T> cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        return messageInfo instanceof RawMessageInfo ? newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema) : newSchemaForMessageInfo((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    static <T> MessageSchema<T> newSchemaForMessageInfo(StructuralMessageInfo structuralMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        int fieldNumber;
        int fieldNumber2;
        boolean z10 = structuralMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        FieldInfo[] fields = structuralMessageInfo.getFields();
        if (fields.length == 0) {
            fieldNumber = 0;
            fieldNumber2 = 0;
        } else {
            fieldNumber = fields[0].getFieldNumber();
            fieldNumber2 = fields[fields.length - 1].getFieldNumber();
        }
        int length = fields.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i10 = 0;
        int i11 = 0;
        for (FieldInfo fieldInfo : fields) {
            if (fieldInfo.getType() == FieldType.MAP) {
                i10++;
            } else if (fieldInfo.getType().id() >= 18 && fieldInfo.getType().id() <= 49) {
                i11++;
            }
        }
        int[] iArr2 = i10 > 0 ? new int[i10] : null;
        int[] iArr3 = i11 > 0 ? new int[i11] : null;
        int[] checkInitialized = structuralMessageInfo.getCheckInitialized();
        if (checkInitialized == null) {
            checkInitialized = EMPTY_INT_ARRAY;
        }
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < fields.length) {
            FieldInfo fieldInfo2 = fields[i12];
            int fieldNumber3 = fieldInfo2.getFieldNumber();
            storeFieldData(fieldInfo2, iArr, i13, objArr);
            if (i14 < checkInitialized.length && checkInitialized[i14] == fieldNumber3) {
                checkInitialized[i14] = i13;
                i14++;
            }
            if (fieldInfo2.getType() == FieldType.MAP) {
                iArr2[i15] = i13;
                i15++;
            } else {
                if (fieldInfo2.getType().id() >= 18 && fieldInfo2.getType().id() <= 49) {
                    iArr3[i16] = (int) UnsafeUtil.objectFieldOffset(fieldInfo2.getField());
                    i16++;
                }
                i12++;
                i13 += 3;
            }
            i12++;
            i13 += 3;
        }
        if (iArr2 == null) {
            iArr2 = EMPTY_INT_ARRAY;
        }
        if (iArr3 == null) {
            iArr3 = EMPTY_INT_ARRAY;
        }
        int[] iArr4 = new int[checkInitialized.length + iArr2.length + iArr3.length];
        System.arraycopy(checkInitialized, 0, iArr4, 0, checkInitialized.length);
        System.arraycopy(iArr2, 0, iArr4, checkInitialized.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, checkInitialized.length + iArr2.length, iArr3.length);
        return new MessageSchema<>(iArr, objArr, fieldNumber, fieldNumber2, structuralMessageInfo.getDefaultInstance(), z10, true, iArr4, checkInitialized.length, checkInitialized.length + iArr2.length, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x024d  */
    /* JADX WARN: Code duplicated, block: B:123:0x0250  */
    /* JADX WARN: Code duplicated, block: B:126:0x0268  */
    /* JADX WARN: Code duplicated, block: B:127:0x026b  */
    /* JADX WARN: Code duplicated, block: B:161:0x031a  */
    /* JADX WARN: Code duplicated, block: B:162:0x031c  */
    /* JADX WARN: Code duplicated, block: B:164:0x031f  */
    /* JADX WARN: Code duplicated, block: B:179:0x036e  */
    /* JADX WARN: Code duplicated, block: B:182:0x037c  */
    static <T> MessageSchema<T> newSchemaForRawMessageInfo(RawMessageInfo rawMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int iCharAt5;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        char cCharAt;
        int i14;
        char cCharAt2;
        int i15;
        char cCharAt3;
        int i16;
        char cCharAt4;
        int i17;
        char cCharAt5;
        int i18;
        char cCharAt6;
        int i19;
        char cCharAt7;
        int i20;
        char cCharAt8;
        int i21;
        int i22;
        int i23;
        int i24;
        int iObjectFieldOffset;
        boolean z10;
        int iObjectFieldOffset2;
        int i25;
        int i26;
        java.lang.reflect.Field fieldReflectField;
        char cCharAt9;
        int i27;
        int i28;
        int i29;
        Object obj;
        java.lang.reflect.Field fieldReflectField2;
        int i30;
        Object obj2;
        java.lang.reflect.Field fieldReflectField3;
        int i31;
        char cCharAt10;
        int i32;
        char cCharAt11;
        int i33;
        char cCharAt12;
        int i34;
        char cCharAt13;
        boolean z11 = rawMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        String stringInfo = rawMessageInfo.getStringInfo();
        int length = stringInfo.length();
        char c10 = 55296;
        if (stringInfo.charAt(0) >= 55296) {
            int i35 = 1;
            while (true) {
                i10 = i35 + 1;
                if (stringInfo.charAt(i35) < 55296) {
                    break;
                }
                i35 = i10;
            }
        } else {
            i10 = 1;
        }
        int i36 = i10 + 1;
        int iCharAt6 = stringInfo.charAt(i10);
        if (iCharAt6 >= 55296) {
            int i37 = iCharAt6 & 8191;
            int i38 = 13;
            while (true) {
                i34 = i36 + 1;
                cCharAt13 = stringInfo.charAt(i36);
                if (cCharAt13 < 55296) {
                    break;
                }
                i37 |= (cCharAt13 & 8191) << i38;
                i38 += 13;
                i36 = i34;
            }
            iCharAt6 = i37 | (cCharAt13 << i38);
            i36 = i34;
        }
        if (iCharAt6 == 0) {
            iArr = EMPTY_INT_ARRAY;
            i12 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            iCharAt4 = 0;
            iCharAt5 = 0;
            i11 = 0;
        } else {
            int i39 = i36 + 1;
            int iCharAt7 = stringInfo.charAt(i36);
            if (iCharAt7 >= 55296) {
                int i40 = iCharAt7 & 8191;
                int i41 = 13;
                while (true) {
                    i20 = i39 + 1;
                    cCharAt8 = stringInfo.charAt(i39);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt8 & 8191) << i41;
                    i41 += 13;
                    i39 = i20;
                }
                iCharAt7 = i40 | (cCharAt8 << i41);
                i39 = i20;
            }
            int i42 = i39 + 1;
            int iCharAt8 = stringInfo.charAt(i39);
            if (iCharAt8 >= 55296) {
                int i43 = iCharAt8 & 8191;
                int i44 = 13;
                while (true) {
                    i19 = i42 + 1;
                    cCharAt7 = stringInfo.charAt(i42);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt7 & 8191) << i44;
                    i44 += 13;
                    i42 = i19;
                }
                iCharAt8 = i43 | (cCharAt7 << i44);
                i42 = i19;
            }
            int i45 = i42 + 1;
            iCharAt = stringInfo.charAt(i42);
            if (iCharAt >= 55296) {
                int i46 = iCharAt & 8191;
                int i47 = 13;
                while (true) {
                    i18 = i45 + 1;
                    cCharAt6 = stringInfo.charAt(i45);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt6 & 8191) << i47;
                    i47 += 13;
                    i45 = i18;
                }
                iCharAt = i46 | (cCharAt6 << i47);
                i45 = i18;
            }
            int i48 = i45 + 1;
            iCharAt2 = stringInfo.charAt(i45);
            if (iCharAt2 >= 55296) {
                int i49 = iCharAt2 & 8191;
                int i50 = 13;
                while (true) {
                    i17 = i48 + 1;
                    cCharAt5 = stringInfo.charAt(i48);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt5 & 8191) << i50;
                    i50 += 13;
                    i48 = i17;
                }
                iCharAt2 = i49 | (cCharAt5 << i50);
                i48 = i17;
            }
            int i51 = i48 + 1;
            iCharAt3 = stringInfo.charAt(i48);
            if (iCharAt3 >= 55296) {
                int i52 = iCharAt3 & 8191;
                int i53 = 13;
                while (true) {
                    i16 = i51 + 1;
                    cCharAt4 = stringInfo.charAt(i51);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt4 & 8191) << i53;
                    i53 += 13;
                    i51 = i16;
                }
                iCharAt3 = i52 | (cCharAt4 << i53);
                i51 = i16;
            }
            int i54 = i51 + 1;
            iCharAt4 = stringInfo.charAt(i51);
            if (iCharAt4 >= 55296) {
                int i55 = iCharAt4 & 8191;
                int i56 = 13;
                while (true) {
                    i15 = i54 + 1;
                    cCharAt3 = stringInfo.charAt(i54);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt3 & 8191) << i56;
                    i56 += 13;
                    i54 = i15;
                }
                iCharAt4 = i55 | (cCharAt3 << i56);
                i54 = i15;
            }
            int i57 = i54 + 1;
            int iCharAt9 = stringInfo.charAt(i54);
            if (iCharAt9 >= 55296) {
                int i58 = iCharAt9 & 8191;
                int i59 = 13;
                while (true) {
                    i14 = i57 + 1;
                    cCharAt2 = stringInfo.charAt(i57);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i58 |= (cCharAt2 & 8191) << i59;
                    i59 += 13;
                    i57 = i14;
                }
                iCharAt9 = i58 | (cCharAt2 << i59);
                i57 = i14;
            }
            int i60 = i57 + 1;
            iCharAt5 = stringInfo.charAt(i57);
            if (iCharAt5 >= 55296) {
                int i61 = iCharAt5 & 8191;
                int i62 = 13;
                while (true) {
                    i13 = i60 + 1;
                    cCharAt = stringInfo.charAt(i60);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i61 |= (cCharAt & 8191) << i62;
                    i62 += 13;
                    i60 = i13;
                }
                iCharAt5 = i61 | (cCharAt << i62);
                i60 = i13;
            }
            iArr = new int[iCharAt5 + iCharAt4 + iCharAt9];
            i11 = (iCharAt7 * 2) + iCharAt8;
            i12 = iCharAt7;
            i36 = i60;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objects = rawMessageInfo.getObjects();
        Class<?> cls = rawMessageInfo.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr = new Object[iCharAt3 * 2];
        int i63 = iCharAt5 + iCharAt4;
        int i64 = iCharAt5;
        int i65 = i63;
        int i66 = 0;
        int i67 = 0;
        while (i36 < length) {
            int i68 = i36 + 1;
            int iCharAt10 = stringInfo.charAt(i36);
            if (iCharAt10 >= c10) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i33 = i70 + 1;
                    cCharAt12 = stringInfo.charAt(i70);
                    if (cCharAt12 < c10) {
                        break;
                    }
                    i69 |= (cCharAt12 & 8191) << i71;
                    i71 += 13;
                    i70 = i33;
                }
                iCharAt10 = i69 | (cCharAt12 << i71);
                i21 = i33;
            } else {
                i21 = i68;
            }
            int i72 = i21 + 1;
            int iCharAt11 = stringInfo.charAt(i21);
            if (iCharAt11 >= c10) {
                int i73 = iCharAt11 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i32 = i74 + 1;
                    cCharAt11 = stringInfo.charAt(i74);
                    i22 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i73 |= (cCharAt11 & 8191) << i75;
                    i75 += 13;
                    i74 = i32;
                    length = i22;
                }
                iCharAt11 = i73 | (cCharAt11 << i75);
                i23 = i32;
            } else {
                i22 = length;
                i23 = i72;
            }
            int i76 = iCharAt11 & 255;
            int i77 = iCharAt5;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i66] = i67;
                i66++;
            }
            int i78 = i66;
            if (i76 >= 51) {
                int i79 = i23 + 1;
                int iCharAt12 = stringInfo.charAt(i23);
                char c11 = 55296;
                if (iCharAt12 >= 55296) {
                    int i80 = iCharAt12 & 8191;
                    int i81 = 13;
                    while (true) {
                        i31 = i79 + 1;
                        cCharAt10 = stringInfo.charAt(i79);
                        if (cCharAt10 < c11) {
                            break;
                        }
                        i80 |= (cCharAt10 & 8191) << i81;
                        i81 += 13;
                        i79 = i31;
                        c11 = 55296;
                    }
                    iCharAt12 = i80 | (cCharAt10 << i81);
                    i79 = i31;
                }
                int i82 = i76 - 51;
                int i83 = i79;
                if (i82 == 9 || i82 == 17) {
                    i28 = i11 + 1;
                    objArr[((i67 / 3) * 2) + 1] = objects[i11];
                } else {
                    if (i82 == 12 && !z11) {
                        i28 = i11 + 1;
                        objArr[((i67 / 3) * 2) + 1] = objects[i11];
                    }
                    i29 = iCharAt12 * 2;
                    obj = objects[i29];
                    if (obj instanceof java.lang.reflect.Field) {
                        fieldReflectField2 = (java.lang.reflect.Field) obj;
                    } else {
                        fieldReflectField2 = reflectField(cls, (String) obj);
                        objects[i29] = fieldReflectField2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                    i30 = i29 + 1;
                    obj2 = objects[i30];
                    if (obj2 instanceof java.lang.reflect.Field) {
                        fieldReflectField3 = (java.lang.reflect.Field) obj2;
                    } else {
                        fieldReflectField3 = reflectField(cls, (String) obj2);
                        objects[i30] = fieldReflectField3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                    stringInfo = stringInfo;
                    z11 = z11;
                    objArr = objArr;
                    i25 = i83;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i26 = 0;
                }
                i11 = i28;
                i29 = iCharAt12 * 2;
                obj = objects[i29];
                if (obj instanceof java.lang.reflect.Field) {
                    fieldReflectField2 = (java.lang.reflect.Field) obj;
                } else {
                    fieldReflectField2 = reflectField(cls, (String) obj);
                    objects[i29] = fieldReflectField2;
                }
                int iObjectFieldOffset5 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                i30 = i29 + 1;
                obj2 = objects[i30];
                if (obj2 instanceof java.lang.reflect.Field) {
                    fieldReflectField3 = (java.lang.reflect.Field) obj2;
                } else {
                    fieldReflectField3 = reflectField(cls, (String) obj2);
                    objects[i30] = fieldReflectField3;
                }
                int iObjectFieldOffset6 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                stringInfo = stringInfo;
                z11 = z11;
                objArr = objArr;
                i25 = i83;
                iObjectFieldOffset2 = iObjectFieldOffset6;
                iObjectFieldOffset = iObjectFieldOffset5;
                i26 = 0;
            } else {
                int i84 = i11 + 1;
                java.lang.reflect.Field fieldReflectField4 = reflectField(cls, (String) objects[i11]);
                if (i76 == 9 || i76 == 17) {
                    objArr[((i67 / 3) * 2) + 1] = fieldReflectField4.getType();
                } else {
                    if (i76 == 27 || i76 == 49) {
                        i27 = i84 + 1;
                        objArr[((i67 / 3) * 2) + 1] = objects[i84];
                    } else if (i76 == 12 || i76 == 30 || i76 == 44) {
                        if (!z11) {
                            i27 = i84 + 1;
                            objArr[((i67 / 3) * 2) + 1] = objects[i84];
                        }
                    } else if (i76 == 50) {
                        int i85 = i64 + 1;
                        iArr[i64] = i67;
                        int i86 = (i67 / 3) * 2;
                        int i87 = i84 + 1;
                        objArr[i86] = objects[i84];
                        if ((iCharAt11 & 2048) != 0) {
                            i84 = i87 + 1;
                            objArr[i86 + 1] = objects[i87];
                            i64 = i85;
                        } else {
                            i64 = i85;
                            i24 = i87;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                        int i88 = i24;
                        if ((iCharAt11 & 4096) == 4096) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (z10 || i76 > 17) {
                            iObjectFieldOffset2 = 1048575;
                            i25 = i23;
                            i26 = 0;
                        } else {
                            int i89 = i23 + 1;
                            int iCharAt13 = stringInfo.charAt(i23);
                            if (iCharAt13 >= 55296) {
                                int i90 = iCharAt13 & 8191;
                                int i91 = 13;
                                while (true) {
                                    i25 = i89 + 1;
                                    cCharAt9 = stringInfo.charAt(i89);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i90 |= (cCharAt9 & 8191) << i91;
                                    i91 += 13;
                                    i89 = i25;
                                }
                                iCharAt13 = i90 | (cCharAt9 << i91);
                            } else {
                                i25 = i89;
                            }
                            int i92 = (i12 * 2) + (iCharAt13 / 32);
                            Object obj3 = objects[i92];
                            if (obj3 instanceof java.lang.reflect.Field) {
                                fieldReflectField = (java.lang.reflect.Field) obj3;
                            } else {
                                fieldReflectField = reflectField(cls, (String) obj3);
                                objects[i92] = fieldReflectField;
                            }
                            i26 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField);
                        }
                        if (i76 >= 18 && i76 <= 49) {
                            iArr[i65] = iObjectFieldOffset;
                            i65++;
                        }
                        i11 = i88;
                    }
                    i24 = i27;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                    int i810 = i24;
                    if ((iCharAt11 & 4096) == 4096) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        iObjectFieldOffset2 = 1048575;
                        i25 = i23;
                        i26 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i25 = i23;
                        i26 = 0;
                    }
                    if (i76 >= 18) {
                        iArr[i65] = iObjectFieldOffset;
                        i65++;
                    }
                    i11 = i810;
                }
                i24 = i84;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                int i811 = i24;
                if ((iCharAt11 & 4096) == 4096) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    iObjectFieldOffset2 = 1048575;
                    i25 = i23;
                    i26 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i25 = i23;
                    i26 = 0;
                }
                if (i76 >= 18) {
                    iArr[i65] = iObjectFieldOffset;
                    i65++;
                }
                i11 = i811;
            }
            int i93 = i67 + 1;
            iArr2[i67] = iCharAt10;
            int i94 = i93 + 1;
            iArr2[i93] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i76 << 20) | iObjectFieldOffset;
            i67 = i94 + 1;
            iArr2[i94] = (i26 << 20) | iObjectFieldOffset2;
            z11 = z11;
            objArr = objArr;
            iCharAt = iCharAt;
            iCharAt5 = i77;
            length = i22;
            i36 = i25;
            i66 = i78;
            stringInfo = stringInfo;
            iCharAt2 = iCharAt2;
            c10 = 55296;
        }
        return new MessageSchema<>(iArr2, objArr, iCharAt, iCharAt2, rawMessageInfo.getDefaultInstance(), z11, false, iArr, iCharAt5, i63, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    private int numberAt(int i10) {
        return this.buffer[i10];
    }

    private static long offset(int i10) {
        return i10 & 1048575;
    }

    private static <T> boolean oneofBooleanAt(T t10, long j10) {
        return ((Boolean) UnsafeUtil.getObject(t10, j10)).booleanValue();
    }

    private static <T> double oneofDoubleAt(T t10, long j10) {
        return ((Double) UnsafeUtil.getObject(t10, j10)).doubleValue();
    }

    private static <T> float oneofFloatAt(T t10, long j10) {
        return ((Float) UnsafeUtil.getObject(t10, j10)).floatValue();
    }

    private static <T> int oneofIntAt(T t10, long j10) {
        return ((Integer) UnsafeUtil.getObject(t10, j10)).intValue();
    }

    private static <T> long oneofLongAt(T t10, long j10) {
        return ((Long) UnsafeUtil.getObject(t10, j10)).longValue();
    }

    private <K, V> int parseMapField(T t10, byte[] bArr, int i10, int i11, int i12, long j10, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i12);
        Object object = unsafe.getObject(t10, j10);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            unsafe.putObject(t10, j10, objNewMapField);
            object = objNewMapField;
        }
        return decodeMapEntry(bArr, i10, i11, this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry), this.mapFieldSchema.forMutableMapData(object), registers);
    }

    private int parseOneofField(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j11 = this.buffer[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Double.valueOf(ArrayDecoders.decodeDouble(bArr, i10)));
                int i18 = i10 + 8;
                unsafe.putInt(t10, j11, i13);
                return i18;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Float.valueOf(ArrayDecoders.decodeFloat(bArr, i10)));
                int i19 = i10 + 4;
                unsafe.putInt(t10, j11, i13);
                return i19;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i10, registers);
                unsafe.putObject(t10, j10, Long.valueOf(registers.long1));
                unsafe.putInt(t10, j11, i13);
                return iDecodeVarint64;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
                unsafe.putObject(t10, j10, Integer.valueOf(registers.int1));
                unsafe.putInt(t10, j11, i13);
                return iDecodeVarint32;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i10)));
                int i20 = i10 + 8;
                unsafe.putInt(t10, j11, i13);
                return i20;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t10, j10, Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i10)));
                int i21 = i10 + 4;
                unsafe.putInt(t10, j11, i13);
                return i21;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint65 = ArrayDecoders.decodeVarint64(bArr, i10, registers);
                unsafe.putObject(t10, j10, Boolean.valueOf(registers.long1 != 0));
                unsafe.putInt(t10, j11, i13);
                return iDecodeVarint65;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iDecodeVarint33 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
                int i22 = registers.int1;
                if (i22 == 0) {
                    unsafe.putObject(t10, j10, "");
                } else {
                    if ((i15 & 536870912) != 0 && !Utf8.isValidUtf8(bArr, iDecodeVarint33, iDecodeVarint33 + i22)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(t10, j10, new String(bArr, iDecodeVarint33, i22, Internal.UTF_8));
                    iDecodeVarint33 += i22;
                }
                unsafe.putInt(t10, j11, i13);
                return iDecodeVarint33;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iDecodeMessageField = ArrayDecoders.decodeMessageField(getMessageFieldSchema(i17), bArr, i10, i11, registers);
                Object object = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object == null) {
                    unsafe.putObject(t10, j10, registers.object1);
                } else {
                    unsafe.putObject(t10, j10, Internal.mergeMessage(object, registers.object1));
                }
                unsafe.putInt(t10, j11, i13);
                return iDecodeMessageField;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iDecodeBytes = ArrayDecoders.decodeBytes(bArr, i10, registers);
                unsafe.putObject(t10, j10, registers.object1);
                unsafe.putInt(t10, j11, i13);
                return iDecodeBytes;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint34 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
                int i23 = registers.int1;
                Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i17);
                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i23)) {
                    unsafe.putObject(t10, j10, Integer.valueOf(i23));
                    unsafe.putInt(t10, j11, i13);
                } else {
                    getMutableUnknownFields(t10).storeField(i12, Long.valueOf(i23));
                }
                return iDecodeVarint34;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint35 = ArrayDecoders.decodeVarint32(bArr, i10, registers);
                unsafe.putObject(t10, j10, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1)));
                unsafe.putInt(t10, j11, i13);
                return iDecodeVarint35;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint66 = ArrayDecoders.decodeVarint64(bArr, i10, registers);
                unsafe.putObject(t10, j10, Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1)));
                unsafe.putInt(t10, j11, i13);
                return iDecodeVarint66;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iDecodeGroupField = ArrayDecoders.decodeGroupField(getMessageFieldSchema(i17), bArr, i10, i11, (i12 & (-8)) | 4, registers);
                Object object2 = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                if (object2 == null) {
                    unsafe.putObject(t10, j10, registers.object1);
                } else {
                    unsafe.putObject(t10, j10, Internal.mergeMessage(object2, registers.object1));
                }
                unsafe.putInt(t10, j11, i13);
                return iDecodeGroupField;
            default:
                return i10;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 8721. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private int parseProto3Message(T r30, byte[] r31, int r32, int r33, com.google.protobuf.ArrayDecoders.Registers r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.MessageSchema.parseProto3Message(java.lang.Object, byte[], int, int, com.google.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int parseRepeatedField(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, ArrayDecoders.Registers registers) throws IOException {
        int iDecodeVarint32List;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe.getObject(t10, j11);
        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
            int size = protobufListMutableCopyWithCapacity2.size();
            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            unsafe.putObject(t10, j11, protobufListMutableCopyWithCapacity2);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedDoubleList(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 1 ? ArrayDecoders.decodeDoubleList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 19:
            case 36:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedFloatList(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 5 ? ArrayDecoders.decodeFloatList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedVarint64List(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 0 ? ArrayDecoders.decodeVarint64List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedVarint32List(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 0 ? ArrayDecoders.decodeVarint32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedFixed64List(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 1 ? ArrayDecoders.decodeFixed64List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedFixed32List(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 5 ? ArrayDecoders.decodeFixed32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 25:
            case 42:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedBoolList(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 0 ? ArrayDecoders.decodeBoolList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 26:
                if (i14 == 2) {
                    return (j10 & 536870912) == 0 ? ArrayDecoders.decodeStringList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : ArrayDecoders.decodeStringListRequireUtf8(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers);
                }
                return i10;
            case 27:
                return i14 == 2 ? ArrayDecoders.decodeMessageList(getMessageFieldSchema(i15), i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 28:
                return i14 == 2 ? ArrayDecoders.decodeBytesList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 30:
            case 44:
                if (i14 == 2) {
                    iDecodeVarint32List = ArrayDecoders.decodePackedVarint32List(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                } else {
                    if (i14 != 0) {
                        return i10;
                    }
                    iDecodeVarint32List = ArrayDecoders.decodeVarint32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t10;
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
                    unknownFieldSetLite = null;
                }
                UnknownFieldSetLite unknownFieldSetLite2 = (UnknownFieldSetLite) SchemaUtil.filterUnknownEnumList(i13, (List<Integer>) protobufListMutableCopyWithCapacity2, getEnumFieldVerifier(i15), unknownFieldSetLite, (UnknownFieldSchema<UT, UnknownFieldSetLite>) this.unknownFieldSchema);
                if (unknownFieldSetLite2 != null) {
                    generatedMessageLite.unknownFields = unknownFieldSetLite2;
                }
                return iDecodeVarint32List;
            case 33:
            case 47:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedSInt32List(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 0 ? ArrayDecoders.decodeSInt32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 34:
            case 48:
                if (i14 == 2) {
                    return ArrayDecoders.decodePackedSInt64List(bArr, i10, protobufListMutableCopyWithCapacity2, registers);
                }
                return i14 == 0 ? ArrayDecoders.decodeSInt64List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            case 49:
                return i14 == 3 ? ArrayDecoders.decodeGroupList(getMessageFieldSchema(i15), i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, registers) : i10;
            default:
                return i10;
        }
    }

    private int positionForFieldNumber(int i10) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i10, 0);
    }

    private int presenceMaskAndOffsetAt(int i10) {
        return this.buffer[i10 + 2];
    }

    private <E> void readGroupList(Object obj, long j10, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.readGroupList(this.listFieldSchema.mutableListAt(obj, j10), schema, extensionRegistryLite);
    }

    private <E> void readMessageList(Object obj, int i10, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i10)), schema, extensionRegistryLite);
    }

    private void readString(Object obj, int i10, Reader reader) throws IOException {
        if (isEnforceUtf8(i10)) {
            UnsafeUtil.putObject(obj, offset(i10), reader.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.putObject(obj, offset(i10), reader.readString());
        } else {
            UnsafeUtil.putObject(obj, offset(i10), reader.readBytes());
        }
    }

    private void readStringList(Object obj, int i10, Reader reader) throws IOException {
        if (isEnforceUtf8(i10)) {
            reader.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i10)));
        } else {
            reader.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i10)));
        }
    }

    private static java.lang.reflect.Field reflectField(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            java.lang.reflect.Field[] declaredFields = cls.getDeclaredFields();
            for (java.lang.reflect.Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private void setFieldPresent(T t10, int i10) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10);
        long j10 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j10 == 1048575) {
            return;
        }
        UnsafeUtil.putInt(t10, j10, (1 << (iPresenceMaskAndOffsetAt >>> 20)) | UnsafeUtil.getInt(t10, j10));
    }

    private void setOneofPresent(T t10, int i10, int i11) {
        UnsafeUtil.putInt(t10, presenceMaskAndOffsetAt(i11) & 1048575, i10);
    }

    private int slowPositionForFieldNumber(int i10, int i11) {
        int length = (this.buffer.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int iNumberAt = numberAt(i13);
            if (i10 == iNumberAt) {
                return i13;
            }
            if (i10 < iNumberAt) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0079  */
    /* JADX WARN: Code duplicated, block: B:23:0x007c  */
    /* JADX WARN: Code duplicated, block: B:26:0x0083  */
    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:? A[RETURN, SYNTHETIC] */
    private static void storeFieldData(FieldInfo fieldInfo, int[] iArr, int i10, Object[] objArr) {
        int iObjectFieldOffset;
        int iId;
        long jObjectFieldOffset;
        int iObjectFieldOffset2;
        int iNumberOfTrailingZeros;
        int i11;
        Class<?> messageFieldClass;
        int i12;
        OneofInfo oneof = fieldInfo.getOneof();
        if (oneof == null) {
            FieldType type = fieldInfo.getType();
            iObjectFieldOffset = (int) UnsafeUtil.objectFieldOffset(fieldInfo.getField());
            iId = type.id();
            if (type.isList() || type.isMap()) {
                if (fieldInfo.getCachedSizeField() == null) {
                    iObjectFieldOffset2 = 0;
                } else {
                    jObjectFieldOffset = UnsafeUtil.objectFieldOffset(fieldInfo.getCachedSizeField());
                }
                iNumberOfTrailingZeros = 0;
            } else {
                java.lang.reflect.Field presenceField = fieldInfo.getPresenceField();
                iObjectFieldOffset2 = presenceField == null ? 1048575 : (int) UnsafeUtil.objectFieldOffset(presenceField);
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(fieldInfo.getPresenceMask());
            }
            iArr[i10] = fieldInfo.getFieldNumber();
            int i13 = i10 + 1;
            if (fieldInfo.isEnforceUtf8()) {
                i11 = 536870912;
            } else {
                i11 = 0;
            }
            iArr[i13] = (fieldInfo.isRequired() ? 268435456 : 0) | i11 | (iId << 20) | iObjectFieldOffset;
            iArr[i10 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
            messageFieldClass = fieldInfo.getMessageFieldClass();
            if (fieldInfo.getMapDefaultEntry() != null) {
                if (messageFieldClass != null) {
                    objArr[((i10 / 3) * 2) + 1] = messageFieldClass;
                    return;
                } else {
                    if (fieldInfo.getEnumVerifier() != null) {
                        objArr[((i10 / 3) * 2) + 1] = fieldInfo.getEnumVerifier();
                        return;
                    }
                    return;
                }
            }
            i12 = (i10 / 3) * 2;
            objArr[i12] = fieldInfo.getMapDefaultEntry();
            if (messageFieldClass != null) {
                objArr[i12 + 1] = messageFieldClass;
            } else if (fieldInfo.getEnumVerifier() != null) {
                objArr[i12 + 1] = fieldInfo.getEnumVerifier();
            }
        }
        iId = fieldInfo.getType().id() + 51;
        iObjectFieldOffset = (int) UnsafeUtil.objectFieldOffset(oneof.getValueField());
        jObjectFieldOffset = UnsafeUtil.objectFieldOffset(oneof.getCaseField());
        iObjectFieldOffset2 = (int) jObjectFieldOffset;
        iNumberOfTrailingZeros = 0;
        iArr[i10] = fieldInfo.getFieldNumber();
        int i14 = i10 + 1;
        if (fieldInfo.isEnforceUtf8()) {
            i11 = 536870912;
        } else {
            i11 = 0;
        }
        iArr[i14] = (fieldInfo.isRequired() ? 268435456 : 0) | i11 | (iId << 20) | iObjectFieldOffset;
        iArr[i10 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
        messageFieldClass = fieldInfo.getMessageFieldClass();
        if (fieldInfo.getMapDefaultEntry() != null) {
            if (messageFieldClass != null) {
                objArr[((i10 / 3) * 2) + 1] = messageFieldClass;
                return;
            } else {
                if (fieldInfo.getEnumVerifier() != null) {
                    objArr[((i10 / 3) * 2) + 1] = fieldInfo.getEnumVerifier();
                    return;
                }
                return;
            }
        }
        i12 = (i10 / 3) * 2;
        objArr[i12] = fieldInfo.getMapDefaultEntry();
        if (messageFieldClass != null) {
            objArr[i12 + 1] = messageFieldClass;
        } else if (fieldInfo.getEnumVerifier() != null) {
            objArr[i12 + 1] = fieldInfo.getEnumVerifier();
        }
    }

    private static int type(int i10) {
        return (i10 & FIELD_TYPE_MASK) >>> 20;
    }

    private int typeAndOffsetAt(int i10) {
        return this.buffer[i10 + 1];
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInAscendingOrderProto2(T t10, Writer writer) throws IOException {
        Iterator it2;
        Map.Entry<?, ?> entry;
        int i10;
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t10);
            if (extensions.isEmpty()) {
                it2 = null;
                entry = null;
            } else {
                it2 = extensions.iterator();
                entry = (Map.Entry) it2.next();
            }
        } else {
            it2 = null;
            entry = null;
        }
        int length = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 1048575;
        int i14 = 0;
        while (i12 < length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i12);
            int iNumberAt = numberAt(i12);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                int i15 = this.buffer[i12 + 2];
                int i16 = i15 & i11;
                if (i16 != i13) {
                    i14 = unsafe.getInt(t10, i16);
                    i13 = i16;
                }
                i10 = 1 << (i15 >>> 20);
            } else {
                i10 = 0;
            }
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if ((i10 & i14) != 0) {
                        writer.writeDouble(iNumberAt, doubleAt(t10, jOffset));
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 1:
                    if ((i10 & i14) != 0) {
                        writer.writeFloat(iNumberAt, floatAt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 2:
                    if ((i10 & i14) != 0) {
                        writer.writeInt64(iNumberAt, unsafe.getLong(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 3:
                    if ((i10 & i14) != 0) {
                        writer.writeUInt64(iNumberAt, unsafe.getLong(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 4:
                    if ((i10 & i14) != 0) {
                        writer.writeInt32(iNumberAt, unsafe.getInt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 5:
                    if ((i10 & i14) != 0) {
                        writer.writeFixed64(iNumberAt, unsafe.getLong(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 6:
                    if ((i10 & i14) != 0) {
                        writer.writeFixed32(iNumberAt, unsafe.getInt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 7:
                    if ((i10 & i14) != 0) {
                        writer.writeBool(iNumberAt, booleanAt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 8:
                    if ((i10 & i14) != 0) {
                        writeString(iNumberAt, unsafe.getObject(t10, jOffset), writer);
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 9:
                    if ((i10 & i14) != 0) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t10, jOffset), getMessageFieldSchema(i12));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 10:
                    if ((i10 & i14) != 0) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 11:
                    if ((i10 & i14) != 0) {
                        writer.writeUInt32(iNumberAt, unsafe.getInt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 12:
                    if ((i10 & i14) != 0) {
                        writer.writeEnum(iNumberAt, unsafe.getInt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 13:
                    if ((i10 & i14) != 0) {
                        writer.writeSFixed32(iNumberAt, unsafe.getInt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 14:
                    if ((i10 & i14) != 0) {
                        writer.writeSFixed64(iNumberAt, unsafe.getLong(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 15:
                    if ((i10 & i14) != 0) {
                        writer.writeSInt32(iNumberAt, unsafe.getInt(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 16:
                    if ((i10 & i14) != 0) {
                        writer.writeSInt64(iNumberAt, unsafe.getLong(t10, jOffset));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 17:
                    if ((i10 & i14) != 0) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t10, jOffset), getMessageFieldSchema(i12));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, getMessageFieldSchema(i12));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, false);
                    continue;
                    i12 += 3;
                    i11 = 1048575;
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(i12), (List) unsafe.getObject(t10, jOffset), writer, getMessageFieldSchema(i12));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, unsafe.getObject(t10, jOffset), i12);
                    break;
                case 51:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t10, jOffset));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t10, jOffset));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t10, jOffset));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t10, jOffset));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t10, jOffset));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t10, jOffset));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t10, jOffset));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t10, jOffset));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writeString(iNumberAt, unsafe.getObject(t10, jOffset), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t10, jOffset), getMessageFieldSchema(i12));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t10, jOffset));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t10, jOffset));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t10, jOffset));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t10, jOffset));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t10, jOffset));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t10, jOffset));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t10, jOffset));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t10, jOffset), getMessageFieldSchema(i12));
                    }
                    break;
            }
            i12 += 3;
            i11 = 1048575;
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t10, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    private void writeFieldsInAscendingOrderProto3(T t10, Writer writer) throws IOException {
        Iterator it2;
        Map.Entry<?, ?> entry;
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t10);
            if (extensions.isEmpty()) {
                it2 = null;
                entry = null;
            } else {
                it2 = extensions.iterator();
                entry = (Map.Entry) it2.next();
            }
        } else {
            it2 = null;
            entry = null;
        }
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i10);
            int iNumberAt = numberAt(i10);
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeDouble(iNumberAt, doubleAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeFloat(iNumberAt, floatAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeInt64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeUInt64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeInt32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeFixed64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeFixed32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeBool(iNumberAt, booleanAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t10, i10)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeUInt32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeEnum(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeSFixed32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeSFixed64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeSInt32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeSInt64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t10, i10)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(i10));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(i10), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(i10));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), i10);
                    break;
                case 51:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t10, iNumberAt, i10)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t10, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInDescendingOrder(T t10, Writer writer) throws IOException {
        Iterator itDescendingIterator;
        Map.Entry<?, ?> entry;
        writeUnknownInMessageTo(this.unknownFieldSchema, t10, writer);
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t10);
            if (extensions.isEmpty()) {
                itDescendingIterator = null;
                entry = null;
            } else {
                itDescendingIterator = extensions.descendingIterator();
                entry = (Map.Entry) itDescendingIterator.next();
            }
        } else {
            itDescendingIterator = null;
            entry = null;
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(length);
            int iNumberAt = numberAt(length);
            while (entry != null && this.extensionSchema.extensionNumber(entry) > iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t10, length)) {
                        writer.writeDouble(iNumberAt, doubleAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t10, length)) {
                        writer.writeFloat(iNumberAt, floatAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t10, length)) {
                        writer.writeInt64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t10, length)) {
                        writer.writeUInt64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t10, length)) {
                        writer.writeInt32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t10, length)) {
                        writer.writeFixed64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t10, length)) {
                        writer.writeFixed32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t10, length)) {
                        writer.writeBool(iNumberAt, booleanAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t10, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t10, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t10, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t10, length)) {
                        writer.writeUInt32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t10, length)) {
                        writer.writeEnum(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t10, length)) {
                        writer.writeSFixed32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t10, length)) {
                        writer.writeSFixed64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t10, length)) {
                        writer.writeSInt32(iNumberAt, intAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t10, length)) {
                        writer.writeSInt64(iNumberAt, longAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t10, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 18:
                    SchemaUtil.writeDoubleList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    SchemaUtil.writeFloatList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    SchemaUtil.writeInt64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    SchemaUtil.writeUInt64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    SchemaUtil.writeInt32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    SchemaUtil.writeFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    SchemaUtil.writeFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    SchemaUtil.writeBoolList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    SchemaUtil.writeStringList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    SchemaUtil.writeMessageList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 28:
                    SchemaUtil.writeBytesList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 29:
                    SchemaUtil.writeUInt32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    SchemaUtil.writeEnumList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 31:
                    SchemaUtil.writeSFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    SchemaUtil.writeSFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    SchemaUtil.writeSInt32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    SchemaUtil.writeSInt64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    SchemaUtil.writeDoubleList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    SchemaUtil.writeFloatList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    SchemaUtil.writeInt64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    SchemaUtil.writeUInt64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    SchemaUtil.writeInt32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    SchemaUtil.writeFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    SchemaUtil.writeFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    SchemaUtil.writeBoolList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    SchemaUtil.writeUInt32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    SchemaUtil.writeEnumList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    SchemaUtil.writeSFixed32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    SchemaUtil.writeSFixed64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    SchemaUtil.writeSInt32List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 48:
                    SchemaUtil.writeSInt64List(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 49:
                    SchemaUtil.writeGroupList(numberAt(length), (List) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), length);
                    break;
                case 51:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writeString(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeMessage(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t10, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t10, iNumberAt, length)) {
                        writer.writeGroup(iNumberAt, UnsafeUtil.getObject(t10, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
        }
    }

    private <K, V> void writeMapHelper(Writer writer, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            writer.writeMap(i10, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i11)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void writeString(int i10, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i10, (String) obj);
        } else {
            writer.writeBytes(i10, (ByteString) obj);
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t10, Writer writer) throws IOException {
        unknownFieldSchema.writeTo(unknownFieldSchema.getFromMessage(t10), writer);
    }

    @Override // com.google.protobuf.Schema
    public boolean equals(T t10, T t11) {
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!equals(t10, t11, i10)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(t10).equals(this.unknownFieldSchema.getFromMessage(t11))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t10).equals(this.extensionSchema.getExtensions(t11));
        }
        return true;
    }

    int getSchemaSize() {
        return this.buffer.length * 3;
    }

    @Override // com.google.protobuf.Schema
    public int getSerializedSize(T t10) {
        return this.proto3 ? getSerializedSizeProto3(t10) : getSerializedSizeProto2(t10);
    }

    @Override // com.google.protobuf.Schema
    public int hashCode(T t10) {
        int i10;
        int iHashLong;
        int length = this.buffer.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i12);
            int iNumberAt = numberAt(i12);
            long jOffset = offset(iTypeAndOffsetAt);
            int iHashCode = 37;
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(t10, jOffset)));
                    i11 = i10 + iHashLong;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iHashLong = Float.floatToIntBits(UnsafeUtil.getFloat(t10, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t10, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t10, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getInt(t10, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t10, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getInt(t10, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashBoolean(UnsafeUtil.getBoolean(t10, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iHashLong = ((String) UnsafeUtil.getObject(t10, jOffset)).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 9:
                    Object object = UnsafeUtil.getObject(t10, jOffset);
                    if (object != null) {
                        iHashCode = object.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getObject(t10, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getInt(t10, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getInt(t10, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getInt(t10, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t10, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getInt(t10, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(UnsafeUtil.getLong(t10, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 17:
                    Object object2 = UnsafeUtil.getObject(t10, jOffset);
                    if (object2 != null) {
                        iHashCode = object2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getObject(t10, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iHashLong = UnsafeUtil.getObject(t10, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 51:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(t10, jOffset)));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Float.floatToIntBits(oneofFloatAt(t10, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t10, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t10, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t10, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t10, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t10, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashBoolean(oneofBooleanAt(t10, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = ((String) UnsafeUtil.getObject(t10, jOffset)).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = UnsafeUtil.getObject(t10, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = UnsafeUtil.getObject(t10, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t10, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t10, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t10, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t10, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t10, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t10, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t10, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = UnsafeUtil.getObject(t10, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.unknownFieldSchema.getFromMessage(t10).hashCode();
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.getExtensions(t10).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac A[SYNTHETIC] */
    @Override // com.google.protobuf.Schema
    public final boolean isInitialized(T t10) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.checkInitializedCount) {
            int i15 = this.intArray[i14];
            int iNumberAt = numberAt(i15);
            int iTypeAndOffsetAt = typeAndOffsetAt(i15);
            int i16 = this.buffer[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = UNSAFE.getInt(t10, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (isRequired(iTypeAndOffsetAt) && !isFieldPresent(t10, i15, i10, i11, i18)) {
                return false;
            }
            int iType = type(iTypeAndOffsetAt);
            if (iType == 9 || iType == 17) {
                if (isFieldPresent(t10, i15, i10, i11, i18) && !isInitialized(t10, iTypeAndOffsetAt, getMessageFieldSchema(i15))) {
                    return false;
                }
            } else if (iType == 27) {
                if (!isListInitialized(t10, iTypeAndOffsetAt, i15)) {
                    return false;
                }
            } else if (iType == 60 || iType == 68) {
                if (isOneofPresent(t10, iNumberAt, i15) && !isInitialized(t10, iTypeAndOffsetAt, getMessageFieldSchema(i15))) {
                    return false;
                }
            } else if (iType != 49) {
                if (iType == 50 && !isMapInitialized(t10, iTypeAndOffsetAt, i15)) {
                    return false;
                }
            } else if (!isListInitialized(t10, iTypeAndOffsetAt, i15)) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(t10).isInitialized();
    }

    @Override // com.google.protobuf.Schema
    public void makeImmutable(T t10) {
        int i10;
        int i11 = this.checkInitializedCount;
        while (true) {
            i10 = this.repeatedFieldOffsetStart;
            if (i11 >= i10) {
                break;
            }
            long jOffset = offset(typeAndOffsetAt(this.intArray[i11]));
            Object object = UnsafeUtil.getObject(t10, jOffset);
            if (object != null) {
                UnsafeUtil.putObject(t10, jOffset, this.mapFieldSchema.toImmutable(object));
            }
            i11++;
        }
        int length = this.intArray.length;
        while (i10 < length) {
            this.listFieldSchema.makeImmutableListAt(t10, this.intArray[i10]);
            i10++;
        }
        this.unknownFieldSchema.makeImmutable(t10);
        if (this.hasExtensions) {
            this.extensionSchema.makeImmutable(t10);
        }
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t10, T t11) {
        t11.getClass();
        for (int i10 = 0; i10 < this.buffer.length; i10 += 3) {
            mergeSingleField(t10, t11, i10);
        }
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, t10, t11);
        if (this.hasExtensions) {
            SchemaUtil.mergeExtensions(this.extensionSchema, t10, t11);
        }
    }

    @Override // com.google.protobuf.Schema
    public T newInstance() {
        return (T) this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x008c. Please report as an issue. */
    int parseProto2Message(T t10, byte[] bArr, int i10, int i11, int i12, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe;
        MessageSchema<T> messageSchema;
        int i13;
        T t11;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        T t12;
        T t13;
        int i23;
        T t14;
        int i24;
        int i25;
        MessageSchema<T> messageSchema2 = this;
        T t15 = t10;
        byte[] bArr2 = bArr;
        i11 = i11;
        int i26 = i12;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe2 = UNSAFE;
        int iDecodeUnknownField = i10;
        int i27 = -1;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 1048575;
        while (true) {
            if (iDecodeUnknownField < i11) {
                int i32 = iDecodeUnknownField + 1;
                byte b10 = bArr2[iDecodeUnknownField];
                if (b10 < 0) {
                    int iDecodeVarint32 = ArrayDecoders.decodeVarint32(b10, bArr2, i32, registers2);
                    i14 = registers2.int1;
                    i32 = iDecodeVarint32;
                } else {
                    i14 = b10;
                }
                int i33 = i14 >>> 3;
                int i34 = i14 & 7;
                int iPositionForFieldNumber = i33 > i27 ? messageSchema2.positionForFieldNumber(i33, i28 / 3) : messageSchema2.positionForFieldNumber(i33);
                if (iPositionForFieldNumber == -1) {
                    i15 = i33;
                    i16 = i32;
                    i17 = i14;
                    i18 = i30;
                    i19 = i31;
                    unsafe = unsafe2;
                    i12 = i26;
                    i20 = 0;
                } else {
                    int i35 = messageSchema2.buffer[iPositionForFieldNumber + 1];
                    int iType = type(i35);
                    long jOffset = offset(i35);
                    int i36 = i14;
                    if (iType <= 17) {
                        int i37 = messageSchema2.buffer[iPositionForFieldNumber + 2];
                        int i38 = 1 << (i37 >>> 20);
                        int i39 = i37 & 1048575;
                        if (i39 != i31) {
                            if (i31 != 1048575) {
                                unsafe2.putInt(t15, i31, i30);
                            }
                            i30 = unsafe2.getInt(t15, i39);
                            i19 = i39;
                        } else {
                            i19 = i31;
                        }
                        int i40 = i30;
                        switch (iType) {
                            case 0:
                                t12 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 1) {
                                    UnsafeUtil.putDouble(t12, jOffset, ArrayDecoders.decodeDouble(bArr2, i32));
                                    iDecodeUnknownField = i32 + 8;
                                    i30 = i40 | i38;
                                    t15 = t12;
                                    i28 = i21;
                                    i29 = i22;
                                    i27 = i15;
                                    i31 = i19;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 1:
                                t12 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 5) {
                                    UnsafeUtil.putFloat(t12, jOffset, ArrayDecoders.decodeFloat(bArr2, i32));
                                    iDecodeUnknownField = i32 + 4;
                                    i30 = i40 | i38;
                                    t15 = t12;
                                    i28 = i21;
                                    i29 = i22;
                                    i27 = i15;
                                    i31 = i19;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 2:
                            case 3:
                                T t16 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 0) {
                                    int iDecodeVarint64 = ArrayDecoders.decodeVarint64(bArr2, i32, registers2);
                                    t13 = t16;
                                    unsafe2.putLong(t10, jOffset, registers2.long1);
                                    i30 = i40 | i38;
                                    i28 = i21;
                                    iDecodeUnknownField = iDecodeVarint64;
                                    i29 = i22;
                                    t15 = t13;
                                    i27 = i15;
                                    i31 = i19;
                                    i11 = i11;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 4:
                            case 11:
                                t12 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i32, registers2);
                                    unsafe2.putInt(t12, jOffset, registers2.int1);
                                    i30 = i40 | i38;
                                    t15 = t12;
                                    i28 = i21;
                                    i29 = i22;
                                    i27 = i15;
                                    i31 = i19;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 5:
                            case 14:
                                T t17 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 1) {
                                    t13 = t17;
                                    unsafe2.putLong(t10, jOffset, ArrayDecoders.decodeFixed64(bArr2, i32));
                                    iDecodeUnknownField = i32 + 8;
                                    i30 = i40 | i38;
                                    i28 = i21;
                                    i29 = i22;
                                    t15 = t13;
                                    i27 = i15;
                                    i31 = i19;
                                    i11 = i11;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 6:
                            case 13:
                                i23 = i11;
                                t14 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 5) {
                                    unsafe2.putInt(t14, jOffset, ArrayDecoders.decodeFixed32(bArr2, i32));
                                    iDecodeUnknownField = i32 + 4;
                                    int i41 = i40 | i38;
                                    t15 = t14;
                                    i11 = i23;
                                    i28 = i21;
                                    i29 = i22;
                                    i31 = i19;
                                    i26 = i12;
                                    i30 = i41;
                                    i27 = i15;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 7:
                                i23 = i11;
                                t14 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint64(bArr2, i32, registers2);
                                    UnsafeUtil.putBoolean(t14, jOffset, registers2.long1 != 0);
                                    int i42 = i40 | i38;
                                    t15 = t14;
                                    i11 = i23;
                                    i28 = i21;
                                    i29 = i22;
                                    i31 = i19;
                                    i26 = i12;
                                    i30 = i42;
                                    i27 = i15;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 8:
                                i23 = i11;
                                t14 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 2) {
                                    iDecodeUnknownField = (i35 & 536870912) == 0 ? ArrayDecoders.decodeString(bArr2, i32, registers2) : ArrayDecoders.decodeStringRequireUtf8(bArr2, i32, registers2);
                                    unsafe2.putObject(t14, jOffset, registers2.object1);
                                    int i43 = i40 | i38;
                                    t15 = t14;
                                    i11 = i23;
                                    i28 = i21;
                                    i29 = i22;
                                    i31 = i19;
                                    i26 = i12;
                                    i30 = i43;
                                    i27 = i15;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 9:
                                t14 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 2) {
                                    i23 = i11;
                                    iDecodeUnknownField = ArrayDecoders.decodeMessageField(messageSchema2.getMessageFieldSchema(i21), bArr2, i32, i23, registers2);
                                    if ((i40 & i38) == 0) {
                                        unsafe2.putObject(t14, jOffset, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t14, jOffset, Internal.mergeMessage(unsafe2.getObject(t14, jOffset), registers2.object1));
                                    }
                                    int i44 = i40 | i38;
                                    t15 = t14;
                                    i11 = i23;
                                    i28 = i21;
                                    i29 = i22;
                                    i31 = i19;
                                    i26 = i12;
                                    i30 = i44;
                                    i27 = i15;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 10:
                                t12 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 2) {
                                    iDecodeUnknownField = ArrayDecoders.decodeBytes(bArr2, i32, registers2);
                                    unsafe2.putObject(t12, jOffset, registers2.object1);
                                    i30 = i40 | i38;
                                    t15 = t12;
                                    i28 = i21;
                                    i29 = i22;
                                    i27 = i15;
                                    i31 = i19;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 12:
                                t12 = t15;
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                i22 = i36;
                                bArr2 = bArr;
                                if (i34 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i32, registers2);
                                    int i45 = registers2.int1;
                                    Internal.EnumVerifier enumFieldVerifier = messageSchema2.getEnumFieldVerifier(i21);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i45)) {
                                        unsafe2.putInt(t12, jOffset, i45);
                                        i30 = i40 | i38;
                                        t15 = t12;
                                    } else {
                                        getMutableUnknownFields(t10).storeField(i22, Long.valueOf(i45));
                                        t15 = t12;
                                        i30 = i40;
                                    }
                                    i28 = i21;
                                    i29 = i22;
                                    i27 = i15;
                                    i31 = i19;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 15:
                                i21 = iPositionForFieldNumber;
                                i22 = i36;
                                bArr2 = bArr;
                                i15 = i33;
                                if (i34 == 0) {
                                    iDecodeUnknownField = ArrayDecoders.decodeVarint32(bArr2, i32, registers2);
                                    t12 = t10;
                                    unsafe2.putInt(t12, jOffset, CodedInputStream.decodeZigZag32(registers2.int1));
                                    i30 = i40 | i38;
                                    t15 = t12;
                                    i28 = i21;
                                    i29 = i22;
                                    i27 = i15;
                                    i31 = i19;
                                    i26 = i12;
                                } else {
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 16:
                                i21 = iPositionForFieldNumber;
                                i15 = i33;
                                if (i34 == 0) {
                                    bArr2 = bArr;
                                    int iDecodeVarint65 = ArrayDecoders.decodeVarint64(bArr2, i32, registers2);
                                    i22 = i36;
                                    unsafe2.putLong(t10, jOffset, CodedInputStream.decodeZigZag64(registers2.long1));
                                    i30 = i40 | i38;
                                    t15 = t10;
                                    i11 = i11;
                                    i28 = i21;
                                    iDecodeUnknownField = iDecodeVarint65;
                                    i29 = i22;
                                    i27 = i15;
                                    i31 = i19;
                                    i26 = i12;
                                } else {
                                    i22 = i36;
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            case 17:
                                if (i34 == 3) {
                                    iDecodeUnknownField = ArrayDecoders.decodeGroupField(messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), bArr, i32, i11, (i33 << 3) | 4, registers);
                                    if ((i40 & i38) == 0) {
                                        unsafe2.putObject(t15, jOffset, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t15, jOffset, Internal.mergeMessage(unsafe2.getObject(t15, jOffset), registers2.object1));
                                    }
                                    i30 = i40 | i38;
                                    bArr2 = bArr;
                                    i11 = i11;
                                    i26 = i12;
                                    i28 = iPositionForFieldNumber;
                                    i29 = i36;
                                    i27 = i33;
                                    i31 = i19;
                                } else {
                                    i21 = iPositionForFieldNumber;
                                    i15 = i33;
                                    i22 = i36;
                                    i12 = i12;
                                    i16 = i32;
                                    i18 = i40;
                                    i20 = i21;
                                    unsafe = unsafe2;
                                    i17 = i22;
                                }
                                break;
                            default:
                                i21 = iPositionForFieldNumber;
                                i22 = i36;
                                i15 = i33;
                                i12 = i12;
                                i16 = i32;
                                i18 = i40;
                                i20 = i21;
                                unsafe = unsafe2;
                                i17 = i22;
                                break;
                        }
                    } else {
                        i15 = i33;
                        T t18 = t15;
                        bArr2 = bArr;
                        if (iType != 27) {
                            i20 = iPositionForFieldNumber;
                            i18 = i30;
                            i19 = i31;
                            if (iType <= 49) {
                                int i46 = i32;
                                unsafe = unsafe2;
                                iDecodeUnknownField = parseRepeatedField(t10, bArr, i32, i11, i36, i15, i34, i20, i35, iType, jOffset, registers);
                                if (iDecodeUnknownField != i46) {
                                    i25 = i36;
                                    messageSchema2 = this;
                                    t15 = t10;
                                    bArr2 = bArr;
                                    i11 = i11;
                                    i26 = i12;
                                    registers2 = registers;
                                    i27 = i15;
                                    i29 = i25;
                                    i28 = i20;
                                    i30 = i18;
                                    i31 = i19;
                                    unsafe2 = unsafe;
                                } else {
                                    i25 = i36;
                                    i16 = iDecodeUnknownField;
                                    i17 = i25;
                                }
                            } else {
                                i24 = i32;
                                unsafe = unsafe2;
                                if (iType != 50) {
                                    iDecodeUnknownField = parseOneofField(t10, bArr, i24, i11, i25, i15, i34, i35, iType, jOffset, i20, registers);
                                    if (iDecodeUnknownField != i24) {
                                        i25 = i36;
                                        messageSchema2 = this;
                                        t15 = t10;
                                        bArr2 = bArr;
                                        i11 = i11;
                                        i26 = i12;
                                        registers2 = registers;
                                        i27 = i15;
                                        i29 = i25;
                                        i28 = i20;
                                        i30 = i18;
                                        i31 = i19;
                                        unsafe2 = unsafe;
                                    } else {
                                        i25 = i36;
                                        i16 = iDecodeUnknownField;
                                        i17 = i25;
                                    }
                                } else if (i34 == 2) {
                                    iDecodeUnknownField = parseMapField(t10, bArr, i24, i11, i20, jOffset, registers);
                                    if (iDecodeUnknownField != i24) {
                                        i25 = i36;
                                        messageSchema2 = this;
                                        t15 = t10;
                                        bArr2 = bArr;
                                        i11 = i11;
                                        i26 = i12;
                                        registers2 = registers;
                                        i27 = i15;
                                        i29 = i25;
                                        i28 = i20;
                                        i30 = i18;
                                        i31 = i19;
                                        unsafe2 = unsafe;
                                    } else {
                                        i25 = i36;
                                        i16 = iDecodeUnknownField;
                                        i17 = i25;
                                    }
                                } else {
                                    i25 = i36;
                                }
                            }
                        } else if (i34 == 2) {
                            Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2.getObject(t18, jOffset);
                            if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                                int size = protobufListMutableCopyWithCapacity2.size();
                                protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t18, jOffset, protobufListMutableCopyWithCapacity2);
                            }
                            i19 = i31;
                            iDecodeUnknownField = ArrayDecoders.decodeMessageList(messageSchema2.getMessageFieldSchema(iPositionForFieldNumber), i36, bArr, i32, i11, protobufListMutableCopyWithCapacity2, registers);
                            t15 = t10;
                            i11 = i11;
                            i29 = i36;
                            i27 = i15;
                            i28 = iPositionForFieldNumber;
                            i30 = i30;
                            i31 = i19;
                            i26 = i12;
                        } else {
                            i20 = iPositionForFieldNumber;
                            i18 = i30;
                            i19 = i31;
                            i24 = i32;
                            unsafe = unsafe2;
                            i25 = i36;
                        }
                        i16 = i24;
                        i17 = i25;
                    }
                }
                if (i17 != i12 || i12 == 0) {
                    iDecodeUnknownField = (!this.hasExtensions || registers.extensionRegistry == ExtensionRegistryLite.getEmptyRegistry()) ? ArrayDecoders.decodeUnknownField(i17, bArr, i16, i11, getMutableUnknownFields(t10), registers) : ArrayDecoders.decodeExtensionOrUnknownField(i17, bArr, i16, i11, t10, this.defaultInstance, this.unknownFieldSchema, registers);
                    t15 = t10;
                    bArr2 = bArr;
                    i11 = i11;
                    i29 = i17;
                    messageSchema2 = this;
                    registers2 = registers;
                    i27 = i15;
                    i28 = i20;
                    i30 = i18;
                    i31 = i19;
                    unsafe2 = unsafe;
                    i26 = i12;
                } else {
                    i13 = 1048575;
                    messageSchema = this;
                    iDecodeUnknownField = i16;
                    i29 = i17;
                    i30 = i18;
                    i31 = i19;
                }
            } else {
                unsafe = unsafe2;
                i12 = i26;
                messageSchema = messageSchema2;
                i13 = 1048575;
            }
        }
        if (i31 != i13) {
            t11 = t10;
            unsafe.putInt(t11, i31, i30);
        } else {
            t11 = t10;
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i47 = messageSchema.checkInitializedCount; i47 < messageSchema.repeatedFieldOffsetStart; i47++) {
            unknownFieldSetLite = (UnknownFieldSetLite) messageSchema.filterMapUnknownEnumValues(t11, messageSchema.intArray[i47], unknownFieldSetLite, messageSchema.unknownFieldSchema);
        }
        if (unknownFieldSetLite != null) {
            messageSchema.unknownFieldSchema.setBuilderToMessage(t11, unknownFieldSetLite);
        }
        if (i12 == 0) {
            if (iDecodeUnknownField != i11) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (iDecodeUnknownField > i11 || i29 != i12) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return iDecodeUnknownField;
    }

    @Override // com.google.protobuf.Schema
    public void writeTo(T t10, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(t10, writer);
        } else if (this.proto3) {
            writeFieldsInAscendingOrderProto3(t10, writer);
        } else {
            writeFieldsInAscendingOrderProto2(t10, writer);
        }
    }

    private boolean isFieldPresent(T t10, int i10) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10);
        long j10 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j10 != 1048575) {
            return (UnsafeUtil.getInt(t10, j10) & (1 << (iPresenceMaskAndOffsetAt >>> 20))) != 0;
        }
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return UnsafeUtil.getDouble(t10, jOffset) != 0.0d;
            case 1:
                return UnsafeUtil.getFloat(t10, jOffset) != 0.0f;
            case 2:
                return UnsafeUtil.getLong(t10, jOffset) != 0;
            case 3:
                return UnsafeUtil.getLong(t10, jOffset) != 0;
            case 4:
                return UnsafeUtil.getInt(t10, jOffset) != 0;
            case 5:
                return UnsafeUtil.getLong(t10, jOffset) != 0;
            case 6:
                return UnsafeUtil.getInt(t10, jOffset) != 0;
            case 7:
                return UnsafeUtil.getBoolean(t10, jOffset);
            case 8:
                Object object = UnsafeUtil.getObject(t10, jOffset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                }
                if (object instanceof ByteString) {
                    return !ByteString.EMPTY.equals(object);
                }
                throw new IllegalArgumentException();
            case 9:
                return UnsafeUtil.getObject(t10, jOffset) != null;
            case 10:
                return !ByteString.EMPTY.equals(UnsafeUtil.getObject(t10, jOffset));
            case 11:
                return UnsafeUtil.getInt(t10, jOffset) != 0;
            case 12:
                return UnsafeUtil.getInt(t10, jOffset) != 0;
            case 13:
                return UnsafeUtil.getInt(t10, jOffset) != 0;
            case 14:
                return UnsafeUtil.getLong(t10, jOffset) != 0;
            case 15:
                return UnsafeUtil.getInt(t10, jOffset) != 0;
            case 16:
                return UnsafeUtil.getLong(t10, jOffset) != 0;
            case 17:
                return UnsafeUtil.getObject(t10, jOffset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private int positionForFieldNumber(int i10, int i11) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i10, i11);
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t10, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        extensionRegistryLite.getClass();
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t10, reader, extensionRegistryLite);
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t10, byte[] bArr, int i10, int i11, ArrayDecoders.Registers registers) throws IOException {
        if (this.proto3) {
            parseProto3Message(t10, bArr, i10, i11, registers);
        } else {
            parseProto2Message(t10, bArr, i10, i11, 0, registers);
        }
    }

    private boolean equals(T t10, T t11, int i10) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return arePresentForEquals(t10, t11, i10) && Double.doubleToLongBits(UnsafeUtil.getDouble(t10, jOffset)) == Double.doubleToLongBits(UnsafeUtil.getDouble(t11, jOffset));
            case 1:
                return arePresentForEquals(t10, t11, i10) && Float.floatToIntBits(UnsafeUtil.getFloat(t10, jOffset)) == Float.floatToIntBits(UnsafeUtil.getFloat(t11, jOffset));
            case 2:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getLong(t10, jOffset) == UnsafeUtil.getLong(t11, jOffset);
            case 3:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getLong(t10, jOffset) == UnsafeUtil.getLong(t11, jOffset);
            case 4:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getInt(t10, jOffset) == UnsafeUtil.getInt(t11, jOffset);
            case 5:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getLong(t10, jOffset) == UnsafeUtil.getLong(t11, jOffset);
            case 6:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getInt(t10, jOffset) == UnsafeUtil.getInt(t11, jOffset);
            case 7:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getBoolean(t10, jOffset) == UnsafeUtil.getBoolean(t11, jOffset);
            case 8:
                return arePresentForEquals(t10, t11, i10) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t10, jOffset), UnsafeUtil.getObject(t11, jOffset));
            case 9:
                return arePresentForEquals(t10, t11, i10) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t10, jOffset), UnsafeUtil.getObject(t11, jOffset));
            case 10:
                return arePresentForEquals(t10, t11, i10) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t10, jOffset), UnsafeUtil.getObject(t11, jOffset));
            case 11:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getInt(t10, jOffset) == UnsafeUtil.getInt(t11, jOffset);
            case 12:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getInt(t10, jOffset) == UnsafeUtil.getInt(t11, jOffset);
            case 13:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getInt(t10, jOffset) == UnsafeUtil.getInt(t11, jOffset);
            case 14:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getLong(t10, jOffset) == UnsafeUtil.getLong(t11, jOffset);
            case 15:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getInt(t10, jOffset) == UnsafeUtil.getInt(t11, jOffset);
            case 16:
                return arePresentForEquals(t10, t11, i10) && UnsafeUtil.getLong(t10, jOffset) == UnsafeUtil.getLong(t11, jOffset);
            case 17:
                return arePresentForEquals(t10, t11, i10) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t10, jOffset), UnsafeUtil.getObject(t11, jOffset));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t10, jOffset), UnsafeUtil.getObject(t11, jOffset));
            case 50:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t10, jOffset), UnsafeUtil.getObject(t11, jOffset));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return isOneofCaseEqual(t10, t11, i10) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t10, jOffset), UnsafeUtil.getObject(t11, jOffset));
            default:
                return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isInitialized(Object obj, int i10, Schema schema) {
        return schema.isInitialized(UnsafeUtil.getObject(obj, offset(i10)));
    }
}
