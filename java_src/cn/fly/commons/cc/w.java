package cn.fly.commons.cc;

import com.join.mgps.Util.o0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
final class w {
    static void a(u.b bVar, int i10, String str, int i11) throws Throwable {
        Object objA = bVar.a();
        Object objA2 = bVar.a();
        switch (i10) {
            case 1:
                if ((objA instanceof Number) && (objA2 instanceof Number)) {
                    bVar.a(Boolean.valueOf(((Number) objA).doubleValue() >= ((Number) objA2).doubleValue()));
                    return;
                } else {
                    bVar.a(Boolean.valueOf(((Comparable) objA).compareTo(objA2) >= 0));
                    return;
                }
            case 2:
                a(bVar, objA, objA2, '/', str, i11);
                return;
            case 3:
                if ((objA instanceof Number) && (objA2 instanceof Number)) {
                    bVar.a(Boolean.valueOf(((Number) objA).doubleValue() <= ((Number) objA2).doubleValue()));
                    return;
                } else {
                    bVar.a(Boolean.valueOf(((Comparable) objA).compareTo(objA2) <= 0));
                    return;
                }
            case 4:
                a(bVar, objA, objA2, '*', str, i11);
                return;
            case 5:
                if ((objA instanceof Number) && (objA2 instanceof Number)) {
                    bVar.a(Boolean.valueOf(((Number) objA).doubleValue() > ((Number) objA2).doubleValue()));
                    return;
                } else {
                    bVar.a(Boolean.valueOf(((Comparable) objA).compareTo(objA2) > 0));
                    return;
                }
            case 6:
                a(bVar, objA, objA2, '-', str, i11);
                return;
            case 7:
                if ((objA instanceof Number) && (objA2 instanceof Number)) {
                    bVar.a(Boolean.valueOf(((Number) objA).doubleValue() < ((Number) objA2).doubleValue()));
                    return;
                } else {
                    bVar.a(Boolean.valueOf(((Comparable) objA).compareTo(objA2) < 0));
                    return;
                }
            case 8:
                a(bVar, objA, objA2);
                return;
            case 9:
                if (objA == null) {
                    bVar.a(Boolean.valueOf(objA2 != null));
                    return;
                } else if ((objA instanceof Number) && (objA2 instanceof Number)) {
                    bVar.a(Boolean.valueOf(((Number) objA).doubleValue() != ((Number) objA2).doubleValue()));
                    return;
                } else {
                    bVar.a(Boolean.valueOf(!objA.equals(objA2)));
                    return;
                }
            case 10:
                a(objA, objA2, str, i11);
                return;
            case 11:
                if (objA == null) {
                    bVar.a(Boolean.valueOf(objA2 == null));
                    return;
                } else if ((objA instanceof Number) && (objA2 instanceof Number)) {
                    bVar.a(Boolean.valueOf(((Number) objA).doubleValue() == ((Number) objA2).doubleValue()));
                    return;
                } else {
                    bVar.a(Boolean.valueOf(objA.equals(objA2)));
                    return;
                }
            case 12:
                bVar.a(Boolean.valueOf(((Class) objA2).isInstance(objA)));
                return;
            case 13:
            default:
                throw a(str, i11);
            case 14:
                a(bVar, objA, objA2, str, i11);
                return;
            case 15:
                a(bVar, objA, objA2, '%', str, i11);
                return;
        }
    }

    static void b(u.b bVar, int i10, String str, int i11) {
        Object objA = bVar.a();
        if (i10 != 13) {
            throw a(str, i11);
        }
        bVar.a(Boolean.valueOf(!((Boolean) objA).booleanValue()));
    }

    private static void a(u.b bVar, Object obj, Object obj2, String str, int i10) {
        Object bigInteger;
        Object objValueOf;
        if (String.class.equals(obj2)) {
            bVar.a((Object) (obj == null ? null : String.valueOf(obj)));
            return;
        }
        if (Number.class.equals(obj2)) {
            String strValueOf = String.valueOf(obj);
            if (strValueOf.contains(o0.f49827a)) {
                try {
                    try {
                        objValueOf = Float.valueOf(Float.parseFloat(strValueOf));
                    } catch (Throwable unused) {
                        objValueOf = Double.valueOf(Double.parseDouble(strValueOf));
                    }
                } catch (Throwable unused2) {
                    bigInteger = new BigDecimal(strValueOf);
                    objValueOf = bigInteger;
                }
            } else {
                try {
                    try {
                        objValueOf = Integer.valueOf(Integer.parseInt(strValueOf));
                    } catch (Throwable unused3) {
                        bigInteger = new BigInteger(strValueOf);
                        objValueOf = bigInteger;
                    }
                } catch (Throwable unused4) {
                    objValueOf = Long.valueOf(Long.parseLong(strValueOf));
                }
            }
            bVar.a(objValueOf);
            return;
        }
        if (!Double.class.equals(obj2) && !Double.TYPE.equals(obj2)) {
            if (!Float.class.equals(obj2) && !Float.TYPE.equals(obj2)) {
                if (!Integer.class.equals(obj2) && !Integer.TYPE.equals(obj2)) {
                    if (!Long.class.equals(obj2) && !Long.TYPE.equals(obj2)) {
                        if (!Short.class.equals(obj2) && !Short.TYPE.equals(obj2)) {
                            if (!Character.class.equals(obj2) && !Character.TYPE.equals(obj2)) {
                                if (!Byte.class.equals(obj2) && !Byte.TYPE.equals(obj2)) {
                                    if (!Boolean.class.equals(obj2)) {
                                        if (BigInteger.class.equals(obj2)) {
                                            bVar.a(new BigInteger(String.valueOf(obj)));
                                            return;
                                        } else if (BigDecimal.class.equals(obj2)) {
                                            bVar.a(new BigDecimal(String.valueOf(obj)));
                                            return;
                                        } else {
                                            bVar.a(((Class) obj2).cast(obj));
                                            return;
                                        }
                                    }
                                    if (obj == null) {
                                        bVar.a(Boolean.FALSE);
                                        return;
                                    }
                                    if (obj instanceof Number) {
                                        bVar.a(Boolean.valueOf(Double.valueOf(obj.toString()).doubleValue() == 0.0d));
                                        return;
                                    }
                                    if (obj instanceof String) {
                                        bVar.a(Boolean.valueOf(((String) obj).trim().toLowerCase().equals(cn.fly.commons.x.b("004hAcicfPe"))));
                                        return;
                                    } else if (obj instanceof Boolean) {
                                        bVar.a(obj);
                                        return;
                                    } else {
                                        bVar.a(Boolean.TRUE);
                                        return;
                                    }
                                }
                                bVar.a(Byte.valueOf(Double.valueOf(String.valueOf(obj)).byteValue()));
                                return;
                            }
                            if (obj instanceof Integer) {
                                bVar.a(Character.valueOf((char) ((Integer) obj).intValue()));
                                return;
                            }
                            if (obj instanceof Long) {
                                bVar.a(Character.valueOf((char) ((Long) obj).longValue()));
                                return;
                            }
                            if (obj instanceof Short) {
                                bVar.a(Character.valueOf((char) ((Short) obj).shortValue()));
                                return;
                            }
                            if (obj instanceof Byte) {
                                bVar.a(Character.valueOf((char) ((Byte) obj).byteValue()));
                                return;
                            } else if (obj instanceof Double) {
                                bVar.a(Character.valueOf((char) ((Double) obj).doubleValue()));
                                return;
                            } else {
                                if (obj instanceof Float) {
                                    bVar.a(Character.valueOf((char) ((Float) obj).floatValue()));
                                    return;
                                }
                                throw a(str, i10);
                            }
                        }
                        bVar.a(Short.valueOf(Double.valueOf(String.valueOf(obj)).shortValue()));
                        return;
                    }
                    bVar.a(Long.valueOf(Double.valueOf(String.valueOf(obj)).longValue()));
                    return;
                }
                bVar.a(Integer.valueOf(Double.valueOf(String.valueOf(obj)).intValue()));
                return;
            }
            bVar.a(Float.valueOf(Double.valueOf(String.valueOf(obj)).floatValue()));
            return;
        }
        bVar.a(Double.valueOf(String.valueOf(obj)));
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Code duplicated, block: B:33:0x0095  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b5 A[LOOP:0: B:39:0x00b2->B:41:0x00b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c9  */
    private static void a(Object obj, Object obj2, String str, int i10) throws Throwable {
        InputStream byteArrayInputStream;
        boolean z10;
        OutputStream fileOutputStream;
        byte[] bArr;
        int i11;
        File file;
        if (obj instanceof Collection) {
            if (obj2 instanceof Collection) {
                ((Collection) obj).addAll((Collection) obj2);
                return;
            } else {
                ((Collection) obj).add(obj2);
                return;
            }
        }
        if ((obj instanceof Map) && (obj2 instanceof Map)) {
            ((Map) obj).putAll((Map) obj2);
            return;
        }
        if (obj2 instanceof String) {
            byteArrayInputStream = new ByteArrayInputStream(((String) obj2).getBytes(Charset.forName("UTF-8")));
        } else if (obj2 instanceof byte[]) {
            byteArrayInputStream = new ByteArrayInputStream((byte[]) obj2);
        } else if (obj2 instanceof File) {
            byteArrayInputStream = new FileInputStream((File) obj2);
        } else {
            if (obj2 instanceof InputStream) {
                byteArrayInputStream = (InputStream) obj2;
                z10 = false;
            } else if (obj2 instanceof Serializable) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(obj2);
                objectOutputStream.flush();
                objectOutputStream.close();
                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            } else {
                throw a(str, i10);
            }
            if (obj instanceof File) {
                file = (File) obj;
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                fileOutputStream = new FileOutputStream(file, true);
            } else if (obj instanceof OutputStream) {
                fileOutputStream = (OutputStream) obj;
                z10 = false;
            } else {
                throw a(str, i10);
            }
            bArr = new byte[1024];
            for (i11 = byteArrayInputStream.read(bArr); i11 != -1; i11 = byteArrayInputStream.read(bArr)) {
                fileOutputStream.write(bArr, 0, i11);
            }
            fileOutputStream.flush();
            if (z10) {
                byteArrayInputStream.close();
            }
            fileOutputStream.close();
        }
        z10 = true;
        if (obj instanceof File) {
            file = (File) obj;
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            fileOutputStream = new FileOutputStream(file, true);
        } else if (obj instanceof OutputStream) {
            fileOutputStream = (OutputStream) obj;
            z10 = false;
        } else {
            throw a(str, i10);
        }
        bArr = new byte[1024];
        while (i11 != -1) {
            fileOutputStream.write(bArr, 0, i11);
        }
        fileOutputStream.flush();
        if (z10) {
            byteArrayInputStream.close();
        }
        fileOutputStream.close();
    }

    private static void a(u.b bVar, Object obj, Object obj2) {
        if (obj == null) {
            obj = "null";
        }
        if (obj2 == null) {
            obj2 = "null";
        }
        if ((obj instanceof Number) && (obj2 instanceof Number)) {
            a(bVar, (Number) obj, (Number) obj2, '+');
            return;
        }
        bVar.a((Object) (String.valueOf(obj) + String.valueOf(obj2)));
    }

    private static void a(u.b bVar, Object obj, Object obj2, char c10, String str, int i10) {
        if ((obj instanceof Number) && (obj2 instanceof Number)) {
            a(bVar, (Number) obj, (Number) obj2, c10);
            return;
        }
        throw a(str, i10);
    }

    private static RuntimeException a(String str, int i10) {
        return new RuntimeException("Bad oper at: " + str + "(" + i10 + ")");
    }

    private static void a(u.b bVar, Number number, Number number2, char c10) {
        double d10;
        float f10;
        long j10;
        int i10;
        int i11;
        int i12;
        if (!(number instanceof Double) && !(number2 instanceof Double)) {
            if (!(number instanceof Float) && !(number2 instanceof Float)) {
                if (!(number instanceof Long) && !(number2 instanceof Long)) {
                    if (!(number instanceof Integer) && !(number2 instanceof Integer)) {
                        if (!(number instanceof Short) && !(number2 instanceof Short)) {
                            byte bByteValue = number.byteValue();
                            byte bByteValue2 = number2.byteValue();
                            if (c10 == '+') {
                                i12 = bByteValue + bByteValue2;
                            } else if (c10 == '-') {
                                i12 = bByteValue - bByteValue2;
                            } else if (c10 == '*') {
                                i12 = bByteValue * bByteValue2;
                            } else {
                                i12 = c10 == '/' ? bByteValue / bByteValue2 : bByteValue % bByteValue2;
                            }
                            bVar.a(Integer.valueOf(i12));
                            return;
                        }
                        short sShortValue = number.shortValue();
                        short sShortValue2 = number2.shortValue();
                        if (c10 == '+') {
                            i11 = sShortValue + sShortValue2;
                        } else if (c10 == '-') {
                            i11 = sShortValue - sShortValue2;
                        } else if (c10 == '*') {
                            i11 = sShortValue * sShortValue2;
                        } else {
                            i11 = c10 == '/' ? sShortValue / sShortValue2 : sShortValue % sShortValue2;
                        }
                        bVar.a(Integer.valueOf(i11));
                        return;
                    }
                    int iIntValue = number.intValue();
                    int iIntValue2 = number2.intValue();
                    if (c10 == '+') {
                        i10 = iIntValue + iIntValue2;
                    } else if (c10 == '-') {
                        i10 = iIntValue - iIntValue2;
                    } else if (c10 == '*') {
                        i10 = iIntValue * iIntValue2;
                    } else {
                        i10 = c10 == '/' ? iIntValue / iIntValue2 : iIntValue % iIntValue2;
                    }
                    bVar.a(Integer.valueOf(i10));
                    return;
                }
                long jLongValue = number.longValue();
                long jLongValue2 = number2.longValue();
                if (c10 == '+') {
                    j10 = jLongValue + jLongValue2;
                } else if (c10 == '-') {
                    j10 = jLongValue - jLongValue2;
                } else if (c10 == '*') {
                    j10 = jLongValue * jLongValue2;
                } else {
                    j10 = c10 == '/' ? jLongValue / jLongValue2 : jLongValue % jLongValue2;
                }
                bVar.a(Long.valueOf(j10));
                return;
            }
            float fFloatValue = number.floatValue();
            float fFloatValue2 = number2.floatValue();
            if (c10 == '+') {
                f10 = fFloatValue + fFloatValue2;
            } else if (c10 == '-') {
                f10 = fFloatValue - fFloatValue2;
            } else if (c10 == '*') {
                f10 = fFloatValue * fFloatValue2;
            } else {
                f10 = c10 == '/' ? fFloatValue / fFloatValue2 : fFloatValue % fFloatValue2;
            }
            bVar.a(Float.valueOf(f10));
            return;
        }
        double dDoubleValue = number.doubleValue();
        double dDoubleValue2 = number2.doubleValue();
        if (c10 == '+') {
            d10 = dDoubleValue + dDoubleValue2;
        } else if (c10 == '-') {
            d10 = dDoubleValue - dDoubleValue2;
        } else if (c10 == '*') {
            d10 = dDoubleValue * dDoubleValue2;
        } else {
            d10 = c10 == '/' ? dDoubleValue / dDoubleValue2 : dDoubleValue % dDoubleValue2;
        }
        bVar.a(Double.valueOf(d10));
    }
}
