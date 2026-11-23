package com.facebook.imagepipeline.nativecode;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
public interface g {
    boolean a(com.facebook.imageformat.c webpFormat);

    void b(InputStream inputStream, OutputStream outputStream, int quality) throws IOException;

    void c(InputStream inputStream, OutputStream outputStream) throws IOException;
}
