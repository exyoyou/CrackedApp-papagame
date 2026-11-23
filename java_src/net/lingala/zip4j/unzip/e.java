package net.lingala.zip4j.unzip;

import java.io.File;
import net.lingala.zip4j.exception.ZipException;
import pc.h;
import pc.k;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static void a(h hVar, File file) throws ZipException {
        b(hVar, file, null);
    }

    public static void b(h hVar, File file, k kVar) throws ZipException {
        if (hVar == null) {
            throw new ZipException("cannot set file properties: file header is null");
        }
        if (file == null) {
            throw new ZipException("cannot set file properties: output file is null");
        }
        if (!net.lingala.zip4j.util.h.b(file)) {
            throw new ZipException("cannot set file properties: file doesnot exist");
        }
        if (kVar == null || !kVar.c()) {
            d(hVar, file);
        }
        if (kVar == null) {
            c(hVar, file, true, true, true, true);
        } else if (kVar.a()) {
            c(hVar, file, false, false, false, false);
        } else {
            c(hVar, file, !kVar.e(), !kVar.d(), !kVar.b(), !kVar.f());
        }
    }

    private static void c(h hVar, File file, boolean z10, boolean z11, boolean z12, boolean z13) throws ZipException {
        if (hVar == null) {
            throw new ZipException("invalid file header. cannot set file attributes");
        }
        byte[] bArrK = hVar.k();
        if (bArrK == null) {
            return;
        }
        byte b10 = bArrK[0];
        if (b10 == 1) {
            if (z10) {
                net.lingala.zip4j.util.h.G(file);
                return;
            }
            return;
        }
        if (b10 != 2) {
            if (b10 == 3) {
                if (z10) {
                    net.lingala.zip4j.util.h.G(file);
                }
                if (z11) {
                    net.lingala.zip4j.util.h.F(file);
                    return;
                }
                return;
            }
            if (b10 != 18) {
                if (b10 == 38) {
                    if (z10) {
                        net.lingala.zip4j.util.h.G(file);
                    }
                    if (z11) {
                        net.lingala.zip4j.util.h.F(file);
                    }
                    if (z13) {
                        net.lingala.zip4j.util.h.H(file);
                        return;
                    }
                    return;
                }
                if (b10 != 48) {
                    if (b10 != 50) {
                        switch (b10) {
                            case 32:
                                break;
                            case 33:
                                if (z12) {
                                    net.lingala.zip4j.util.h.E(file);
                                }
                                if (z10) {
                                    net.lingala.zip4j.util.h.G(file);
                                    return;
                                }
                                return;
                            case 34:
                                break;
                            case 35:
                                if (z12) {
                                    net.lingala.zip4j.util.h.E(file);
                                }
                                if (z10) {
                                    net.lingala.zip4j.util.h.G(file);
                                }
                                if (z11) {
                                    net.lingala.zip4j.util.h.F(file);
                                    return;
                                }
                                return;
                            default:
                                return;
                        }
                    }
                    if (z12) {
                        net.lingala.zip4j.util.h.E(file);
                    }
                    if (z11) {
                        net.lingala.zip4j.util.h.F(file);
                        return;
                    }
                    return;
                }
                if (z12) {
                    net.lingala.zip4j.util.h.E(file);
                    return;
                }
                return;
            }
        }
        if (z11) {
            net.lingala.zip4j.util.h.F(file);
        }
    }

    private static void d(h hVar, File file) throws ZipException {
        if (hVar.t() > 0 && file.exists()) {
            file.setLastModified(net.lingala.zip4j.util.h.j(hVar.t()));
        }
    }
}
