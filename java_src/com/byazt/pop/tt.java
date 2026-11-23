package com.byazt.pop;

import android.os.Looper;
import com.byazt.bwm.sp;
import com.byazt.omf.rh;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 993, 13})
public class tt extends sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f18782a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18783c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f18784n;
    public com.byazt.pop.c tt;
    public long uj;
    public long ve;

    @com.byazt.zqa.c(c = {0, 1, 993, 194})
    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.byazt.pop.c f18785a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f18786c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f18787n;
        public long tt;
        public String uj;
        public long ve;

        public c c(String str) {
            this.f18786c = str;
            return this;
        }

        public c tt(long j10) {
            this.ve = j10;
            return this;
        }

        public c ve(String str) {
            this.f18787n = str;
            return this;
        }

        public c c(com.byazt.pop.c cVar) {
            this.f18785a = cVar;
            return this;
        }

        public c tt(String str) {
            this.uj = str;
            return this;
        }

        public c c(long j10) {
            this.tt = j10;
            return this;
        }

        public void c() {
            tt ttVar = new tt("tt_csj_download_thread");
            ttVar.f18782a = this.f18787n;
            ttVar.f18784n = this.uj;
            ttVar.uj = this.ve;
            ttVar.ve = this.tt;
            ttVar.f18783c = this.f18786c;
            ttVar.tt = this.f18785a;
            tt.tt(ttVar);
        }
    }

    public tt(String str) {
        super(str);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.tt == null) {
        }
        String str = this.f18783c;
        str.hashCode();
        switch (str) {
            case "onIdle":
                this.tt.c();
                break;
            case "onInstalled":
                this.tt.c(this.f18784n, this.f18782a);
                break;
            case "onDownloadActive":
                this.tt.c(this.ve, this.uj, this.f18784n, this.f18782a);
                break;
            case "onDownloadFailed":
                this.tt.ve(this.ve, this.uj, this.f18784n, this.f18782a);
                break;
            case "onDownloadPaused":
                this.tt.tt(this.ve, this.uj, this.f18784n, this.f18782a);
                break;
            case "onDownloadFinished":
                this.tt.c(this.ve, this.f18784n, this.f18782a);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            rh.a().post(runnable);
        } else {
            runnable.run();
        }
    }
}
