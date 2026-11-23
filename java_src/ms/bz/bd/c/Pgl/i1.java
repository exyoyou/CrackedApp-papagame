package ms.bz.bd.c.Pgl;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes.dex */
final class i1 implements FilenameFilter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f94402c;

    i1(String str) {
        this.f94402c = str;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return str.startsWith(this.f94402c);
    }
}
