package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.deserializer.p;
import com.alibaba.fastjson.parser.deserializer.q;
import com.alibaba.fastjson.parser.deserializer.y0;
import com.alibaba.fastjson.parser.k;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.serializer.e2;
import com.alibaba.fastjson.serializer.f1;
import com.alibaba.fastjson.serializer.l;
import com.alibaba.fastjson.serializer.n1;
import com.alibaba.fastjson.serializer.o1;
import com.alibaba.fastjson.serializer.t1;
import com.alibaba.fastjson.serializer.u1;
import com.alibaba.fastjson.serializer.v0;
import com.alibaba.fastjson.serializer.v1;
import com.alibaba.fastjson.util.j;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements e, b {
    public static String DEFAULT_TYPE_KEY = "@type";
    public static String DUMP_CLASS = null;
    public static final String VERSION = "1.2.0";
    public static int DEFAULT_PARSER_FEATURE = (((((((Feature.AutoCloseSource.getMask() | 0) | Feature.InternFieldNames.getMask()) | Feature.UseBigDecimal.getMask()) | Feature.AllowUnQuotedFieldNames.getMask()) | Feature.AllowSingleQuotes.getMask()) | Feature.AllowArbitraryCommas.getMask()) | Feature.SortFeidFastMatch.getMask()) | Feature.IgnoreNotMatch.getMask();
    public static String DEFFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static int DEFAULT_GENERATE_FEATURE = (((SerializerFeature.QuoteFieldNames.getMask() | 0) | SerializerFeature.SkipTransientField.getMask()) | SerializerFeature.WriteEnumUsingToString.getMask()) | SerializerFeature.SortField.getMask();

    private static void a(v0 v0Var, u1 u1Var) {
        if (u1Var == null) {
            return;
        }
        if (u1Var instanceof o1) {
            v0Var.r().add((o1) u1Var);
        }
        if (u1Var instanceof f1) {
            v0Var.m().add((f1) u1Var);
        }
        if (u1Var instanceof e2) {
            v0Var.u().add((e2) u1Var);
        }
        if (u1Var instanceof n1) {
            v0Var.p().add((n1) u1Var);
        }
        if (u1Var instanceof l) {
            v0Var.g().add((l) u1Var);
        }
        if (u1Var instanceof com.alibaba.fastjson.serializer.c) {
            v0Var.e().add((com.alibaba.fastjson.serializer.c) u1Var);
        }
    }

    private static void b(v0 v0Var, u1... u1VarArr) {
        for (u1 u1Var : u1VarArr) {
            a(v0Var, u1Var);
        }
    }

    public static final Object parse(String str) {
        return parse(str, DEFAULT_PARSER_FEATURE);
    }

    public static final JSONArray parseArray(String str) {
        JSONArray jSONArray = null;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(str, k.k());
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.j();
        } else if (dVarZ.b() != 20) {
            jSONArray = new JSONArray();
            cVar.f0(jSONArray);
            cVar.O(jSONArray);
        }
        cVar.close();
        return jSONArray;
    }

    public static final JSONObject parseObject(String str, Feature... featureArr) {
        return (JSONObject) parse(str, featureArr);
    }

    public static final Object toJSON(Object obj) {
        return toJSON(obj, k.k());
    }

    public static final byte[] toJSONBytes(Object obj, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            v0Var.K(obj);
            return v1Var.k("UTF-8");
        } finally {
            v1Var.close();
        }
    }

    public static final String toJSONString(Object obj) {
        return toJSONString(obj, new SerializerFeature[0]);
    }

    public static final String toJSONStringWithDateFormat(Object obj, String str, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            v0Var.b(SerializerFeature.WriteDateUseDateFormat, true);
            if (str != null) {
                v0Var.G(str);
            }
            v0Var.K(obj);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }

    public static final String toJSONStringZ(Object obj, t1 t1Var, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1(serializerFeatureArr);
        try {
            new v0(v1Var, t1Var).K(obj);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }

    public static final <T> T toJavaObject(a aVar, Class<T> cls) {
        return (T) com.alibaba.fastjson.util.k.c(aVar, cls, k.k());
    }

    public static final void writeJSONStringTo(Object obj, Writer writer, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1(writer);
        try {
            v0 v0Var = new v0(v1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            v0Var.K(obj);
        } finally {
            v1Var.close();
        }
    }

    public String toString() {
        return toJSONString();
    }

    @Override // com.alibaba.fastjson.e
    public void writeJSONString(Appendable appendable) {
        v1 v1Var = new v1();
        try {
            try {
                new v0(v1Var).K(this);
                appendable.append(v1Var.toString());
                v1Var.close();
            } catch (IOException e10) {
                throw new JSONException(e10.getMessage(), e10);
            }
        } catch (Throwable th) {
            v1Var.close();
            throw th;
        }
    }

    public static final Object parse(String str, int i10) {
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(str, k.k(), i10);
        Object objQ = cVar.Q();
        cVar.O(objQ);
        cVar.close();
        return objQ;
    }

    public static final JSONObject parseObject(String str) {
        Object obj = parse(str);
        return obj instanceof JSONObject ? (JSONObject) obj : (JSONObject) toJSON(obj);
    }

    public static final Object toJSON(Object obj, k kVar) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            JSONObject jSONObject = new JSONObject(map.size());
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put(com.alibaba.fastjson.util.k.v(entry.getKey()), toJSON(entry.getValue()));
            }
            return jSONObject;
        }
        if (obj instanceof Collection) {
            Collection collection = (Collection) obj;
            JSONArray jSONArray = new JSONArray(collection.size());
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                jSONArray.add(toJSON(it2.next()));
            }
            return jSONArray;
        }
        Class<?> cls = obj.getClass();
        if (cls.isEnum()) {
            return ((Enum) obj).name();
        }
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            JSONArray jSONArray2 = new JSONArray(length);
            for (int i10 = 0; i10 < length; i10++) {
                jSONArray2.add(toJSON(Array.get(obj, i10)));
            }
            return jSONArray2;
        }
        if (kVar.n(cls)) {
            return obj;
        }
        try {
            List<com.alibaba.fastjson.util.e> listY = com.alibaba.fastjson.util.k.y(cls, null);
            JSONObject jSONObject2 = new JSONObject(listY.size());
            for (com.alibaba.fastjson.util.e eVar : listY) {
                jSONObject2.put(eVar.getName(), toJSON(eVar.f(obj)));
            }
            return jSONObject2;
        } catch (IllegalAccessException e10) {
            throw new JSONException("toJSON error", e10);
        } catch (InvocationTargetException e11) {
            throw new JSONException("toJSON error", e11);
        }
    }

    public static final String toJSONString(Object obj, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            v0Var.K(obj);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }

    public static final Object parse(byte[] bArr, Feature... featureArr) {
        return parse(bArr, 0, bArr.length, j.h(), featureArr);
    }

    public static final <T> T parseObject(String str, h<T> hVar, Feature... featureArr) {
        return (T) parseObject(str, hVar.getType(), k.k(), DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static final Object parse(byte[] bArr, int i10, int i11, CharsetDecoder charsetDecoder, Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(bArr, i10, i11, charsetDecoder, iConfig);
    }

    public static final <T> T parseObject(String str, Class<T> cls, Feature... featureArr) {
        return (T) parseObject(str, cls, k.k(), DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static final <T> T parseObject(String str, Class<T> cls, y0 y0Var, Feature... featureArr) {
        return (T) parseObject(str, cls, k.k(), y0Var, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static final byte[] toJSONBytes(Object obj, t1 t1Var, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var, t1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            v0Var.K(obj);
            return v1Var.k("UTF-8");
        } finally {
            v1Var.close();
        }
    }

    public static final <T> T parseObject(String str, Type type, Feature... featureArr) {
        return (T) parseObject(str, type, k.k(), DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static final String toJSONString(Object obj, u1 u1Var, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            v0Var.b(SerializerFeature.WriteDateUseDateFormat, true);
            a(v0Var, u1Var);
            v0Var.K(obj);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }

    public static final <T> List<T> parseArray(String str, Class<T> cls) {
        ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(str, k.k());
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() == 8) {
            dVarZ.j();
        } else {
            arrayList = new ArrayList();
            cVar.c0(cls, arrayList);
            cVar.O(arrayList);
        }
        cVar.close();
        return arrayList;
    }

    public static final <T> T parseObject(String str, Type type, y0 y0Var, Feature... featureArr) {
        return (T) parseObject(str, type, k.k(), DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static final <T> T parseObject(String str, Type type, int i10, Feature... featureArr) {
        if (str == null) {
            return null;
        }
        for (Feature feature : featureArr) {
            i10 = Feature.config(i10, feature, true);
        }
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(str, k.k(), i10);
        T t10 = (T) cVar.n0(type);
        cVar.O(t10);
        cVar.close();
        return t10;
    }

    public static final Object parse(byte[] bArr, int i10, int i11, CharsetDecoder charsetDecoder, int i12) {
        charsetDecoder.reset();
        char[] cArrG = j.g((int) (((double) i11) * ((double) charsetDecoder.maxCharsPerByte())));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i10, i11);
        CharBuffer charBufferWrap = CharBuffer.wrap(cArrG);
        com.alibaba.fastjson.util.f.b(charsetDecoder, byteBufferWrap, charBufferWrap);
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(cArrG, charBufferWrap.position(), k.k(), i12);
        Object objQ = cVar.Q();
        cVar.O(objQ);
        cVar.close();
        return objQ;
    }

    public static final <T> T parseObject(String str, Type type, k kVar, int i10, Feature... featureArr) {
        return (T) parseObject(str, type, kVar, (y0) null, i10, featureArr);
    }

    public static final List<Object> parseArray(String str, Type[] typeArr) {
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(str, k.k());
        Object[] objArrI0 = cVar.i0(typeArr);
        List<Object> listAsList = objArrI0 != null ? Arrays.asList(objArrI0) : null;
        cVar.O(listAsList);
        cVar.close();
        return listAsList;
    }

    public static final <T> T parseObject(String str, Type type, k kVar, y0 y0Var, int i10, Feature... featureArr) {
        if (str == null) {
            return null;
        }
        for (Feature feature : featureArr) {
            i10 = Feature.config(i10, feature, true);
        }
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(str, kVar, i10);
        if (y0Var instanceof q) {
            cVar.q().add((q) y0Var);
        }
        if (y0Var instanceof p) {
            cVar.o().add((p) y0Var);
        }
        T t10 = (T) cVar.n0(type);
        cVar.O(t10);
        cVar.close();
        return t10;
    }

    public static final String toJSONString(Object obj, u1[] u1VarArr, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            v0Var.b(SerializerFeature.WriteDateUseDateFormat, true);
            b(v0Var, u1VarArr);
            v0Var.K(obj);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }

    public static final Object parse(String str, Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        return parse(str, iConfig);
    }

    public static final String toJSONString(Object obj, t1 t1Var, SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, t1Var, (u1) null, serializerFeatureArr);
    }

    public static final <T> T parseObject(byte[] bArr, Type type, Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, j.h(), type, featureArr);
    }

    public static final String toJSONString(Object obj, t1 t1Var, u1 u1Var, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var, t1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            a(v0Var, u1Var);
            v0Var.K(obj);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }

    public static final <T> T parseObject(byte[] bArr, int i10, int i11, CharsetDecoder charsetDecoder, Type type, Feature... featureArr) {
        charsetDecoder.reset();
        char[] cArrG = j.g((int) (((double) i11) * ((double) charsetDecoder.maxCharsPerByte())));
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i10, i11);
        CharBuffer charBufferWrap = CharBuffer.wrap(cArrG);
        com.alibaba.fastjson.util.f.b(charsetDecoder, byteBufferWrap, charBufferWrap);
        return (T) parseObject(cArrG, charBufferWrap.position(), type, featureArr);
    }

    public static final String toJSONString(Object obj, t1 t1Var, u1[] u1VarArr, SerializerFeature... serializerFeatureArr) {
        v1 v1Var = new v1();
        try {
            v0 v0Var = new v0(v1Var, t1Var);
            for (SerializerFeature serializerFeature : serializerFeatureArr) {
                v0Var.b(serializerFeature, true);
            }
            b(v0Var, u1VarArr);
            v0Var.K(obj);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }

    public static final <T> T parseObject(char[] cArr, int i10, Type type, Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (Feature feature : featureArr) {
            iConfig = Feature.config(iConfig, feature, true);
        }
        com.alibaba.fastjson.parser.c cVar = new com.alibaba.fastjson.parser.c(cArr, i10, k.k(), iConfig);
        T t10 = (T) cVar.n0(type);
        cVar.O(t10);
        cVar.close();
        return t10;
    }

    public static final String toJSONString(Object obj, boolean z10) {
        return !z10 ? toJSONString(obj) : toJSONString(obj, SerializerFeature.PrettyFormat);
    }

    public static final <T> T parseObject(String str, Class<T> cls) {
        return (T) parseObject(str, (Class) cls, new Feature[0]);
    }

    @Override // com.alibaba.fastjson.b
    public String toJSONString() {
        v1 v1Var = new v1();
        try {
            new v0(v1Var).K(this);
            return v1Var.toString();
        } finally {
            v1Var.close();
        }
    }
}
