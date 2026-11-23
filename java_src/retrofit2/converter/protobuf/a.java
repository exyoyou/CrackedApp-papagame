package retrofit2.converter.protobuf;

import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes10.dex */
public final class a extends Converter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final ExtensionRegistryLite f96864a;

    private a(@Nullable ExtensionRegistryLite extensionRegistryLite) {
        this.f96864a = extensionRegistryLite;
    }

    public static a a() {
        return new a(null);
    }

    public static a b(@Nullable ExtensionRegistryLite extensionRegistryLite) {
        return new a(extensionRegistryLite);
    }

    @Override // retrofit2.Converter.Factory
    @Nullable
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if ((type instanceof Class) && MessageLite.class.isAssignableFrom((Class) type)) {
            return new b();
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    @Nullable
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        Parser parser;
        if (!(type instanceof Class)) {
            return null;
        }
        Class cls = (Class) type;
        if (!MessageLite.class.isAssignableFrom(cls)) {
            return null;
        }
        try {
            try {
                parser = (Parser) cls.getDeclaredMethod("parser", new Class[0]).invoke(null, new Object[0]);
            } catch (IllegalAccessException | NoSuchFieldException e10) {
                throw new IllegalArgumentException("Found a protobuf message but " + cls.getName() + " had no parser() method or PARSER field.", e10);
            }
        } catch (IllegalAccessException | NoSuchMethodException unused) {
            parser = (Parser) cls.getDeclaredField("PARSER").get(null);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(e11.getCause());
        }
        return new c(parser, this.f96864a);
    }
}
