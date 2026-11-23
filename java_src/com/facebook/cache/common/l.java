package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class l {

    static class a implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ InputStream f26727a;

        a(final InputStream val$is) {
            this.f26727a = val$is;
        }

        @Override // com.facebook.cache.common.k
        public void a(OutputStream os) throws IOException {
            com.facebook.common.internal.b.a(this.f26727a, os);
        }
    }

    static class b implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ byte[] f26728a;

        b(final byte[] val$data) {
            this.f26728a = val$data;
        }

        @Override // com.facebook.cache.common.k
        public void a(OutputStream os) throws IOException {
            os.write(this.f26728a);
        }
    }

    public static k a(final InputStream is) {
        return new a(is);
    }

    public static k b(final byte[] data) {
        return new b(data);
    }
}
