package io.netty.handler.ssl;

import io.netty.util.internal.SuppressJava6Requirement;
import javax.net.ssl.SSLParameters;

/* JADX INFO: loaded from: classes.dex */
final class Java7SslParametersUtils {
    private Java7SslParametersUtils() {
    }

    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    static void setAlgorithmConstraints(SSLParameters sSLParameters, Object obj) {
        sSLParameters.setAlgorithmConstraints(a.a(obj));
    }
}
