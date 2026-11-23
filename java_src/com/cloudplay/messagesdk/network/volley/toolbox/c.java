package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.Network;

/* JADX INFO: loaded from: classes9.dex */
public class c implements Network {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f24082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final d f24083b;

    @Deprecated
    public c(HttpStack httpStack) {
        this(httpStack, new d(4096));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
    
        r12 = r3.d();
        r0 = r3.c();
     */
    @Override // com.cloudplay.messagesdk.network.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.cloudplay.messagesdk.network.volley.f performRequest(com.cloudplay.messagesdk.network.volley.Request<?> r19) throws com.cloudplay.messagesdk.network.volley.VolleyError {
        /*
            r18 = this;
            r1 = r18
            r8 = r19
            long r9 = android.os.SystemClock.elapsedRealtime()
        L8:
            java.util.Collections.emptyList()
            r2 = 0
            com.cloudplay.messagesdk.network.volley.Cache$a r0 = r19.d()     // Catch: java.io.IOException -> L70
            java.util.Map r0 = com.cloudplay.messagesdk.network.volley.toolbox.f.a(r0)     // Catch: java.io.IOException -> L70
            com.cloudplay.messagesdk.network.volley.toolbox.b r3 = r1.f24082a     // Catch: java.io.IOException -> L70
            com.cloudplay.messagesdk.network.volley.toolbox.g r3 = r3.a(r8, r0)     // Catch: java.io.IOException -> L70
            int r12 = r3.d()     // Catch: java.io.IOException -> L6b
            java.util.List r0 = r3.c()     // Catch: java.io.IOException -> L6b
            r4 = 304(0x130, float:4.26E-43)
            if (r12 != r4) goto L30
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L6b
            long r4 = r4 - r9
            com.cloudplay.messagesdk.network.volley.f r0 = com.cloudplay.messagesdk.network.volley.toolbox.k.a(r8, r4, r0)     // Catch: java.io.IOException -> L6b
            return r0
        L30:
            java.io.InputStream r4 = r3.a()     // Catch: java.io.IOException -> L6b
            if (r4 == 0) goto L41
            int r5 = r3.b()     // Catch: java.io.IOException -> L6b
            com.cloudplay.messagesdk.network.volley.toolbox.d r6 = r1.f24083b     // Catch: java.io.IOException -> L6b
            byte[] r2 = com.cloudplay.messagesdk.network.volley.toolbox.k.a(r4, r5, r6)     // Catch: java.io.IOException -> L6b
            goto L44
        L41:
            r4 = 0
            byte[] r2 = new byte[r4]     // Catch: java.io.IOException -> L6b
        L44:
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L6b
            long r4 = r4 - r9
            com.cloudplay.messagesdk.network.volley.toolbox.k.a(r4, r8, r2, r12)     // Catch: java.io.IOException -> L6b
            r4 = 200(0xc8, float:2.8E-43)
            if (r12 < r4) goto L65
            r4 = 299(0x12b, float:4.19E-43)
            if (r12 > r4) goto L65
            com.cloudplay.messagesdk.network.volley.f r4 = new com.cloudplay.messagesdk.network.volley.f     // Catch: java.io.IOException -> L6b
            r14 = 0
            long r5 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L6b
            long r15 = r5 - r9
            r11 = r4
            r13 = r2
            r17 = r0
            r11.<init>(r12, r13, r14, r15, r17)     // Catch: java.io.IOException -> L6b
            return r4
        L65:
            java.io.IOException r0 = new java.io.IOException     // Catch: java.io.IOException -> L6b
            r0.<init>()     // Catch: java.io.IOException -> L6b
            throw r0     // Catch: java.io.IOException -> L6b
        L6b:
            r0 = move-exception
            r7 = r2
            r6 = r3
            r3 = r0
            goto L74
        L70:
            r0 = move-exception
            r3 = r0
            r6 = r2
            r7 = r6
        L74:
            r2 = r19
            r4 = r9
            com.cloudplay.messagesdk.network.volley.toolbox.k$b r0 = com.cloudplay.messagesdk.network.volley.toolbox.k.a(r2, r3, r4, r6, r7)
            com.cloudplay.messagesdk.network.volley.toolbox.k.a(r8, r0)
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cloudplay.messagesdk.network.volley.toolbox.c.performRequest(com.cloudplay.messagesdk.network.volley.Request):com.cloudplay.messagesdk.network.volley.f");
    }

    @Deprecated
    public c(HttpStack httpStack, d dVar) {
        this.f24082a = new a(httpStack);
        this.f24083b = dVar;
    }

    public c(b bVar) {
        this(bVar, new d(4096));
    }

    public c(b bVar, d dVar) {
        this.f24082a = bVar;
        this.f24083b = dVar;
    }
}
