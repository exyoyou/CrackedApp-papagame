package com.kwad.framework.filedownloader;

import android.os.Handler;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class ab implements w {
    private final SparseArray<Handler> aAp = new SparseArray<>();

    ab() {
    }

    private static void b(Handler handler) {
        handler.sendEmptyMessage(2);
    }

    private static void c(Handler handler) {
        handler.sendEmptyMessage(3);
    }

    @Override // com.kwad.framework.filedownloader.w
    public final void BM() {
        for (int i10 = 0; i10 < this.aAp.size(); i10++) {
            b(this.aAp.get(this.aAp.keyAt(i10)));
        }
    }

    @Override // com.kwad.framework.filedownloader.w
    public final int BN() {
        return this.aAp.size();
    }

    @Override // com.kwad.framework.filedownloader.w
    public final boolean cz(int i10) {
        return this.aAp.get(i10) != null;
    }

    @Override // com.kwad.framework.filedownloader.w
    public final void w(List<Integer> list) {
        Iterator<Integer> it2 = list.iterator();
        while (it2.hasNext()) {
            c(this.aAp.get(it2.next().intValue()));
        }
    }
}
