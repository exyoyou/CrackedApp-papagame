package com.sigmob.sdk.downloader.core.download;

import android.net.ConnectivityManager;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.core.exception.i;
import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f80612b = "DownloadStrategy";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f80613c = 1048576;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f80614d = 5242880;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f80615e = 52428800;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f80616f = 104857600;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f80617g = Pattern.compile(".*\\\\|/([^\\\\|/|?]*)\\??");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Boolean f80618a = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ConnectivityManager f80619h = null;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private volatile String f80620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f80621b = false;

        public a() {
        }

        public String a() {
            return this.f80620a;
        }

        public boolean b() {
            return this.f80621b;
        }

        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            if (this.f80620a == null) {
                return ((a) obj).f80620a == null;
            }
            return this.f80620a.equals(((a) obj).f80620a);
        }

        public int hashCode() {
            if (this.f80620a == null) {
                return 0;
            }
            return this.f80620a.hashCode();
        }

        public a(String filename) {
            this.f80620a = filename;
        }

        void a(String filename) {
            this.f80620a = filename;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a f80622a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.sigmob.sdk.downloader.core.breakpoint.c f80623b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f80624c;

        protected b(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected, int blockIndex, com.sigmob.sdk.downloader.core.breakpoint.c info) {
            this.f80622a = connected;
            this.f80623b = info;
            this.f80624c = blockIndex;
        }

        public void a() throws IOException {
            com.sigmob.sdk.downloader.core.breakpoint.a aVarB = this.f80623b.b(this.f80624c);
            int iD = this.f80622a.d();
            com.sigmob.sdk.downloader.core.cause.b bVarA = com.sigmob.sdk.downloader.g.j().g().a(iD, aVarB.a() != 0, this.f80623b, this.f80622a.c(com.sigmob.sdk.downloader.core.c.f80443g));
            if (bVarA != null) {
                throw new com.sigmob.sdk.downloader.core.exception.f(bVarA);
            }
            if (com.sigmob.sdk.downloader.g.j().g().a(iD, aVarB.a() != 0)) {
                throw new i(iD, aVarB.a());
            }
        }
    }

    public int a(com.sigmob.sdk.downloader.f task, long totalLength) {
        if (task.u() != null) {
            return task.u().intValue();
        }
        if (totalLength < 1048576) {
            return 1;
        }
        if (totalLength < f80614d) {
            return 2;
        }
        if (totalLength < f80615e) {
            return 3;
        }
        return totalLength < 104857600 ? 4 : 5;
    }

    protected String b(String responseFileName, com.sigmob.sdk.downloader.f task) throws IOException {
        if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) responseFileName)) {
            return responseFileName;
        }
        String strI = task.i();
        Matcher matcher = f80617g.matcher(strI);
        String strA = null;
        while (matcher.find()) {
            strA = matcher.group(1);
        }
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) strA)) {
            strA = com.sigmob.sdk.downloader.core.c.a(strI);
        }
        if (strA != null) {
            return strA;
        }
        throw new IOException("Can't find valid filename.");
    }

    public long a() {
        return 10240L;
    }

    public void b() throws UnknownHostException {
        if (this.f80618a == null) {
            this.f80618a = Boolean.valueOf(com.sigmob.sdk.downloader.core.c.c(com.kuaishou.weapon.p0.g.f74778b));
        }
        if (this.f80618a.booleanValue()) {
            if (this.f80619h == null) {
                this.f80619h = (ConnectivityManager) com.sigmob.sdk.downloader.g.j().h().getSystemService("connectivity");
            }
            if (!com.sigmob.sdk.downloader.core.c.b(this.f80619h)) {
                throw new UnknownHostException("network is not available!");
            }
        }
    }

    public com.sigmob.sdk.downloader.core.cause.b a(int responseCode, boolean isAlreadyProceed, com.sigmob.sdk.downloader.core.breakpoint.c info, String responseEtag) {
        String strK = info.k();
        if (responseCode == 412) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_PRECONDITION_FAILED;
        }
        if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) strK) && !com.sigmob.sdk.downloader.core.c.a((CharSequence) responseEtag) && !responseEtag.equals(strK)) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_ETAG_CHANGED;
        }
        if (responseCode == 201 && isAlreadyProceed) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_CREATED_RANGE_NOT_FROM_0;
        }
        if (responseCode == 205 && isAlreadyProceed) {
            return com.sigmob.sdk.downloader.core.cause.b.RESPONSE_RESET_RANGE_NOT_FROM_0;
        }
        return null;
    }

    public void b(com.sigmob.sdk.downloader.f task) throws IOException {
        if (this.f80618a == null) {
            this.f80618a = Boolean.valueOf(com.sigmob.sdk.downloader.core.c.c(com.kuaishou.weapon.p0.g.f74778b));
        }
        if (task.f()) {
            if (!this.f80618a.booleanValue()) {
                throw new IOException("required for access network state but don't have the permission of Manifest.permission.ACCESS_NETWORK_STATE, please declare this permission first on your AndroidManifest, so we can handle the case of downloading required wifi state.");
            }
            if (this.f80619h == null) {
                this.f80619h = (ConnectivityManager) com.sigmob.sdk.downloader.g.j().h().getSystemService("connectivity");
            }
            if (com.sigmob.sdk.downloader.core.c.a(this.f80619h)) {
                throw new com.sigmob.sdk.downloader.core.exception.d();
            }
        }
    }

    public b a(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected, int blockIndex, com.sigmob.sdk.downloader.core.breakpoint.c info) {
        return new b(connected, blockIndex, info);
    }

    public void a(com.sigmob.sdk.downloader.f task, j store) {
        long length;
        com.sigmob.sdk.downloader.core.breakpoint.c cVarE = store.e(task.c());
        if (cVarE == null) {
            cVarE = new com.sigmob.sdk.downloader.core.breakpoint.c(task.c(), task.i(), task.l(), task.d());
            if (com.sigmob.sdk.downloader.core.c.a(task.h())) {
                length = com.sigmob.sdk.downloader.core.c.c(task.h());
            } else {
                File fileM = task.m();
                if (fileM == null) {
                    com.sigmob.sdk.downloader.core.c.a(f80612b, "file is not ready on valid info for task on complete state " + task);
                    length = 0;
                } else {
                    length = fileM.length();
                }
            }
            long j10 = length;
            cVarE.a(new com.sigmob.sdk.downloader.core.breakpoint.a(0L, j10, j10));
        }
        com.sigmob.sdk.downloader.f.c.a(task, cVarE);
    }

    public void a(String filenameOnStore, com.sigmob.sdk.downloader.f task) {
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) task.d())) {
            task.g().a(filenameOnStore);
        }
    }

    public void a(String responseFileName, com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info) throws IOException {
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) task.d())) {
            String strB = b(responseFileName, task);
            if (com.sigmob.sdk.downloader.core.c.a((CharSequence) task.d())) {
                synchronized (task) {
                    if (com.sigmob.sdk.downloader.core.c.a((CharSequence) task.d())) {
                        task.g().a(strB);
                        info.n().a(strB);
                    }
                }
            }
        }
    }

    public boolean a(int responseCode, boolean isAlreadyProceed) {
        if (responseCode == 206 || responseCode == 200) {
            return responseCode == 200 && isAlreadyProceed;
        }
        return true;
    }

    public boolean a(com.sigmob.sdk.downloader.f task) {
        String strA = com.sigmob.sdk.downloader.g.j().c().a(task.i());
        if (strA == null) {
            return false;
        }
        task.g().a(strA);
        return true;
    }

    public boolean a(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info, long instanceLength) {
        com.sigmob.sdk.downloader.core.breakpoint.g gVarC;
        com.sigmob.sdk.downloader.core.breakpoint.c cVarA;
        if (!task.a() || (cVarA = (gVarC = com.sigmob.sdk.downloader.g.j().c()).a(task, info)) == null) {
            return false;
        }
        gVarC.b(cVarA.a());
        if (cVarA.i() <= com.sigmob.sdk.downloader.g.j().g().a()) {
            return false;
        }
        if ((cVarA.k() != null && !cVarA.k().equals(info.k())) || cVarA.j() != instanceLength || cVarA.o() == null || !cVarA.o().exists()) {
            return false;
        }
        info.a(cVarA);
        com.sigmob.sdk.downloader.core.c.b(f80612b, "Reuse another same info: " + info);
        return true;
    }

    public boolean a(final boolean isAcceptRange) {
        if (com.sigmob.sdk.downloader.g.j().e().a()) {
            return isAcceptRange;
        }
        return false;
    }
}
