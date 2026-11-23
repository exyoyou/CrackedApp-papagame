package b4;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class g {
    @Nullable
    public static <T> Uri a(@Nullable T mainRequest, @Nullable T lowResRequest, @Nullable T[] firstAvailableRequest, com.facebook.common.internal.f<T, Uri> requestToUri) {
        T t10;
        Uri uriApply;
        Uri uriApply2;
        if (mainRequest != null && (uriApply2 = requestToUri.apply(mainRequest)) != null) {
            return uriApply2;
        }
        if (firstAvailableRequest != null && firstAvailableRequest.length > 0 && (t10 = firstAvailableRequest[0]) != null && (uriApply = requestToUri.apply(t10)) != null) {
            return uriApply;
        }
        if (lowResRequest != null) {
            return requestToUri.apply(lowResRequest);
        }
        return null;
    }
}
