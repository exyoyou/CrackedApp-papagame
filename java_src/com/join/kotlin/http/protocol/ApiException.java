package com.join.kotlin.http.protocol;

import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.gson.JsonParseException;
import com.join.mgps.dto.ResponseModel;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.conn.ConnectTimeoutException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 \u00142\u00060\u0001j\u0002`\u0002:\u0001\u0014B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0012\"\u0004\b\u0000\u0010\u0013R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/http/protocol/ApiException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "error", "", "message", "", "cause", "", "<init>", "(ILjava/lang/String;Ljava/lang/Throwable;)V", "getError", "()I", "getMessage", "()Ljava/lang/String;", "getCause", "()Ljava/lang/Throwable;", "toResponse", "Lcom/join/mgps/dto/ResponseModel;", "T", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ApiException extends RuntimeException {
    public static final int CODE_AUTH_INVALID = 401;
    public static final int CODE_JSON_PARSE_ERROR = 4010;
    public static final int CODE_NET_ERROR = 4000;
    public static final int CODE_SERVER_ERROR = 5000;
    public static final int CODE_TIMEOUT = 4080;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private final Throwable cause;
    private final int error;

    @Nullable
    private final String message;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/join/kotlin/http/protocol/ApiException$Companion;", "", "<init>", "()V", "CODE_NET_ERROR", "", "CODE_TIMEOUT", "CODE_JSON_PARSE_ERROR", "CODE_SERVER_ERROR", "CODE_AUTH_INVALID", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/join/kotlin/http/protocol/ApiException;", "e", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ApiException build(@NotNull Throwable e10) {
            Intrinsics.checkNotNullParameter(e10, "e");
            e10.printStackTrace();
            if (e10 instanceof HttpException) {
                return new ApiException(4000, OauthResult.RESULT_MSG_NETWORK_EXCEPTION, null, 4, null);
            }
            if (e10 instanceof UnknownHostException) {
                return new ApiException(4000, "网络连接失败，请检查后再试", null, 4, null);
            }
            if ((e10 instanceof ConnectTimeoutException) || (e10 instanceof SocketTimeoutException)) {
                return new ApiException(ApiException.CODE_TIMEOUT, "请求超时，请稍后再试", null, 4, null);
            }
            if (e10 instanceof IOException) {
                return new ApiException(4000, OauthResult.RESULT_MSG_NETWORK_EXCEPTION, null, 4, null);
            }
            return ((e10 instanceof JsonParseException) || (e10 instanceof JSONException)) ? new ApiException(4010, "数据解析错误，请稍后再试", null, 4, null) : new ApiException(5000, "系统错误", null, 4, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ ApiException(int i10, String str, Throwable th, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, (i11 & 4) != 0 ? null : th);
    }

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.cause;
    }

    public final int getError() {
        return this.error;
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this.message;
    }

    @NotNull
    public final <T> ResponseModel<T> toResponse() {
        int i10 = this.error;
        return new ResponseModel<>(i10, i10, getMessage());
    }

    public ApiException(int i10, @Nullable String str, @Nullable Throwable th) {
        super(str, th);
        this.error = i10;
        this.message = str;
        this.cause = th;
    }
}
