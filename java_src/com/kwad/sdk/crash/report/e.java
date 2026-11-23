package com.kwad.sdk.crash.report;

import androidx.annotation.Nullable;
import com.kwad.sdk.crash.model.message.ExceptionMessage;
import java.io.File;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public interface e {
    File PZ();

    void a(ExceptionMessage exceptionMessage, @Nullable CountDownLatch countDownLatch);
}
