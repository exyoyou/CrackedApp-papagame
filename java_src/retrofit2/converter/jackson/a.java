package retrofit2.converter.jackson;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes10.dex */
public final class a extends Converter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ObjectMapper f96860a;

    private a(ObjectMapper objectMapper) {
        this.f96860a = objectMapper;
    }

    public static a a() {
        return b(new ObjectMapper());
    }

    public static a b(ObjectMapper objectMapper) {
        if (objectMapper != null) {
            return new a(objectMapper);
        }
        throw new NullPointerException("mapper == null");
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new b(this.f96860a.writerFor(this.f96860a.getTypeFactory().constructType(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new c(this.f96860a.readerFor(this.f96860a.getTypeFactory().constructType(type)));
    }
}
