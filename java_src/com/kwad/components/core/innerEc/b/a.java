package com.kwad.components.core.innerEc.b;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.network.d;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends d {
    private Map<String, String> Tk;

    public a(Map<String, String> map) {
        this.Tk = map;
        ro();
    }

    private static String d(Map<String, String> map) {
        Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : setEntrySet) {
            arrayList.add(entry.getKey() + SimpleComparison.EQUAL_TO_OPERATION + entry.getValue());
        }
        StringBuilder sb2 = new StringBuilder();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append((String) arrayList.get(i10));
            if (i10 != size - 1) {
                sb2.append("; ");
            }
        }
        return sb2.toString();
    }

    private void ro() {
        Map<String, String> map = this.Tk;
        if (map != null) {
            addHeader("Cookie", d(map));
            return;
        }
        c.w("BaseLoginStatusRequest", "cookieMap is null" + getUrl());
    }
}
