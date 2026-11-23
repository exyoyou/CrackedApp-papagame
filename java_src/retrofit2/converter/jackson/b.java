package retrofit2.converter.jackson;

import com.fasterxml.jackson.databind.ObjectWriter;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes10.dex */
final class b<T> implements Converter<T, RequestBody> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final MediaType f96861b = MediaType.get("application/json; charset=UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ObjectWriter f96862a;

    b(ObjectWriter objectWriter) {
        this.f96862a = objectWriter;
    }

    @Override // retrofit2.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RequestBody convert(T t10) throws IOException {
        return RequestBody.create(f96861b, this.f96862a.writeValueAsBytes(t10));
    }
}
