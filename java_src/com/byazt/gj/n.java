package com.byazt.gj;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface n {

    @com.byazt.zqa.c(c = {0, 1, 150, 151})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public final String f14549c;
        public final boolean tt;
        public final long ve;

        public c(@Nullable String str, boolean z10, long j10) {
            this.f14549c = str;
            this.tt = z10;
            this.ve = j10;
        }
    }

    @AnyThread
    void c(@NonNull c cVar);
}
