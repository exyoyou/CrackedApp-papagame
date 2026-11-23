package j4;

import com.facebook.imagepipeline.producers.u0;
import com.facebook.imagepipeline.request.ImageRequest;

/* JADX INFO: loaded from: classes9.dex */
public interface f extends u0 {
    void b(ImageRequest request, String requestId, boolean isPrefetch);

    void e(ImageRequest request, Object callerContext, String requestId, boolean isPrefetch);

    void j(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch);

    void k(String requestId);
}
