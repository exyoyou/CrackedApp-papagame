package com.kwad.components.core.pfmonitor.model;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private e aiq;
    private final List<d> air;
    private List<d> ais;
    private final long ait;
    private final int aiu;
    private final int aiv;

    public c(List<d> list, List<d> list2) {
        this.air = new ArrayList(list);
        this.ais = list2;
        this.ait = t(list);
        this.aiu = b(list, false);
        this.aiv = b(list, true);
    }

    private static int b(List<d> list, boolean z10) {
        int i10 = 0;
        for (d dVar : list) {
            if ((z10 && dVar.isDirectory()) || (!z10 && !dVar.isDirectory())) {
                i10++;
            }
        }
        return i10;
    }

    private static long t(List<d> list) {
        long length = 0;
        for (d dVar : list) {
            if (!dVar.getFile().isDirectory()) {
                length += dVar.getFile().length();
            }
        }
        return length;
    }

    public final void a(e eVar) {
        this.aiq = eVar;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ScanResult{targetPath='");
        sb2.append(this.aiq.vv());
        sb2.append('\'');
        sb2.append(", totalSize=");
        sb2.append(this.ait);
        sb2.append(", totalSizeFormat=");
        sb2.append(com.kwad.components.core.pfmonitor.d.P(this.ait));
        sb2.append(", fileCount=");
        sb2.append(this.aiu);
        sb2.append(", bigFilesCount=");
        List<d> list = this.ais;
        sb2.append(list == null ? 0 : list.size());
        sb2.append(", directoryCount=");
        sb2.append(this.aiv);
        sb2.append('}');
        return sb2.toString();
    }

    public final f vt() {
        f fVar = new f();
        fVar.aim = this.aiq.vw();
        fVar.aiz = this.aiq.vv();
        fVar.aiA = this.ait;
        return fVar;
    }

    public final List<f> vu() {
        ArrayList arrayList = new ArrayList();
        for (d dVar : this.ais) {
            try {
                f fVar = new f();
                fVar.aim = dVar.getFileName();
                fVar.aiz = dVar.getFile().getAbsolutePath();
                fVar.aiA = dVar.getFile().length();
                arrayList.add(fVar);
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            }
        }
        return arrayList;
    }
}
