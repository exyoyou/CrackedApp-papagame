package com.kwad.framework.filedownloader.f;

import android.annotation.SuppressLint;
import android.content.Context;
import com.kwad.framework.filedownloader.exception.PathConflictException;
import com.kwad.framework.filedownloader.y;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    @SuppressLint({"StaticFieldLeak"})
    private static Context aDq;

    public interface a {
        int ab(long j10);
    }

    public interface b {
        com.kwad.framework.filedownloader.a.b bX(String str);
    }

    /* JADX INFO: renamed from: com.kwad.framework.filedownloader.f.c$c, reason: collision with other inner class name */
    public interface InterfaceC0909c {
        com.kwad.framework.filedownloader.b.a Dy();
    }

    public interface d {
        int f(String str, String str2, boolean z10);

        int g(String str, String str2, boolean z10);
    }

    public interface e {
        com.kwad.framework.filedownloader.e.a c(File file);
    }

    public static Context Dx() {
        return aDq;
    }

    public static boolean a(int i10, String str, boolean z10, boolean z11) {
        if (!z10 && str != null) {
            File file = new File(str);
            if (file.exists()) {
                com.kwad.framework.filedownloader.message.e.CR().s(com.kwad.framework.filedownloader.message.f.a(i10, file, z11));
                return true;
            }
        }
        return false;
    }

    public static void aY(Context context) {
        aDq = context;
    }

    public static boolean a(int i10, com.kwad.framework.filedownloader.d.c cVar, y yVar, boolean z10) {
        if (!yVar.a(cVar)) {
            return false;
        }
        com.kwad.framework.filedownloader.message.e.CR().s(com.kwad.framework.filedownloader.message.f.a(i10, cVar.CX(), cVar.getTotal(), z10));
        return true;
    }

    public static boolean a(int i10, long j10, String str, String str2, y yVar) {
        int iP;
        if (str2 == null || str == null || (iP = yVar.p(str, i10)) == 0) {
            return false;
        }
        com.kwad.framework.filedownloader.message.e.CR().s(com.kwad.framework.filedownloader.message.f.a(i10, j10, new PathConflictException(iP, str, str2)));
        return true;
    }
}
