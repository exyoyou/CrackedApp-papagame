package com.join.android.app.common.utils;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.protobuf.GeneratedMessageV3;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.t2;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class JsonMapper extends ObjectMapper {
    private static JsonMapper mapper = null;
    private static final long serialVersionUID = 1;

    class a extends JsonSerializer<Object> {
        a() {
        }

        @Override // com.fasterxml.jackson.databind.JsonSerializer
        public void serialize(Object value, JsonGenerator jgen, SerializerProvider provider) throws IOException {
            jgen.writeString("");
        }
    }

    public JsonMapper(boolean all) {
        if (all) {
            return;
        }
        initJsonMapper(JsonInclude.Include.NON_EMPTY);
    }

    public static JsonMapper defaultAll() {
        if (mapper == null) {
            mapper = new JsonMapper(true);
        }
        return mapper;
    }

    public static JsonMapper getInstance() {
        if (mapper == null) {
            mapper = new JsonMapper(false);
        }
        return mapper;
    }

    public static JsonMapper nonDefaultMapper() {
        if (mapper == null) {
            mapper = new JsonMapper(false);
        }
        return mapper;
    }

    public static String toJsonString(Object object) {
        return object == null ? "" : getInstance().toJson(object);
    }

    public JavaType createCollectionType(Class<?> collectionClass, Class<?>... elementClasses) {
        return getTypeFactory().constructParametricType(collectionClass, elementClasses);
    }

    public JsonMapper enableEnumUseToString() {
        enable(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
        enable(DeserializationFeature.READ_ENUMS_USING_TO_STRING);
        return this;
    }

    public JsonMapper enableJaxbAnnotation() {
        return this;
    }

    public JsonMapper enableSimple() {
        configure(JsonParser.Feature.ALLOW_SINGLE_QUOTES, true);
        configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
        return this;
    }

    public <T> T fromJson(String str, Class<T> cls) {
        if (t2.h(str)) {
            return null;
        }
        try {
            return (T) readValue(str, cls);
        } catch (IOException e10) {
            h1.e("parse json string error:", str, e10.toString());
            return null;
        }
    }

    public ObjectMapper getMapper() {
        return this;
    }

    public void initJsonMapper(JsonInclude.Include include) {
        if (include != null) {
            setSerializationInclusion(include);
        }
        enableSimple();
        disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
        getSerializerProvider().setNullValueSerializer(new a());
        addMixIn(GeneratedMessageV3.class, a7.a.class);
    }

    public String toJson(Object object) {
        try {
            return writeValueAsString(object);
        } catch (IOException e10) {
            h1.e("write to json string error:", object.toString(), e10.toString());
            return null;
        }
    }

    public String toJsonP(String functionName, Object object) {
        return toJson(new JSONPObject(functionName, object));
    }

    public <T> T update(String str, T t10) {
        try {
            return (T) readerForUpdating(t10).readValue(str);
        } catch (JsonProcessingException unused) {
            return null;
        }
    }

    public <T> T fromJson(String str, JavaType javaType) {
        if (t2.h(str)) {
            return null;
        }
        try {
            return (T) readValue(str, javaType);
        } catch (IOException e10) {
            e10.printStackTrace();
            h1.e("parse json string error:", str, e10.toString());
            return null;
        }
    }

    public <T> T fromJson(String str, TypeReference typeReference) {
        if (t2.h(str)) {
            return null;
        }
        try {
            return (T) readValue(str, typeReference);
        } catch (IOException e10) {
            e10.printStackTrace();
            h1.e("parse json string error:", str, e10.toString());
            return null;
        }
    }
}
