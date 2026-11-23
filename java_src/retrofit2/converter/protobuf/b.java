package retrofit2.converter.protobuf;

import com.google.protobuf.MessageLite;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes10.dex */
final class b<T extends MessageLite> implements Converter<T, RequestBody> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final MediaType f96865a = MediaType.get("application/x-protobuf");

    b() {
    }

    @Override // retrofit2.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RequestBody convert(T t10) throws IOException {
        return RequestBody.create(f96865a, t10.toByteArray());
    }
}
