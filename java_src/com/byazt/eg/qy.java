package com.byazt.eg;

import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 110})
public final class qy extends p {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final rl f13373da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.mk.a f13374i;
    public final rl sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List<tt> f13375t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f13376u = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final rl f13370c = rl.c("multipart/mixed");
    public static final rl tt = rl.c("multipart/alternative");
    public static final rl ve = rl.c("multipart/digest");
    public static final rl uj = rl.c("multipart/parallel");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final rl f13371n = rl.c(HttpHeaders.Values.MULTIPART_FORM_DATA);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f13369a = {HttpConstants.COLON, 32};
    public static final byte[] sp = {13, 10};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final byte[] f13372x = {45, 45};

    @com.byazt.zqa.c(c = {0, 1, 16, 1539})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.mk.a f13377c;
        public rl tt;
        public final List<tt> ve;

        public c() {
            this(UUID.randomUUID().toString());
        }

        public c c(rl rlVar) {
            if (rlVar == null) {
                throw new NullPointerException("type == null");
            }
            if (!rlVar.c().equals("multipart")) {
                throw new IllegalArgumentException("multipart != ".concat(String.valueOf(rlVar)));
            }
            this.tt = rlVar;
            return this;
        }

        public c(String str) {
            this.tt = qy.f13370c;
            this.ve = new ArrayList();
            this.f13377c = com.byazt.mk.a.c(str);
        }

        public c c(String str, String str2, p pVar) {
            return c(tt.c(str, str2, pVar));
        }

        public c c(tt ttVar) {
            if (ttVar != null) {
                this.ve.add(ttVar);
                return this;
            }
            throw new NullPointerException("part == null");
        }

        public qy c() {
            if (!this.ve.isEmpty()) {
                return new qy(this.f13377c, this.tt, this.ve);
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
    }

    public qy(com.byazt.mk.a aVar, rl rlVar, List<tt> list) {
        this.f13374i = aVar;
        this.f13373da = rlVar;
        this.sl = rl.c(rlVar + "; boundary=" + aVar.c());
        this.f13375t = com.byazt.kh.ve.c(list);
    }

    @Override // com.byazt.eg.p
    public rl c() {
        return this.sl;
    }

    @Override // com.byazt.eg.p
    public long tt() throws IOException {
        long j10 = this.f13376u;
        if (j10 != -1) {
            return j10;
        }
        long jC = c((com.byazt.mk.uj) null, true);
        this.f13376u = jC;
        return jC;
    }

    @Override // com.byazt.eg.p
    public void c(com.byazt.mk.uj ujVar) throws IOException {
        c(ujVar, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long c(com.byazt.mk.uj ujVar, boolean z10) throws IOException {
        com.byazt.mk.ve veVar;
        if (z10) {
            ujVar = new com.byazt.mk.ve();
            veVar = ujVar;
        } else {
            veVar = 0;
        }
        int size = this.f13375t.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            tt ttVar = this.f13375t.get(i10);
            rh rhVar = ttVar.f13378c;
            p pVar = ttVar.tt;
            ujVar.ve(f13372x);
            ujVar.tt(this.f13374i);
            ujVar.ve(sp);
            if (rhVar != null) {
                int iC = rhVar.c();
                for (int i11 = 0; i11 < iC; i11++) {
                    ujVar.tt(rhVar.c(i11)).ve(f13369a).tt(rhVar.tt(i11)).ve(sp);
                }
            }
            rl rlVarC = pVar.c();
            if (rlVarC != null) {
                ujVar.tt("Content-Type: ").tt(rlVarC.toString()).ve(sp);
            }
            long jTt = pVar.tt();
            if (jTt != -1) {
                ujVar.tt("Content-Length: ").t(jTt).ve(sp);
            } else if (z10) {
                veVar.rh();
                return -1L;
            }
            byte[] bArr = sp;
            ujVar.ve(bArr);
            if (z10) {
                j10 += jTt;
            } else {
                pVar.c(ujVar);
            }
            ujVar.ve(bArr);
        }
        byte[] bArr2 = f13372x;
        ujVar.ve(bArr2);
        ujVar.tt(this.f13374i);
        ujVar.ve(bArr2);
        ujVar.ve(sp);
        if (!z10) {
            return j10;
        }
        long jTt2 = j10 + veVar.tt();
        veVar.rh();
        return jTt2;
    }

    @com.byazt.zqa.c(c = {0, 1, 16, 1239})
    public static final class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final rh f13378c;
        public final p tt;

        private tt(rh rhVar, p pVar) {
            this.f13378c = rhVar;
            this.tt = pVar;
        }

        public static tt c(rh rhVar, p pVar) {
            if (pVar == null) {
                throw new NullPointerException("body == null");
            }
            if (rhVar != null && rhVar.c("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (rhVar == null || rhVar.c("Content-Length") == null) {
                return new tt(rhVar, pVar);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static tt c(String str, String str2, p pVar) {
            if (str != null) {
                StringBuilder sb2 = new StringBuilder("form-data; name=");
                qy.c(sb2, str);
                if (str2 != null) {
                    sb2.append("; filename=");
                    qy.c(sb2, str2);
                }
                return c(rh.c(com.sigmob.sdk.downloader.core.c.f80446j, sb2.toString()), pVar);
            }
            throw new NullPointerException("name == null");
        }
    }

    public static StringBuilder c(StringBuilder sb2, String str) {
        sb2.append('\"');
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\n') {
                sb2.append("%0A");
            } else if (cCharAt == '\r') {
                sb2.append("%0D");
            } else if (cCharAt != '\"') {
                sb2.append(cCharAt);
            } else {
                sb2.append("%22");
            }
        }
        sb2.append('\"');
        return sb2;
    }
}
