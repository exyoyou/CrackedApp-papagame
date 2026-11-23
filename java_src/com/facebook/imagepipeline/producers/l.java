package com.facebook.imagepipeline.producers;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class l extends d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f28473c = "DataFetchProducer";

    public l(com.facebook.common.memory.g pooledByteBufferFactory) {
        super(com.facebook.common.executors.a.a(), pooledByteBufferFactory);
    }

    @VisibleForTesting
    static byte[] g(String uri) {
        com.facebook.common.internal.i.d(Boolean.valueOf(uri.substring(0, 5).equals("data:")));
        int iIndexOf = uri.indexOf(44);
        String strSubstring = uri.substring(iIndexOf + 1, uri.length());
        if (h(uri.substring(0, iIndexOf))) {
            return Base64.decode(strSubstring, 0);
        }
        String strDecode = Uri.decode(strSubstring);
        com.facebook.common.internal.i.i(strDecode);
        return strDecode.getBytes();
    }

    @VisibleForTesting
    static boolean h(String prefix) {
        if (!prefix.contains(";")) {
            return false;
        }
        String[] strArrSplit = prefix.split(";");
        return strArrSplit[strArrSplit.length - 1].equals(HttpHeaders.Values.BASE64);
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        byte[] bArrG = g(imageRequest.w().toString());
        return c(new ByteArrayInputStream(bArrG), bArrG.length);
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected String f() {
        return f28473c;
    }
}
