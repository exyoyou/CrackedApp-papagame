package com.join.kotlin.base.net;

import android.net.ParseException;
import com.google.gson.JsonParseException;
import com.google.gson.stream.MalformedJsonException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import kotlin.Metadata;
import org.apache.http.conn.ConnectTimeoutException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¨\u0006\b"}, d2 = {"Lcom/join/kotlin/base/net/ExceptionHandle;", "", "<init>", "()V", "handleException", "Lcom/join/kotlin/base/net/AppException;", "e", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExceptionHandle {

    @NotNull
    public static final ExceptionHandle INSTANCE = new ExceptionHandle();

    private ExceptionHandle() {
    }

    @NotNull
    public final AppException handleException(@Nullable Throwable e10) {
        if (e10 == null) {
            return new AppException(Error.UNKNOWN, e10);
        }
        if (e10 instanceof HttpException) {
            return new AppException(Error.NETWORK_ERROR, e10);
        }
        if ((e10 instanceof JsonParseException) || (e10 instanceof JSONException) || (e10 instanceof ParseException) || (e10 instanceof MalformedJsonException)) {
            return new AppException(Error.PARSE_ERROR, e10);
        }
        if (e10 instanceof ConnectException) {
            return new AppException(Error.NETWORK_ERROR, e10);
        }
        if (e10 instanceof SSLException) {
            return new AppException(Error.SSL_ERROR, e10);
        }
        if (e10 instanceof ConnectTimeoutException) {
            return new AppException(Error.TIMEOUT_ERROR, e10);
        }
        if (e10 instanceof SocketTimeoutException) {
            return new AppException(Error.TIMEOUT_ERROR, e10);
        }
        if (e10 instanceof UnknownHostException) {
            return new AppException(Error.TIMEOUT_ERROR, e10);
        }
        return e10 instanceof AppException ? (AppException) e10 : new AppException(Error.UNKNOWN, e10);
    }
}
