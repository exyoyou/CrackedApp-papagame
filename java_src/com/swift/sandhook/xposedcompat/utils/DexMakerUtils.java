package com.swift.sandhook.xposedcompat.utils;

import com.android.dx.Code;
import com.android.dx.Local;
import com.android.dx.TypeId;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.type.Type;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class DexMakerUtils {
    private static volatile Method addInstMethod;
    private static volatile Method specMethod;

    public static String MD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(32);
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static void addInstruction(Code code, Insn insn) {
        if (addInstMethod == null) {
            try {
                addInstMethod = Code.class.getDeclaredMethod("addInstruction", Insn.class);
                addInstMethod.setAccessible(true);
            } catch (NoSuchMethodException e10) {
                e10.printStackTrace();
            }
        }
        try {
            addInstMethod.invoke(code, insn);
        } catch (IllegalAccessException | InvocationTargetException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void autoBoxIfNecessary(Code code, Local<Object> local, Local local2) {
        TypeId type = local2.getType();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        if (type.equals(typeId)) {
            TypeId typeId2 = TypeId.get(Boolean.class);
            code.invokeStatic(typeId2.getMethod(typeId2, "valueOf", typeId), local, local2);
            return;
        }
        TypeId<Byte> typeId3 = TypeId.BYTE;
        if (type.equals(typeId3)) {
            TypeId typeId4 = TypeId.get(Byte.class);
            code.invokeStatic(typeId4.getMethod(typeId4, "valueOf", typeId3), local, local2);
            return;
        }
        TypeId<Character> typeId5 = TypeId.CHAR;
        if (type.equals(typeId5)) {
            TypeId typeId6 = TypeId.get(Character.class);
            code.invokeStatic(typeId6.getMethod(typeId6, "valueOf", typeId5), local, local2);
            return;
        }
        TypeId<Double> typeId7 = TypeId.DOUBLE;
        if (type.equals(typeId7)) {
            TypeId typeId8 = TypeId.get(Double.class);
            code.invokeStatic(typeId8.getMethod(typeId8, "valueOf", typeId7), local, local2);
            return;
        }
        TypeId<Float> typeId9 = TypeId.FLOAT;
        if (type.equals(typeId9)) {
            TypeId typeId10 = TypeId.get(Float.class);
            code.invokeStatic(typeId10.getMethod(typeId10, "valueOf", typeId9), local, local2);
            return;
        }
        TypeId<Integer> typeId11 = TypeId.INT;
        if (type.equals(typeId11)) {
            TypeId typeId12 = TypeId.get(Integer.class);
            code.invokeStatic(typeId12.getMethod(typeId12, "valueOf", typeId11), local, local2);
            return;
        }
        TypeId<Long> typeId13 = TypeId.LONG;
        if (type.equals(typeId13)) {
            TypeId typeId14 = TypeId.get(Long.class);
            code.invokeStatic(typeId14.getMethod(typeId14, "valueOf", typeId13), local, local2);
            return;
        }
        TypeId<Short> typeId15 = TypeId.SHORT;
        if (type.equals(typeId15)) {
            TypeId typeId16 = TypeId.get(Short.class);
            code.invokeStatic(typeId16.getMethod(typeId16, "valueOf", typeId15), local, local2);
        } else if (type.equals(TypeId.VOID)) {
            code.loadConstant(local, null);
        } else {
            code.move(local, local2);
        }
    }

    public static void autoUnboxIfNecessary(Code code, Local local, Local local2, Map<TypeId, Local> map, boolean z10) {
        TypeId type = local.getType();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        if (type.equals(typeId)) {
            TypeId typeId2 = TypeId.get("Ljava/lang/Boolean;");
            Local local3 = map.get(typeId2);
            code.cast(local3, local2);
            code.invokeVirtual(typeId2.getMethod(typeId, "booleanValue", new TypeId[0]), local, local3, new Local[0]);
            return;
        }
        TypeId<Byte> typeId3 = TypeId.BYTE;
        if (type.equals(typeId3)) {
            TypeId typeId4 = TypeId.get("Ljava/lang/Byte;");
            Local local4 = map.get(typeId4);
            code.cast(local4, local2);
            code.invokeVirtual(typeId4.getMethod(typeId3, "byteValue", new TypeId[0]), local, local4, new Local[0]);
            return;
        }
        TypeId<Character> typeId5 = TypeId.CHAR;
        if (type.equals(typeId5)) {
            TypeId typeId6 = TypeId.get("Ljava/lang/Character;");
            Local local5 = map.get(typeId6);
            code.cast(local5, local2);
            code.invokeVirtual(typeId6.getMethod(typeId5, "charValue", new TypeId[0]), local, local5, new Local[0]);
            return;
        }
        TypeId<Double> typeId7 = TypeId.DOUBLE;
        if (type.equals(typeId7)) {
            TypeId typeId8 = TypeId.get("Ljava/lang/Double;");
            Local local6 = map.get(typeId8);
            code.cast(local6, local2);
            code.invokeVirtual(typeId8.getMethod(typeId7, "doubleValue", new TypeId[0]), local, local6, new Local[0]);
            return;
        }
        TypeId<Float> typeId9 = TypeId.FLOAT;
        if (type.equals(typeId9)) {
            TypeId typeId10 = TypeId.get("Ljava/lang/Float;");
            Local local7 = map.get(typeId10);
            code.cast(local7, local2);
            code.invokeVirtual(typeId10.getMethod(typeId9, "floatValue", new TypeId[0]), local, local7, new Local[0]);
            return;
        }
        TypeId<Integer> typeId11 = TypeId.INT;
        if (type.equals(typeId11)) {
            TypeId typeId12 = TypeId.get("Ljava/lang/Integer;");
            Local local8 = map.get(typeId12);
            code.cast(local8, local2);
            code.invokeVirtual(typeId12.getMethod(typeId11, "intValue", new TypeId[0]), local, local8, new Local[0]);
            return;
        }
        TypeId<Long> typeId13 = TypeId.LONG;
        if (type.equals(typeId13)) {
            TypeId typeId14 = TypeId.get("Ljava/lang/Long;");
            Local local9 = map.get(typeId14);
            code.cast(local9, local2);
            code.invokeVirtual(typeId14.getMethod(typeId13, "longValue", new TypeId[0]), local, local9, new Local[0]);
            return;
        }
        TypeId<Short> typeId15 = TypeId.SHORT;
        if (type.equals(typeId15)) {
            TypeId typeId16 = TypeId.get("Ljava/lang/Short;");
            Local local10 = map.get(typeId16);
            code.cast(local10, local2);
            code.invokeVirtual(typeId16.getMethod(typeId15, "shortValue", new TypeId[0]), local, local10, new Local[0]);
            return;
        }
        if (type.equals(TypeId.VOID)) {
            code.loadConstant(local, null);
        } else if (z10) {
            code.cast(local, local2);
        } else {
            code.move(local, local2);
        }
    }

    public static Map<TypeId, Local> createResultLocals(Code code) {
        HashMap map = new HashMap();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        Local localNewLocal = code.newLocal(typeId);
        TypeId<Byte> typeId2 = TypeId.BYTE;
        Local localNewLocal2 = code.newLocal(typeId2);
        TypeId<Character> typeId3 = TypeId.CHAR;
        Local localNewLocal3 = code.newLocal(typeId3);
        TypeId<Double> typeId4 = TypeId.DOUBLE;
        Local localNewLocal4 = code.newLocal(typeId4);
        TypeId<Float> typeId5 = TypeId.FLOAT;
        Local localNewLocal5 = code.newLocal(typeId5);
        TypeId<Integer> typeId6 = TypeId.INT;
        Local localNewLocal6 = code.newLocal(typeId6);
        TypeId<Long> typeId7 = TypeId.LONG;
        Local localNewLocal7 = code.newLocal(typeId7);
        TypeId<Short> typeId8 = TypeId.SHORT;
        Local localNewLocal8 = code.newLocal(typeId8);
        TypeId<Void> typeId9 = TypeId.VOID;
        Local localNewLocal9 = code.newLocal(typeId9);
        TypeId<Object> typeId10 = TypeId.OBJECT;
        Local localNewLocal10 = code.newLocal(typeId10);
        Local localNewLocal11 = code.newLocal(TypeId.get("Ljava/lang/Boolean;"));
        Local localNewLocal12 = code.newLocal(TypeId.get("Ljava/lang/Byte;"));
        Local localNewLocal13 = code.newLocal(TypeId.get("Ljava/lang/Character;"));
        Local localNewLocal14 = code.newLocal(TypeId.get("Ljava/lang/Double;"));
        Local localNewLocal15 = code.newLocal(TypeId.get("Ljava/lang/Float;"));
        Local localNewLocal16 = code.newLocal(TypeId.get("Ljava/lang/Integer;"));
        Local localNewLocal17 = code.newLocal(TypeId.get("Ljava/lang/Long;"));
        Local localNewLocal18 = code.newLocal(TypeId.get("Ljava/lang/Short;"));
        Local localNewLocal19 = code.newLocal(TypeId.get("Ljava/lang/Void;"));
        code.loadConstant(localNewLocal, Boolean.FALSE);
        code.loadConstant(localNewLocal2, (byte) 0);
        code.loadConstant(localNewLocal3, (char) 0);
        code.loadConstant(localNewLocal4, Double.valueOf(0.0d));
        code.loadConstant(localNewLocal5, Float.valueOf(0.0f));
        code.loadConstant(localNewLocal6, 0);
        code.loadConstant(localNewLocal7, 0L);
        code.loadConstant(localNewLocal8, (short) 0);
        code.loadConstant(localNewLocal9, null);
        code.loadConstant(localNewLocal10, null);
        code.loadConstant(localNewLocal11, null);
        code.loadConstant(localNewLocal12, null);
        code.loadConstant(localNewLocal13, null);
        code.loadConstant(localNewLocal14, null);
        code.loadConstant(localNewLocal15, null);
        code.loadConstant(localNewLocal16, null);
        code.loadConstant(localNewLocal17, null);
        code.loadConstant(localNewLocal18, null);
        code.loadConstant(localNewLocal19, null);
        map.put(typeId, localNewLocal);
        map.put(typeId2, localNewLocal2);
        map.put(typeId3, localNewLocal3);
        map.put(typeId4, localNewLocal4);
        map.put(typeId5, localNewLocal5);
        map.put(typeId6, localNewLocal6);
        map.put(typeId7, localNewLocal7);
        map.put(typeId8, localNewLocal8);
        map.put(typeId9, localNewLocal9);
        map.put(typeId10, localNewLocal10);
        map.put(TypeId.get("Ljava/lang/Boolean;"), localNewLocal11);
        map.put(TypeId.get("Ljava/lang/Byte;"), localNewLocal12);
        map.put(TypeId.get("Ljava/lang/Character;"), localNewLocal13);
        map.put(TypeId.get("Ljava/lang/Double;"), localNewLocal14);
        map.put(TypeId.get("Ljava/lang/Float;"), localNewLocal15);
        map.put(TypeId.get("Ljava/lang/Integer;"), localNewLocal16);
        map.put(TypeId.get("Ljava/lang/Long;"), localNewLocal17);
        map.put(TypeId.get("Ljava/lang/Short;"), localNewLocal18);
        map.put(TypeId.get("Ljava/lang/Void;"), localNewLocal19);
        return map;
    }

    public static TypeId getObjTypeIdIfPrimitive(TypeId typeId) {
        if (typeId.equals(TypeId.BOOLEAN)) {
            return TypeId.get("Ljava/lang/Boolean;");
        }
        if (typeId.equals(TypeId.BYTE)) {
            return TypeId.get("Ljava/lang/Byte;");
        }
        if (typeId.equals(TypeId.CHAR)) {
            return TypeId.get("Ljava/lang/Character;");
        }
        if (typeId.equals(TypeId.DOUBLE)) {
            return TypeId.get("Ljava/lang/Double;");
        }
        if (typeId.equals(TypeId.FLOAT)) {
            return TypeId.get("Ljava/lang/Float;");
        }
        if (typeId.equals(TypeId.INT)) {
            return TypeId.get("Ljava/lang/Integer;");
        }
        if (typeId.equals(TypeId.LONG)) {
            return TypeId.get("Ljava/lang/Long;");
        }
        if (typeId.equals(TypeId.SHORT)) {
            return TypeId.get("Ljava/lang/Short;");
        }
        return typeId.equals(TypeId.VOID) ? TypeId.get("Ljava/lang/Void;") : typeId;
    }

    public static void moveException(Code code, Local<?> local) {
        addInstruction(code, new PlainInsn(Rops.opMoveException(Type.THROWABLE), SourcePosition.NO_INFO, spec(local), RegisterSpecList.EMPTY));
    }

    public static void returnRightValue(Code code, Class<?> cls, Map<Class, Local> map) {
        code.returnValue(map.get(cls));
    }

    public static RegisterSpec spec(Local<?> local) {
        if (specMethod == null) {
            try {
                specMethod = Local.class.getDeclaredMethod("spec", new Class[0]);
                specMethod.setAccessible(true);
            } catch (NoSuchMethodException e10) {
                e10.printStackTrace();
            }
        }
        try {
            return (RegisterSpec) specMethod.invoke(local, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
