package com.android.dx.rop.type;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes7.dex */
public final class Prototype implements Comparable<Prototype> {
    private static final ConcurrentMap<String, Prototype> internTable = new ConcurrentHashMap(10000, 0.75f);
    private final String descriptor;
    private StdTypeList parameterFrameTypes;
    private final StdTypeList parameterTypes;
    private final Type returnType;

    private Prototype(String str, Type type, StdTypeList stdTypeList) {
        if (str == null) {
            throw new NullPointerException("descriptor == null");
        }
        if (type == null) {
            throw new NullPointerException("returnType == null");
        }
        if (stdTypeList == null) {
            throw new NullPointerException("parameterTypes == null");
        }
        this.descriptor = str;
        this.returnType = type;
        this.parameterTypes = stdTypeList;
        this.parameterFrameTypes = null;
    }

    public static void clearInternTable() {
        internTable.clear();
    }

    public static Prototype fromDescriptor(String str) {
        int i10;
        Prototype prototype = internTable.get(str);
        if (prototype != null) {
            return prototype;
        }
        Type[] typeArrMakeParameterArray = makeParameterArray(str);
        int i11 = 1;
        int i12 = 0;
        while (true) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == ')') {
                Type typeInternReturnType = Type.internReturnType(str.substring(i11 + 1));
                StdTypeList stdTypeList = new StdTypeList(i12);
                for (int i13 = 0; i13 < i12; i13++) {
                    stdTypeList.set(i13, typeArrMakeParameterArray[i13]);
                }
                return new Prototype(str, typeInternReturnType, stdTypeList);
            }
            int i14 = i11;
            while (cCharAt == '[') {
                i14++;
                cCharAt = str.charAt(i14);
            }
            if (cCharAt == 'L') {
                int iIndexOf = str.indexOf(59, i14);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("bad descriptor");
                }
                i10 = iIndexOf + 1;
            } else {
                i10 = i14 + 1;
            }
            typeArrMakeParameterArray[i12] = Type.intern(str.substring(i11, i10));
            i12++;
            i11 = i10;
        }
    }

    public static Prototype intern(String str) {
        if (str == null) {
            throw new NullPointerException("descriptor == null");
        }
        Prototype prototype = internTable.get(str);
        return prototype != null ? prototype : putIntern(fromDescriptor(str));
    }

    public static Prototype internInts(Type type, int i10) {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append('(');
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append('I');
        }
        sb2.append(')');
        sb2.append(type.getDescriptor());
        return intern(sb2.toString());
    }

    private static Type[] makeParameterArray(String str) {
        int length = str.length();
        int i10 = 0;
        if (str.charAt(0) != '(') {
            throw new IllegalArgumentException("bad descriptor");
        }
        int i11 = 0;
        for (int i12 = 1; i12 < length; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == ')') {
                i10 = i12;
                break;
            }
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                i11++;
            }
        }
        if (i10 == 0 || i10 == length - 1) {
            throw new IllegalArgumentException("bad descriptor");
        }
        if (str.indexOf(41, i10 + 1) == -1) {
            return new Type[i11];
        }
        throw new IllegalArgumentException("bad descriptor");
    }

    private static Prototype putIntern(Prototype prototype) {
        Prototype prototypePutIfAbsent = internTable.putIfAbsent(prototype.getDescriptor(), prototype);
        return prototypePutIfAbsent != null ? prototypePutIfAbsent : prototype;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Prototype) {
            return this.descriptor.equals(((Prototype) obj).descriptor);
        }
        return false;
    }

    public String getDescriptor() {
        return this.descriptor;
    }

    public StdTypeList getParameterFrameTypes() {
        if (this.parameterFrameTypes == null) {
            int size = this.parameterTypes.size();
            StdTypeList stdTypeList = new StdTypeList(size);
            boolean z10 = false;
            for (int i10 = 0; i10 < size; i10++) {
                Type type = this.parameterTypes.get(i10);
                if (type.isIntlike()) {
                    type = Type.INT;
                    z10 = true;
                }
                stdTypeList.set(i10, type);
            }
            if (!z10) {
                stdTypeList = this.parameterTypes;
            }
            this.parameterFrameTypes = stdTypeList;
        }
        return this.parameterFrameTypes;
    }

    public StdTypeList getParameterTypes() {
        return this.parameterTypes;
    }

    public Type getReturnType() {
        return this.returnType;
    }

    public int hashCode() {
        return this.descriptor.hashCode();
    }

    public String toString() {
        return this.descriptor;
    }

    public Prototype withFirstParameter(Type type) {
        String str = "(" + type.getDescriptor() + this.descriptor.substring(1);
        StdTypeList stdTypeListWithFirst = this.parameterTypes.withFirst(type);
        stdTypeListWithFirst.setImmutable();
        return putIntern(new Prototype(str, this.returnType, stdTypeListWithFirst));
    }

    @Override // java.lang.Comparable
    public int compareTo(Prototype prototype) {
        if (this == prototype) {
            return 0;
        }
        int iCompareTo2 = this.returnType.compareTo(prototype.returnType);
        if (iCompareTo2 != 0) {
            return iCompareTo2;
        }
        int size = this.parameterTypes.size();
        int size2 = prototype.parameterTypes.size();
        int iMin = Math.min(size, size2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iCompareTo3 = this.parameterTypes.get(i10).compareTo(prototype.parameterTypes.get(i10));
            if (iCompareTo3 != 0) {
                return iCompareTo3;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }

    public static Prototype intern(String str, Type type, boolean z10, boolean z11) {
        Prototype prototypeIntern = intern(str);
        if (z10) {
            return prototypeIntern;
        }
        if (z11) {
            type = type.asUninitialized(Integer.MAX_VALUE);
        }
        return prototypeIntern.withFirstParameter(type);
    }
}
