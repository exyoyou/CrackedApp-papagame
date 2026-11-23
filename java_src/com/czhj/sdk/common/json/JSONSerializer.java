package com.czhj.sdk.common.json;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.io.StringWriter;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
public class JSONSerializer {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private static final String[] REPLACEMENT_CHARS = new String[128];
    private static final Pattern linePattern;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            REPLACEMENT_CHARS[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        HTML_SAFE_REPLACEMENT_CHARS = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
        linePattern = Pattern.compile("_(\\w)");
    }

    @SuppressLint({"UseSparseArrays"})
    public static String Serialize(Object obj) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), null, false, false);
    }

    private static String SerializeArray(Object obj, HashMap<Integer, Object> map, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            sb2.append(Serialize(Array.get(obj, i10), map, null, z10, z11));
            if (i10 < length - 1) {
                sb2.append(",");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    private static String SerializeMap(Map map, HashMap<Integer, Object> map2, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        boolean z12 = false;
        for (Map.Entry entry : map.entrySet()) {
            String string = entry.getKey().toString();
            Object value = entry.getValue();
            if (z12) {
                sb2.append(",");
            }
            String strSerializeString = SerializeString(string);
            if (z10) {
                strSerializeString = lineToHump(strSerializeString);
            }
            sb2.append(strSerializeString);
            sb2.append(":");
            sb2.append(Serialize(value, map2, null, z10, z11));
            z12 = true;
        }
        sb2.append("}");
        return sb2.toString();
    }

    private static String SerializeObject(Object obj, HashMap<Integer, Object> map, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        boolean z12 = false;
        for (Field field : obj.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            try {
                Object obj2 = field.get(obj);
                String name = field.getName();
                boolean zIsStatic = Modifier.isStatic(field.getModifiers());
                boolean zIsAnnotationPresent = field.isAnnotationPresent(Transient.class);
                if (!name.startsWith("this$") && !zIsStatic && (obj2 == null || !zIsAnnotationPresent)) {
                    if (z12) {
                        sb2.append(",");
                    }
                    String strSerializeString = SerializeString(name);
                    if (z10) {
                        strSerializeString = lineToHump(strSerializeString);
                    }
                    sb2.append(strSerializeString);
                    sb2.append(":");
                    sb2.append(Serialize(obj2, map, null, z10, z11));
                    z12 = true;
                }
            } catch (Throwable th) {
                SigmobLog.e("json seriallize error", th);
            }
        }
        sb2.append("}");
        return sb2.toString();
    }

    private static String SerializePrimitive(Object obj) {
        return obj.toString();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0030 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:3:0x0009, B:5:0x0014, B:7:0x001c, B:19:0x003a, B:17:0x0030, B:18:0x0035, B:21:0x003f, B:22:0x0043), top: B:28:0x0009 }] */
    private static String SerializeString(String str) {
        String str2;
        String[] strArr = HTML_SAFE_REPLACEMENT_CHARS;
        StringWriter stringWriter = new StringWriter();
        try {
            stringWriter.write(34);
            int length = str.length();
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                char cCharAt = str.charAt(i11);
                if (cCharAt < 128) {
                    str2 = strArr[cCharAt];
                    if (str2 != null) {
                        if (i10 < i11) {
                            stringWriter.write(str, i10, i11 - i10);
                        }
                        stringWriter.write(str2);
                        i10 = i11 + 1;
                    }
                } else {
                    if (cCharAt == 8232) {
                        str2 = "\\u2028";
                    } else if (cCharAt == 8233) {
                        str2 = "\\u2029";
                    }
                    if (i10 < i11) {
                        stringWriter.write(str, i10, i11 - i10);
                    }
                    stringWriter.write(str2);
                    i10 = i11 + 1;
                }
            }
            if (i10 < length) {
                stringWriter.write(str, i10, length - i10);
            }
            stringWriter.write(34);
        } catch (Throwable th) {
            SigmobLog.e("SerializeString", th);
        }
        return stringWriter.toString();
    }

    private static String lineToHump(String str) {
        Pattern pattern = linePattern;
        if (!pattern.matcher(str).find()) {
            return str;
        }
        Matcher matcher = pattern.matcher(str.toLowerCase());
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, matcher.group(1).toUpperCase());
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static String Serialize(Object obj, String str) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), str, false, false);
    }

    public static String Serialize(Object obj, String str, boolean z10) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), str, z10, false);
    }

    public static String Serialize(Object obj, String str, boolean z10, boolean z11) throws CyclicObjectException {
        return Serialize(obj, new HashMap(), str, z10, z11);
    }

    private static String Serialize(Object obj, HashMap<Integer, Object> map, String str, boolean z10, boolean z11) throws CyclicObjectException {
        String strSerializePrimitive;
        if (obj == null) {
            return "null";
        }
        Class<?> cls = obj.getClass();
        if (obj instanceof String) {
            strSerializePrimitive = SerializeString((String) obj);
        } else if (cls.isPrimitive() || cls == Boolean.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == Byte.class || cls == Character.class) {
            strSerializePrimitive = SerializePrimitive(obj);
        } else {
            if (!z11 && map.get(Integer.valueOf(obj.hashCode())) != null) {
                return "null";
            }
            strSerializePrimitive = null;
        }
        map.put(Integer.valueOf(obj.hashCode()), obj);
        if (TextUtils.isEmpty(strSerializePrimitive)) {
            if (obj instanceof List) {
                List list = (List) obj;
                strSerializePrimitive = SerializeArray(list.toArray(new Object[list.size()]), map, z10, z11);
            } else if (obj instanceof Map) {
                strSerializePrimitive = SerializeMap((Map) obj, map, z10, z11);
            } else {
                strSerializePrimitive = cls.isArray() ? SerializeArray(obj, map, z10, z11) : SerializeObject(obj, map, z10, z11);
            }
        }
        if (TextUtils.isEmpty(str)) {
            return strSerializePrimitive;
        }
        StringBuilder sb2 = new StringBuilder("{");
        if (z10) {
            str = lineToHump(str);
        }
        sb2.append(SerializeString(str));
        sb2.append(':');
        sb2.append(strSerializePrimitive);
        sb2.append('}');
        return sb2.toString();
    }
}
