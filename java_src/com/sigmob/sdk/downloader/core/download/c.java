package com.sigmob.sdk.downloader.core.download;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80563a = "ConnectTrial";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f80564i = Pattern.compile("attachment;\\s*filename\\s*=\\s*\"([^\"]*)\"");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f80565j = Pattern.compile("attachment;\\s*filename\\s*=\\s*(.*)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f80566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f80567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f80568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f80569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f80570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f80571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f80572h;

    public c(com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
        this.f80566b = task;
        this.f80567c = info;
    }

    private static String a(String contentDisposition) throws IOException {
        String strGroup;
        if (contentDisposition == null) {
            return null;
        }
        try {
            Matcher matcher = f80564i.matcher(contentDisposition);
            if (matcher.find()) {
                strGroup = matcher.group(1);
            } else {
                Matcher matcher2 = f80565j.matcher(contentDisposition);
                strGroup = matcher2.find() ? matcher2.group(1) : null;
            }
            if (strGroup != null && strGroup.contains("../")) {
                throw new com.sigmob.sdk.downloader.core.exception.a("The filename [" + strGroup + "] from the response is not allowable, because it contains '../', which can raise the directory traversal vulnerability");
            }
            return strGroup;
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    private static long c(String contentRange) {
        if (contentRange == null) {
            return -1L;
        }
        String[] strArrSplit = contentRange.split(net.lingala.zip4j.util.e.F0);
        if (strArrSplit.length >= 2) {
            try {
                return Long.parseLong(strArrSplit[1]);
            } catch (NumberFormatException unused) {
                com.sigmob.sdk.downloader.core.c.a(f80563a, "parse instance length failed with " + contentRange);
            }
        }
        return -1L;
    }

    private static long d(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected) {
        long jC = c(connected.c("Content-Range"));
        if (jC != -1) {
            return jC;
        }
        if (!b(connected.c("Transfer-Encoding"))) {
            com.sigmob.sdk.downloader.core.c.a(f80563a, "Transfer-Encoding isn't chunked but there is no valid instance length found either!");
        }
        return -1L;
    }

    public long b() {
        return this.f80569e;
    }

    public String e() {
        return this.f80570f;
    }

    public String f() {
        return this.f80571g;
    }

    public int g() {
        return this.f80572h;
    }

    public boolean h() {
        return (this.f80567c.k() == null || this.f80567c.k().equals(this.f80570f)) ? false : true;
    }

    void i() throws IOException {
        com.sigmob.sdk.downloader.core.connection.a aVarA = com.sigmob.sdk.downloader.g.j().d().a(this.f80566b.i());
        com.sigmob.sdk.downloader.c cVarA = com.sigmob.sdk.downloader.g.j().b().a();
        try {
            aVarA.a("HEAD");
            Map<String, List<String>> mapB = this.f80566b.b();
            if (mapB != null) {
                com.sigmob.sdk.downloader.core.c.a(mapB, aVarA);
            }
            cVarA.a(this.f80566b, aVarA.c());
            com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a interfaceC1025aA = aVarA.a();
            cVarA.a(this.f80566b, interfaceC1025aA.d(), interfaceC1025aA.f());
            this.f80569e = com.sigmob.sdk.downloader.core.c.b(interfaceC1025aA.c("Content-Length"));
        } finally {
            aVarA.b();
        }
    }

    private static String b(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected) throws IOException {
        return a(connected.c(com.sigmob.sdk.downloader.core.c.f80446j));
    }

    private static String c(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected) {
        return connected.c(com.sigmob.sdk.downloader.core.c.f80443g);
    }

    public void a() throws IOException {
        com.sigmob.sdk.downloader.g.j().g().b(this.f80566b);
        com.sigmob.sdk.downloader.g.j().g().b();
        com.sigmob.sdk.downloader.core.connection.a aVarA = com.sigmob.sdk.downloader.g.j().d().a(this.f80566b.i());
        try {
            if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) this.f80567c.k())) {
                aVarA.a("If-Match", this.f80567c.k());
            }
            aVarA.a("Range", "bytes=0-0");
            Map<String, List<String>> mapB = this.f80566b.b();
            if (mapB != null) {
                com.sigmob.sdk.downloader.core.c.a(mapB, aVarA);
            }
            com.sigmob.sdk.downloader.c cVarA = com.sigmob.sdk.downloader.g.j().b().a();
            cVarA.a(this.f80566b, aVarA.c());
            com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a interfaceC1025aA = aVarA.a();
            this.f80566b.a(interfaceC1025aA.g());
            com.sigmob.sdk.downloader.core.c.b(f80563a, "task[" + this.f80566b.c() + "] redirect location: " + this.f80566b.j());
            this.f80572h = interfaceC1025aA.d();
            this.f80568d = a(interfaceC1025aA);
            this.f80569e = d(interfaceC1025aA);
            this.f80570f = c(interfaceC1025aA);
            this.f80571g = b(interfaceC1025aA);
            Map<String, List<String>> mapF = interfaceC1025aA.f();
            if (mapF == null) {
                mapF = new HashMap<>();
            }
            cVarA.a(this.f80566b, this.f80572h, mapF);
            boolean zA = a(this.f80569e, interfaceC1025aA);
            aVarA.b();
            if (zA) {
                i();
            }
        } catch (Throwable th) {
            aVarA.b();
            throw th;
        }
    }

    public boolean d() {
        return this.f80569e == -1;
    }

    private static boolean b(String transferEncoding) {
        return transferEncoding != null && transferEncoding.equals("chunked");
    }

    boolean a(long oldInstanceLength, com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected) {
        String strC;
        if (oldInstanceLength != -1) {
            return false;
        }
        String strC2 = connected.c("Content-Range");
        return (strC2 == null || strC2.length() <= 0) && !b(connected.c("Transfer-Encoding")) && (strC = connected.c("Content-Length")) != null && strC.length() > 0;
    }

    public boolean c() {
        return this.f80568d;
    }

    private static boolean a(com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a connected) throws IOException {
        if (connected.d() == 206) {
            return true;
        }
        return "bytes".equals(connected.c("Accept-Ranges"));
    }
}
