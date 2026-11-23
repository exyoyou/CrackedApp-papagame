package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes10.dex */
public final class a extends Converter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f96853a;

    private a(Gson gson) {
        this.f96853a = gson;
    }

    public static a a() {
        return b(new Gson());
    }

    public static a b(Gson gson) {
        if (gson != null) {
            return new a(gson);
        }
        throw new NullPointerException("gson == null");
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new b(this.f96853a, this.f96853a.getAdapter(TypeToken.get(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new c(this.f96853a, this.f96853a.getAdapter(TypeToken.get(type)));
    }
}
