package com.sigmob.sdk.downloader.core.breakpoint;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f80364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final File f80365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f80366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f80367d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f80368e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.download.g.a f80369f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<a> f80370g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f80371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f80372i;

    public c(int id2, String url, File parentFile, String filename) {
        this.f80364a = id2;
        this.f80366c = url;
        this.f80365b = parentFile;
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) filename)) {
            this.f80369f = new com.sigmob.sdk.downloader.core.download.g.a();
            this.f80371h = true;
        } else {
            this.f80369f = new com.sigmob.sdk.downloader.core.download.g.a(filename);
            this.f80371h = false;
            this.f80368e = new File(parentFile, filename);
        }
    }

    public int a() {
        return this.f80364a;
    }

    public a b(int blockIndex) {
        return this.f80370g.get(blockIndex);
    }

    public c c(int replaceId) {
        c cVar = new c(replaceId, this.f80366c, this.f80365b, this.f80369f.a(), this.f80371h);
        cVar.f80372i = this.f80372i;
        Iterator<a> it2 = this.f80370g.iterator();
        while (it2.hasNext()) {
            cVar.f80370g.add(it2.next().g());
        }
        return cVar;
    }

    boolean d() {
        return this.f80371h;
    }

    public void e() {
        this.f80370g.clear();
        this.f80367d = null;
    }

    public void f() {
        this.f80370g.clear();
    }

    public int g() {
        return this.f80370g.size();
    }

    public File h() {
        return this.f80365b;
    }

    public long i() {
        Object[] array = this.f80370g.toArray();
        long jA = 0;
        if (array != null) {
            for (Object obj : array) {
                if (obj instanceof a) {
                    jA += ((a) obj).a();
                }
            }
        }
        return jA;
    }

    public long j() {
        if (b()) {
            return i();
        }
        Object[] array = this.f80370g.toArray();
        long jD = 0;
        if (array != null) {
            for (Object obj : array) {
                if (obj instanceof a) {
                    jD += ((a) obj).d();
                }
            }
        }
        return jD;
    }

    public String k() {
        return this.f80367d;
    }

    public String l() {
        return this.f80366c;
    }

    public String m() {
        return this.f80369f.a();
    }

    public com.sigmob.sdk.downloader.core.download.g.a n() {
        return this.f80369f;
    }

    public File o() {
        String strA = this.f80369f.a();
        if (strA == null) {
            return null;
        }
        if (this.f80368e == null) {
            this.f80368e = new File(this.f80365b, strA);
        }
        return this.f80368e;
    }

    public c p() {
        c cVar = new c(this.f80364a, this.f80366c, this.f80365b, this.f80369f.a(), this.f80371h);
        cVar.f80372i = this.f80372i;
        Iterator<a> it2 = this.f80370g.iterator();
        while (it2.hasNext()) {
            cVar.f80370g.add(it2.next().g());
        }
        return cVar;
    }

    public String toString() {
        return "id[" + this.f80364a + "] url[" + this.f80366c + "] etag[" + this.f80367d + "] taskOnlyProvidedParentPath[" + this.f80371h + "] parent path[" + this.f80365b + "] filename[" + this.f80369f.a() + "] block(s):" + this.f80370g.toString();
    }

    c(int id2, String url, File parentFile, String filename, boolean taskOnlyProvidedParentPath) {
        this.f80364a = id2;
        this.f80366c = url;
        this.f80365b = parentFile;
        this.f80369f = com.sigmob.sdk.downloader.core.c.a((CharSequence) filename) ? new com.sigmob.sdk.downloader.core.download.g.a() : new com.sigmob.sdk.downloader.core.download.g.a(filename);
        this.f80371h = taskOnlyProvidedParentPath;
    }

    public c a(int replaceId, String newUrl) {
        c cVar = new c(replaceId, newUrl, this.f80365b, this.f80369f.a(), this.f80371h);
        cVar.f80372i = this.f80372i;
        Iterator<a> it2 = this.f80370g.iterator();
        while (it2.hasNext()) {
            cVar.f80370g.add(it2.next().g());
        }
        return cVar;
    }

    public boolean b() {
        return this.f80372i;
    }

    public boolean c() {
        return this.f80370g.size() == 1;
    }

    public void a(a blockInfo) {
        this.f80370g.add(blockInfo);
    }

    public void a(c info) {
        this.f80370g.clear();
        this.f80370g.addAll(info.f80370g);
    }

    public void a(String etag) {
        this.f80367d = etag;
    }

    public void a(boolean chunked) {
        this.f80372i = chunked;
    }

    public boolean a(int blockIndex) {
        return blockIndex == this.f80370g.size() - 1;
    }

    public boolean a(com.sigmob.sdk.downloader.f task) {
        if (!this.f80365b.equals(task.l()) || !this.f80366c.equals(task.i())) {
            return false;
        }
        String strD = task.d();
        if (strD != null && strD.equals(this.f80369f.a())) {
            return true;
        }
        if (this.f80371h && task.a()) {
            return strD == null || strD.equals(this.f80369f.a());
        }
        return false;
    }
}
