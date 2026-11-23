package com.kwad.sdk.core.diskcache.b;

import androidx.annotation.NonNull;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.i;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    static void a(@NonNull final com.kwad.sdk.core.diskcache.a.a aVar, @NonNull final String str, @NonNull final String str2) {
        i.execute(new bi() { // from class: com.kwad.sdk.core.diskcache.b.b.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                OutputStream outputStreamEs = null;
                try {
                    com.kwad.sdk.core.diskcache.a.a.C0927a c0927aEo = aVar.eo(str2);
                    if (c0927aEo != null) {
                        outputStreamEs = c0927aEo.es(0);
                        if (b.a(str, outputStreamEs, new com.kwad.sdk.core.network.a.a.C0937a())) {
                            c0927aEo.commit();
                        } else {
                            c0927aEo.abort();
                        }
                        aVar.flush();
                    }
                } catch (IOException unused) {
                } finally {
                    com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
                }
            }
        });
    }

    static File a(@NonNull com.kwad.sdk.core.diskcache.a.a aVar, @NonNull String str) throws Throwable {
        com.kwad.sdk.core.diskcache.a.a.c cVarEn;
        com.kwad.sdk.core.diskcache.a.a.c cVar = null;
        try {
            cVarEn = aVar.en(str);
            if (cVarEn != null) {
                try {
                    File fileEv = cVarEn.ev(0);
                    com.kwad.sdk.crash.utils.b.closeQuietly(cVarEn);
                    return fileEv;
                } catch (IOException unused) {
                } catch (Throwable th) {
                    th = th;
                    cVar = cVarEn;
                    com.kwad.sdk.crash.utils.b.closeQuietly(cVar);
                    throw th;
                }
            }
        } catch (IOException unused2) {
            cVarEn = null;
        } catch (Throwable th2) {
            th = th2;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(cVarEn);
        return null;
    }

    static boolean a(@NonNull com.kwad.sdk.core.diskcache.a.a aVar, @NonNull String str, @NonNull String str2, com.kwad.sdk.core.network.a.a.C0937a c0937a) {
        boolean z10 = false;
        OutputStream outputStreamEs = null;
        try {
            try {
                com.kwad.sdk.core.diskcache.a.a.C0927a c0927aEo = aVar.eo(str2);
                if (c0927aEo != null) {
                    outputStreamEs = c0927aEo.es(0);
                    if (a(str, outputStreamEs, c0937a)) {
                        c0927aEo.commit();
                        z10 = true;
                    } else {
                        c0927aEo.abort();
                    }
                    aVar.flush();
                }
            } catch (IOException e10) {
                c0937a.msg = e10.getMessage();
            }
            return z10;
        } finally {
            com.kwad.sdk.crash.utils.b.closeQuietly(outputStreamEs);
        }
    }

    public static boolean a(String str, OutputStream outputStream, com.kwad.sdk.core.network.a.a.C0937a c0937a) {
        return com.kwad.sdk.core.network.a.a.a(str, outputStream, c0937a, -1L, true, null);
    }
}
