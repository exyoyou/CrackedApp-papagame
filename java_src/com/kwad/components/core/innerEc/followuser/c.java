package com.kwad.components.core.innerEc.followuser;

import com.j256.ormlite.stmt.query.SimpleComparison;
import com.kwad.sdk.i;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends com.kwad.sdk.core.network.d {
    private Map<String, String> Tk;
    private a Tl;

    public c(Map<String, String> map, a aVar) {
        this.Tk = map;
        this.Tl = aVar;
        ro();
        rp();
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
        addHeader("Cookie", d(this.Tk));
    }

    private void rp() {
        putBody("toUserId", this.Tl.Tg);
        putBody("fType", this.Tl.Th);
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        return i.EM();
    }
}
