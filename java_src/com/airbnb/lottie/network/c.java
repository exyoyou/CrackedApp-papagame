package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public interface c extends Closeable {
    @NonNull
    InputStream T() throws IOException;

    @Nullable
    String contentType();

    @Nullable
    String error();

    boolean isSuccessful();
}
