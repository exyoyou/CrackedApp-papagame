package com.android.dex;

import com.android.dex.util.Unsigned;

/* JADX INFO: loaded from: classes7.dex */
public class MethodHandle implements Comparable<MethodHandle> {
    private final Dex dex;
    private final int fieldOrMethodId;
    private final MethodHandleType methodHandleType;
    private final int unused1;
    private final int unused2;

    /* JADX INFO: renamed from: com.android.dex.MethodHandle$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$dex$MethodHandle$MethodHandleType;

        static {
            int[] iArr = new int[MethodHandleType.values().length];
            $SwitchMap$com$android$dex$MethodHandle$MethodHandleType = iArr;
            try {
                iArr[MethodHandleType.METHOD_HANDLE_TYPE_STATIC_PUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dex$MethodHandle$MethodHandleType[MethodHandleType.METHOD_HANDLE_TYPE_STATIC_GET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$dex$MethodHandle$MethodHandleType[MethodHandleType.METHOD_HANDLE_TYPE_INSTANCE_PUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$dex$MethodHandle$MethodHandleType[MethodHandleType.METHOD_HANDLE_TYPE_INSTANCE_GET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum MethodHandleType {
        METHOD_HANDLE_TYPE_STATIC_PUT(0),
        METHOD_HANDLE_TYPE_STATIC_GET(1),
        METHOD_HANDLE_TYPE_INSTANCE_PUT(2),
        METHOD_HANDLE_TYPE_INSTANCE_GET(3),
        METHOD_HANDLE_TYPE_INVOKE_STATIC(4),
        METHOD_HANDLE_TYPE_INVOKE_INSTANCE(5),
        METHOD_HANDLE_TYPE_INVOKE_DIRECT(6),
        METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR(7),
        METHOD_HANDLE_TYPE_INVOKE_INTERFACE(8);

        private final int value;

        MethodHandleType(int i10) {
            this.value = i10;
        }

        static MethodHandleType fromValue(int i10) {
            for (MethodHandleType methodHandleType : values()) {
                if (methodHandleType.value == i10) {
                    return methodHandleType;
                }
            }
            throw new IllegalArgumentException(String.valueOf(i10));
        }

        public boolean isField() {
            int i10 = AnonymousClass1.$SwitchMap$com$android$dex$MethodHandle$MethodHandleType[ordinal()];
            return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4;
        }
    }

    public MethodHandle(Dex dex, MethodHandleType methodHandleType, int i10, int i11, int i12) {
        this.dex = dex;
        this.methodHandleType = methodHandleType;
        this.unused1 = i10;
        this.fieldOrMethodId = i11;
        this.unused2 = i12;
    }

    public int getFieldOrMethodId() {
        return this.fieldOrMethodId;
    }

    public MethodHandleType getMethodHandleType() {
        return this.methodHandleType;
    }

    public int getUnused1() {
        return this.unused1;
    }

    public int getUnused2() {
        return this.unused2;
    }

    public String toString() {
        if (this.dex == null) {
            return this.methodHandleType + " " + this.fieldOrMethodId;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.methodHandleType);
        sb2.append(" ");
        sb2.append(this.methodHandleType.isField() ? this.dex.fieldIds().get(this.fieldOrMethodId) : this.dex.methodIds().get(this.fieldOrMethodId));
        return sb2.toString();
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.methodHandleType.value);
        section.writeUnsignedShort(this.unused1);
        section.writeUnsignedShort(this.fieldOrMethodId);
        section.writeUnsignedShort(this.unused2);
    }

    @Override // java.lang.Comparable
    public int compareTo(MethodHandle methodHandle) {
        MethodHandleType methodHandleType = this.methodHandleType;
        MethodHandleType methodHandleType2 = methodHandle.methodHandleType;
        return methodHandleType != methodHandleType2 ? methodHandleType.compareTo(methodHandleType2) : Unsigned.compare(this.fieldOrMethodId, methodHandle.fieldOrMethodId);
    }
}
