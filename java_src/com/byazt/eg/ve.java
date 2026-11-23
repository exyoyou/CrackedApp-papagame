package com.byazt.eg;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 54})
public final class ve implements Closeable, Flushable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.umr.a f13415c;
    public final com.byazt.umr.uj tt;

    @com.byazt.zqa.c(c = {0, 1, 16, 24})
    private static class c extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.umr.uj.ve f13416c;
        public final com.byazt.mk.n tt;
        public final String uj;
        public final String ve;

        @Override // com.byazt.eg.d
        public rl c() {
            String str = this.ve;
            if (str != null) {
                return rl.c(str);
            }
            return null;
        }

        @Override // com.byazt.eg.d
        public long tt() {
            try {
                String str = this.uj;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // com.byazt.eg.d
        public com.byazt.mk.n ve() {
            return this.tt;
        }
    }

    private void c(com.byazt.umr.uj.c cVar) {
        if (cVar != null) {
            try {
                cVar.ve();
            } catch (IOException unused) {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.tt.close();
    }

    public void delete() throws IOException {
        this.tt.delete();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.tt.flush();
    }

    public void update(h hVar, h hVar2) {
        com.byazt.umr.uj.c cVarC;
        tt ttVar = new tt(hVar2);
        try {
            cVarC = ((c) hVar.x()).f13416c.c();
            if (cVarC != null) {
                try {
                    ttVar.c(cVarC);
                    cVarC.tt();
                } catch (IOException unused) {
                    c(cVarC);
                }
            }
        } catch (IOException unused2) {
            cVarC = null;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 16, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    private static final class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f13417c = com.byazt.xb.n.tt().ve() + "-Sent-Millis";
        public static final String tt = com.byazt.xb.n.tt().ve() + "-Received-Millis";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final gr f13418a;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public final nu f13419da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final rh f13420i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f13421n;
        public final long sl;
        public final int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final long f13422t;
        public final rh uj;
        public final String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final String f13423x;

        public tt(h hVar) {
            this.ve = hVar.c().c().toString();
            this.uj = com.byazt.yx.n.tt(hVar);
            this.f13421n = hVar.c().tt();
            this.f13418a = hVar.tt();
            this.sp = hVar.ve();
            this.f13423x = hVar.n();
            this.f13420i = hVar.sp();
            this.f13419da = hVar.a();
            this.sl = hVar.u();
            this.f13422t = hVar.yp();
        }

        public void c(com.byazt.umr.uj.c cVar) throws IOException {
            com.byazt.mk.uj ujVarC = com.byazt.mk.t.c(cVar.c(0));
            ujVarC.tt(this.ve).i(10);
            ujVarC.tt(this.f13421n).i(10);
            ujVarC.t(this.uj.c()).i(10);
            int iC = this.uj.c();
            for (int i10 = 0; i10 < iC; i10++) {
                ujVarC.tt(this.uj.c(i10)).tt(": ").tt(this.uj.tt(i10)).i(10);
            }
            ujVarC.tt(new com.byazt.yx.sl(this.f13418a, this.sp, this.f13423x).toString()).i(10);
            ujVarC.t(this.f13420i.c() + 2).i(10);
            int iC2 = this.f13420i.c();
            for (int i11 = 0; i11 < iC2; i11++) {
                ujVarC.tt(this.f13420i.c(i11)).tt(": ").tt(this.f13420i.tt(i11)).i(10);
            }
            ujVarC.tt(f13417c).tt(": ").t(this.sl).i(10);
            ujVarC.tt(tt).tt(": ").t(this.f13422t).i(10);
            if (c()) {
                ujVarC.i(10);
                ujVarC.tt(this.f13419da.tt().c()).i(10);
                c(ujVarC, this.f13419da.ve());
                c(ujVarC, this.f13419da.uj());
                ujVarC.tt(this.f13419da.c().c()).i(10);
            }
            ujVarC.close();
        }

        private boolean c() {
            return this.ve.startsWith("https://");
        }

        private void c(com.byazt.mk.uj ujVar, List<Certificate> list) throws IOException {
            try {
                ujVar.t(list.size()).i(10);
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ujVar.tt(com.byazt.mk.a.c(list.get(i10).getEncoded()).tt()).i(10);
                }
            } catch (CertificateEncodingException e10) {
                throw new IOException(e10.getMessage());
            }
        }
    }
}
