package retrofit2.converter.jackson;

import com.fasterxml.jackson.databind.ObjectReader;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes10.dex */
final class c<T> implements Converter<ResponseBody, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ObjectReader f96863a;

    c(ObjectReader objectReader) {
        this.f96863a = objectReader;
    }

    @Override // retrofit2.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public T convert(ResponseBody responseBody) throws IOException {
        try {
            return (T) this.f96863a.readValue(responseBody.charStream());
        } finally {
            responseBody.close();
        }
    }
}
