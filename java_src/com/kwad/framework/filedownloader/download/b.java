package com.kwad.framework.filedownloader.download;

import java.io.File;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private com.kwad.framework.filedownloader.services.c aAZ;
    private com.kwad.framework.filedownloader.f.c.a aBa;
    private com.kwad.framework.filedownloader.f.c.b aBb;
    private com.kwad.framework.filedownloader.f.c.e aBc;
    private volatile com.kwad.framework.filedownloader.b.a aBd;
    private com.kwad.framework.filedownloader.f.c.d aBe;

    static final class a {
        private static final b aBf = new b();
    }

    public static b Ca() {
        return a.aBf;
    }

    private com.kwad.framework.filedownloader.f.c.a Cf() {
        com.kwad.framework.filedownloader.f.c.a aVar = this.aBa;
        if (aVar != null) {
            return aVar;
        }
        synchronized (this) {
            if (this.aBa == null) {
                this.aBa = Ci().Dg();
            }
        }
        return this.aBa;
    }

    private com.kwad.framework.filedownloader.f.c.b Cg() {
        com.kwad.framework.filedownloader.f.c.b bVar = this.aBb;
        if (bVar != null) {
            return bVar;
        }
        synchronized (this) {
            if (this.aBb == null) {
                this.aBb = Ci().Df();
            }
        }
        return this.aBb;
    }

    private com.kwad.framework.filedownloader.f.c.e Ch() {
        com.kwad.framework.filedownloader.f.c.e eVar = this.aBc;
        if (eVar != null) {
            return eVar;
        }
        synchronized (this) {
            if (this.aBc == null) {
                this.aBc = Ci().De();
            }
        }
        return this.aBc;
    }

    private com.kwad.framework.filedownloader.services.c Ci() {
        com.kwad.framework.filedownloader.services.c cVar = this.aAZ;
        if (cVar != null) {
            return cVar;
        }
        synchronized (this) {
            if (this.aAZ == null) {
                this.aAZ = new com.kwad.framework.filedownloader.services.c();
            }
        }
        return this.aAZ;
    }

    public final com.kwad.framework.filedownloader.f.c.d Cb() {
        com.kwad.framework.filedownloader.f.c.d dVar = this.aBe;
        if (dVar != null) {
            return dVar;
        }
        synchronized (this) {
            if (this.aBe == null) {
                this.aBe = Ci().Dh();
            }
        }
        return this.aBe;
    }

    public final synchronized com.kwad.framework.filedownloader.b.a Cc() {
        if (this.aBd != null) {
            return this.aBd;
        }
        this.aBd = Ci().Dd();
        a(this.aBd.BR());
        return this.aBd;
    }

    public final int Cd() {
        return Ci().Cd();
    }

    public final boolean Ce() {
        Ch();
        return true;
    }

    public final void a(com.kwad.framework.filedownloader.services.c.b bVar) {
        synchronized (this) {
            this.aAZ = new com.kwad.framework.filedownloader.services.c(bVar);
            this.aBb = null;
            this.aBc = null;
            this.aBd = null;
            this.aBe = null;
        }
    }

    public final void b(com.kwad.framework.filedownloader.services.c.b bVar) {
        synchronized (this) {
            this.aAZ = new com.kwad.framework.filedownloader.services.c(bVar);
        }
    }

    public final com.kwad.framework.filedownloader.a.b ca(String str) {
        try {
            return Cg().bX(str);
        } catch (Throwable unused) {
            com.kwad.framework.filedownloader.a.c.b bVar = new com.kwad.framework.filedownloader.a.c.b();
            this.aBb = bVar;
            return bVar.bX(str);
        }
    }

    public final com.kwad.framework.filedownloader.e.a b(File file) {
        return Ch().c(file);
    }

    public final int a(int i10, String str, String str2, long j10) {
        return Cf().ab(j10);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0053 A[Catch: all -> 0x0143, TryCatch #1 {all -> 0x0143, blocks: (B:9:0x0034, B:11:0x003b, B:13:0x0042, B:15:0x0049, B:18:0x0056, B:21:0x0065, B:23:0x0070, B:17:0x0053), top: B:84:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x01a1  */
    private static void a(com.kwad.framework.filedownloader.b.a.InterfaceC0904a interfaceC0904a) throws Throwable {
        boolean z10;
        String str = "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d";
        Iterator<com.kwad.framework.filedownloader.d.c> it2 = interfaceC0904a.iterator();
        com.kwad.framework.filedownloader.f.c.d dVarCb = Ca().Cb();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        while (it2.hasNext()) {
            try {
                try {
                    com.kwad.framework.filedownloader.d.c next = it2.next();
                    str = str;
                    if (next.AH() != 3) {
                        try {
                            if (next.AH() == 2 || next.AH() == -1 || (next.AH() == 1 && next.CX() > 0)) {
                                next.d((byte) -2);
                            }
                        } catch (Throwable th) {
                            th = th;
                            jCurrentTimeMillis = jCurrentTimeMillis;
                            j10 = j10;
                            str = str;
                            com.kwad.framework.filedownloader.f.f.ba(com.kwad.framework.filedownloader.f.c.Dx());
                            interfaceC0904a.BS();
                            if (com.kwad.framework.filedownloader.f.d.aDr) {
                                com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, str, Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                            }
                            throw th;
                        }
                    } else {
                        next.d((byte) -2);
                    }
                    String targetFilePath = next.getTargetFilePath();
                    if (targetFilePath == null) {
                        jCurrentTimeMillis = jCurrentTimeMillis;
                        j10 = j10;
                        z10 = true;
                    } else {
                        File file = new File(targetFilePath);
                        if (next.AH() == -2) {
                            jCurrentTimeMillis = jCurrentTimeMillis;
                            try {
                                if (com.kwad.framework.filedownloader.f.f.a(next.getId(), next, next.getPath(), null)) {
                                    File file2 = new File(next.Cp());
                                    if (!file2.exists() && file.exists()) {
                                        boolean zRenameTo = file.renameTo(file2);
                                        if (com.kwad.framework.filedownloader.f.d.aDr) {
                                            com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, "resume from the old no-temp-file architecture [%B], [%s]->[%s]", Boolean.valueOf(zRenameTo), file.getPath(), file2.getPath());
                                        }
                                    }
                                }
                                if (next.AH() == 1 || next.CX() > 0) {
                                    z10 = com.kwad.framework.filedownloader.f.f.b(next.getId(), next) || file.exists();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                j10 = j10;
                                str = str;
                                com.kwad.framework.filedownloader.f.f.ba(com.kwad.framework.filedownloader.f.c.Dx());
                                interfaceC0904a.BS();
                                if (com.kwad.framework.filedownloader.f.d.aDr) {
                                    com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, str, Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                                }
                                throw th;
                            }
                        } else {
                            jCurrentTimeMillis = jCurrentTimeMillis;
                        }
                        if (next.AH() == 1) {
                        }
                        if (com.kwad.framework.filedownloader.f.f.b(next.getId(), next)) {
                        }
                    }
                    if (z10) {
                        try {
                            it2.remove();
                            j11++;
                            j10 = j10;
                        } catch (Throwable th3) {
                            th = th3;
                            str = str;
                            com.kwad.framework.filedownloader.f.f.ba(com.kwad.framework.filedownloader.f.c.Dx());
                            interfaceC0904a.BS();
                            if (com.kwad.framework.filedownloader.f.d.aDr) {
                                com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, str, Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                            }
                            throw th;
                        }
                    } else {
                        int id2 = next.getId();
                        int iF = dVarCb.f(next.getUrl(), next.getPath(), next.AB());
                        if (iF != id2) {
                            if (com.kwad.framework.filedownloader.f.d.aDr) {
                                com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, "the id is changed on restoring from db: old[%d] -> new[%d]", Integer.valueOf(id2), Integer.valueOf(iF));
                            }
                            next.setId(iF);
                            interfaceC0904a.a(id2, next);
                            j12++;
                        }
                        interfaceC0904a.c(next);
                        j10++;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    jCurrentTimeMillis = jCurrentTimeMillis;
                    j10 = j10;
                    com.kwad.framework.filedownloader.f.f.ba(com.kwad.framework.filedownloader.f.c.Dx());
                    interfaceC0904a.BS();
                    if (com.kwad.framework.filedownloader.f.d.aDr) {
                        com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, str, Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                    }
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
        String str2 = str;
        long j13 = jCurrentTimeMillis;
        long j14 = j10;
        com.kwad.framework.filedownloader.f.f.ba(com.kwad.framework.filedownloader.f.c.Dx());
        interfaceC0904a.BS();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(com.kwad.framework.filedownloader.b.a.class, str2, Long.valueOf(j14), Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(System.currentTimeMillis() - j13));
        }
    }
}
