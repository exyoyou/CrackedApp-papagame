package retrofit2.converter.protobuf;

import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.Parser;
import java.io.IOException;
import javax.annotation.Nullable;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes10.dex */
final class c<T extends MessageLite> implements Converter<ResponseBody, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Parser<T> f96866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final ExtensionRegistryLite f96867b;

    c(Parser<T> parser, @Nullable ExtensionRegistryLite extensionRegistryLite) {
        this.f96866a = parser;
        this.f96867b = extensionRegistryLite;
    }

    @Override // retrofit2.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public T convert(ResponseBody responseBody) throws IOException {
        try {
            try {
                T from = this.f96867b == null ? this.f96866a.parseFrom(responseBody.byteStream()) : this.f96866a.parseFrom(responseBody.byteStream(), this.f96867b);
                responseBody.close();
                return from;
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th) {
            responseBody.close();
            throw th;
        }
    }
}
