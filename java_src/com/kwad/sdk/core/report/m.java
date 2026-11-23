package com.kwad.sdk.core.report;

import androidx.annotation.NonNull;
import com.kwad.sdk.core.report.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class m<T extends e> implements l<T> {
    private final Map<String, T> aVr = new LinkedHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.kwad.sdk.core.report.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized void o(@NonNull T t10) {
        this.aVr.put(t10.actionId, t10);
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized void H(List<T> list) {
        for (T t10 : list) {
            if (t10 != null) {
                this.aVr.remove(t10.actionId);
            }
        }
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized List<T> eE(int i10) {
        ArrayList arrayList;
        arrayList = new ArrayList(Math.min(this.aVr.size(), 200));
        Iterator<Map.Entry<String, T>> it2 = this.aVr.entrySet().iterator();
        for (int i11 = 0; i11 < 200 && it2.hasNext(); i11++) {
            arrayList.add(it2.next().getValue());
        }
        return arrayList;
    }

    @Override // com.kwad.sdk.core.report.l
    public final synchronized long size() {
        int size;
        size = this.aVr.size();
        com.kwad.sdk.core.d.c.d("MemReportCache", "size() = " + size);
        return size;
    }
}
