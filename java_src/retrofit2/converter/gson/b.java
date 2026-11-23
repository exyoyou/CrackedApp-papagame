package retrofit2.converter.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes10.dex */
final class b<T> implements Converter<T, RequestBody> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final MediaType f96854c = MediaType.get("application/json; charset=UTF-8");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Charset f96855d = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f96856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypeAdapter<T> f96857b;

    b(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f96856a = gson;
        this.f96857b = typeAdapter;
    }

    @Override // retrofit2.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RequestBody convert(T t10) throws IOException {
        Buffer buffer = new Buffer();
        JsonWriter jsonWriterNewJsonWriter = this.f96856a.newJsonWriter(new OutputStreamWriter(buffer.outputStream(), f96855d));
        this.f96857b.write(jsonWriterNewJsonWriter, t10);
        jsonWriterNewJsonWriter.close();
        return RequestBody.create(f96854c, buffer.readByteString());
    }
}
