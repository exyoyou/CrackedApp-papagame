package com.kwad.sdk.pngencrypt.chunk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class w {
    private final e bmq;
    private final boolean bmr;

    public w(e eVar) {
        this.bmq = eVar;
        if (eVar instanceof f) {
            this.bmr = false;
        } else {
            this.bmr = true;
        }
    }

    private List<? extends t> ht(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.bmq.ap("tEXt", str));
        arrayList.addAll(this.bmq.ap("zTXt", str));
        arrayList.addAll(this.bmq.ap("iTXt", str));
        return arrayList;
    }

    public final String hu(String str) {
        List<? extends t> listHt = ht(str);
        if (listHt.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<? extends t> it2 = listHt.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().TA());
            sb2.append("\n");
        }
        return sb2.toString().trim();
    }
}
