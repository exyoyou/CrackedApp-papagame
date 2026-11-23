package com.kwad.framework.filedownloader;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class r {
    private static final Object aAj = new Object();
    private static final Object aAl = new Object();
    private w aAk;
    private volatile v aAm;

    static final class a {
        private static final r aAn = new r();
    }

    public static r BG() {
        return a.aAn;
    }

    public static boolean BI() {
        return n.By().isConnected();
    }

    public static void a(Context context, com.kwad.framework.filedownloader.services.c.b bVar) {
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(r.class, "init Downloader with params: %s %s", context, bVar);
        }
        if (context == null) {
            throw new IllegalArgumentException("the provided context must not be null!");
        }
        com.kwad.framework.filedownloader.f.c.aY(context.getApplicationContext());
        com.kwad.framework.filedownloader.download.b.Ca().a(bVar);
    }

    public static void aX(Context context) {
        com.kwad.framework.filedownloader.f.c.aY(context.getApplicationContext());
    }

    public static com.kwad.framework.filedownloader.a bV(String str) {
        return new c(str);
    }

    private int cy(int i10) {
        List<com.kwad.framework.filedownloader.a.InterfaceC0903a> listCt = h.Bn().ct(i10);
        if (listCt.isEmpty()) {
            com.kwad.framework.filedownloader.f.d.d(this, "request pause but not exist %d", Integer.valueOf(i10));
            return 0;
        }
        Iterator<com.kwad.framework.filedownloader.a.InterfaceC0903a> it2 = listCt.iterator();
        while (it2.hasNext()) {
            it2.next().AP().pause();
        }
        return listCt.size();
    }

    public final void BH() {
        if (BI()) {
            return;
        }
        n.By().aW(com.kwad.framework.filedownloader.f.c.Dx());
    }

    final w BJ() {
        if (this.aAk == null) {
            synchronized (aAj) {
                if (this.aAk == null) {
                    this.aAk = new ab();
                }
            }
        }
        return this.aAk;
    }

    final v BK() {
        if (this.aAm == null) {
            synchronized (aAl) {
                if (this.aAm == null) {
                    this.aAm = new z();
                    a((e) this.aAm);
                }
            }
        }
        return this.aAm;
    }

    public final boolean v(int i10, String str) {
        cy(i10);
        if (!n.By().cx(i10)) {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        File file = new File(com.kwad.framework.filedownloader.f.f.cm(str));
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(str);
        if (file2.exists()) {
            file2.delete();
        }
        return true;
    }

    private static void a(e eVar) {
        f.Bl().a("event.service.connect.changed", eVar);
    }
}
