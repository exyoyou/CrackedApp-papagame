package com.kwad.sdk.api.loader;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class s {

    static abstract class a<T> implements c<T> {
        c<T> aID;

        a(c<T> cVar) {
            this.aID = cVar;
        }
    }

    static class b implements f<com.kwad.sdk.api.loader.a.C0917a> {
        b() {
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<com.kwad.sdk.api.loader.a.C0917a> cVar) {
            try {
                new com.kwad.sdk.api.loader.h(abVar).a(new com.kwad.sdk.api.loader.h.a() { // from class: com.kwad.sdk.api.loader.s.b.1
                    @Override // com.kwad.sdk.api.loader.h.a
                    @WorkerThread
                    public final void a(com.kwad.sdk.api.loader.a.b bVar) {
                        Objects.toString(bVar);
                        if (bVar.isLegal()) {
                            cVar.m(bVar.aHF);
                        } else {
                            new RuntimeException("UpdateData is illegal");
                        }
                        try {
                            com.kwad.sdk.api.loader.f.bn(abVar.getContext()).cancel();
                        } catch (Throwable unused) {
                        }
                    }
                });
            } catch (Exception unused) {
            }
        }
    }

    public interface c<T> {
        void m(T t10);
    }

    static class d implements f<com.kwad.sdk.api.loader.a.C0917a> {
        f<com.kwad.sdk.api.loader.a.C0917a> aIH;

        d(f<com.kwad.sdk.api.loader.a.C0917a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<com.kwad.sdk.api.loader.a.C0917a> cVar) {
            this.aIH.a(abVar, new a<com.kwad.sdk.api.loader.a.C0917a>(cVar) { // from class: com.kwad.sdk.api.loader.s.d.1
                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                @WorkerThread
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(@NonNull com.kwad.sdk.api.loader.a.C0917a c0917a) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    File fileV = null;
                    try {
                        l.a(c0917a);
                        fileV = j.v(abVar.getContext(), c0917a.sdkVersion);
                        k.c(c0917a.aHD, fileV);
                        l.a(c0917a, System.currentTimeMillis() - jCurrentTimeMillis);
                        c0917a.aHE = fileV;
                        cVar.m(c0917a);
                    } catch (Throwable th) {
                        l.a(c0917a, System.currentTimeMillis() - jCurrentTimeMillis, Log.getStackTraceString(th));
                        j.j(fileV);
                    }
                }
            });
        }
    }

    static class e implements f<Boolean> {
        f<com.kwad.sdk.api.loader.a.C0917a> aIH;

        e(f<com.kwad.sdk.api.loader.a.C0917a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<Boolean> cVar) {
            this.aIH.a(abVar, new c<com.kwad.sdk.api.loader.a.C0917a>() { // from class: com.kwad.sdk.api.loader.s.e.1
                private void a(com.kwad.sdk.api.loader.a.C0917a c0917a, int i10, Throwable th) {
                    j.j(c0917a.aHE);
                    l.b(c0917a, i10, Log.getStackTraceString(th));
                }

                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(@NonNull com.kwad.sdk.api.loader.a.C0917a c0917a) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        l.b(c0917a);
                        if (!com.kwad.sdk.api.loader.d.a(abVar.getContext(), AnonymousClass1.class.getClassLoader(), c0917a.aHE.getPath(), c0917a.sdkVersion)) {
                            a(c0917a, 1, new RuntimeException("Apk pre install fail"));
                            return;
                        }
                        i.t(abVar.getContext(), c0917a.sdkVersion);
                        j.j(c0917a.aHE);
                        l.b(c0917a, System.currentTimeMillis() - jCurrentTimeMillis);
                        cVar.m(Boolean.TRUE);
                    } catch (Throwable th) {
                        a(c0917a, 2, th);
                    }
                }
            });
        }
    }

    public interface f<T> {
        void a(ab abVar, c<T> cVar);
    }

    static class g implements f<com.kwad.sdk.api.loader.a.C0917a> {
        f<com.kwad.sdk.api.loader.a.C0917a> aIH;

        g(f<com.kwad.sdk.api.loader.a.C0917a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(ab abVar, final c<com.kwad.sdk.api.loader.a.C0917a> cVar) {
            this.aIH.a(abVar, new a<com.kwad.sdk.api.loader.a.C0917a>(cVar) { // from class: com.kwad.sdk.api.loader.s.g.1
                private void a(com.kwad.sdk.api.loader.a.C0917a c0917a, int i10, Throwable th) {
                    j.j(c0917a.aHE);
                    l.a(c0917a, i10, th.getMessage());
                }

                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(@NonNull com.kwad.sdk.api.loader.a.C0917a c0917a) {
                    try {
                        File file = c0917a.aHE;
                        if (!x.k(file)) {
                            a(c0917a, 1, new RuntimeException("Security checkFileValid fail"));
                        } else if (x.a(file, c0917a.md5)) {
                            cVar.m(c0917a);
                        } else {
                            a(c0917a, 2, new RuntimeException("Security checkMd5 fail"));
                        }
                    } catch (Throwable th) {
                        a(c0917a, 3, th);
                    }
                }
            });
        }
    }

    static class h implements f<com.kwad.sdk.api.loader.a.C0917a> {
        f<com.kwad.sdk.api.loader.a.C0917a> aIH;

        h(f<com.kwad.sdk.api.loader.a.C0917a> fVar) {
            this.aIH = fVar;
        }

        @Override // com.kwad.sdk.api.loader.s.f
        public final void a(final ab abVar, final c<com.kwad.sdk.api.loader.a.C0917a> cVar) {
            this.aIH.a(abVar, new c<com.kwad.sdk.api.loader.a.C0917a>() { // from class: com.kwad.sdk.api.loader.s.h.1
                /* JADX INFO: Access modifiers changed from: private */
                @Override // com.kwad.sdk.api.loader.s.c
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public void m(com.kwad.sdk.api.loader.a.C0917a c0917a) {
                    String strBo = i.bo(abVar.getContext());
                    if (TextUtils.isEmpty(strBo)) {
                        strBo = com.kwad.sdk.api.c.Hu().getSDKVersion();
                    }
                    String str = c0917a.sdkVersion;
                    com.kwad.sdk.api.loader.b.a(abVar.getContext(), "interval", c0917a.interval);
                    com.kwad.sdk.api.loader.b.a(abVar.getContext(), "lastUpdateTime", System.currentTimeMillis());
                    if (c0917a.HB()) {
                        aa.bv(abVar.getContext());
                        new RuntimeException("DynamicType == -1, curVersion: " + strBo);
                        return;
                    }
                    if (i.N(c0917a.sdkVersion, strBo) && c0917a.HA()) {
                        cVar.m(c0917a);
                        return;
                    }
                    new RuntimeException("No new sdkVersion. remote sdkVersion:" + c0917a.sdkVersion + " currentDynamicVersion:" + strBo + " dynamicType:" + c0917a.aHC);
                }
            });
        }
    }

    static f<Boolean> HK() {
        return new e(new g(new d(new h(new b()))));
    }
}
