package com.kwad.framework.filedownloader.download;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ConnectTask {
    final int aAO;
    final com.kwad.framework.filedownloader.d.b aAP;
    private com.kwad.framework.filedownloader.download.a aAQ;
    private String aAR;
    private Map<String, List<String>> aAS;
    private List<String> aAT;
    final String url;

    class Reconnect extends Throwable {
        private static final long serialVersionUID = 2940866805654257562L;

        Reconnect() {
        }
    }

    static class a {
        private com.kwad.framework.filedownloader.d.b aAP;
        private String aAR;
        private Integer aAU;
        private com.kwad.framework.filedownloader.download.a aAV;
        private String url;

        a() {
        }

        final ConnectTask BZ() {
            com.kwad.framework.filedownloader.download.a aVar;
            Integer num = this.aAU;
            if (num == null || (aVar = this.aAV) == null || this.url == null) {
                throw new IllegalArgumentException();
            }
            return new ConnectTask(aVar, num.intValue(), this.url, this.aAR, this.aAP, (byte) 0);
        }

        public final a a(com.kwad.framework.filedownloader.d.b bVar) {
            this.aAP = bVar;
            return this;
        }

        public final a bY(String str) {
            this.url = str;
            return this;
        }

        public final a bZ(String str) {
            this.aAR = str;
            return this;
        }

        public final a cK(int i10) {
            this.aAU = Integer.valueOf(i10);
            return this;
        }

        public final a a(com.kwad.framework.filedownloader.download.a aVar) {
            this.aAV = aVar;
            return this;
        }
    }

    /* synthetic */ ConnectTask(com.kwad.framework.filedownloader.download.a aVar, int i10, String str, String str2, com.kwad.framework.filedownloader.d.b bVar, byte b10) {
        this(aVar, i10, str, str2, bVar);
    }

    private void a(com.kwad.framework.filedownloader.a.b bVar) {
        HashMap<String, List<String>> mapCW;
        com.kwad.framework.filedownloader.d.b bVar2 = this.aAP;
        if (bVar2 == null || (mapCW = bVar2.CW()) == null) {
            return;
        }
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.e(this, "%d add outside header: %s", Integer.valueOf(this.aAO), mapCW);
        }
        for (Map.Entry<String, List<String>> entry : mapCW.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (value != null) {
                Iterator<String> it2 = value.iterator();
                while (it2.hasNext()) {
                    bVar.addHeader(key, it2.next());
                }
            }
        }
    }

    private void b(com.kwad.framework.filedownloader.a.b bVar) {
        if (!TextUtils.isEmpty(this.aAR)) {
            bVar.addHeader("If-Match", this.aAR);
        }
        com.kwad.framework.filedownloader.download.a aVar = this.aAQ;
        bVar.addHeader("Range", aVar.aAY == 0 ? com.kwad.framework.filedownloader.f.f.c("bytes=%d-", Long.valueOf(aVar.aAX)) : com.kwad.framework.filedownloader.f.f.c("bytes=%d-%d", Long.valueOf(aVar.aAX), Long.valueOf(this.aAQ.aAY)));
    }

    private void c(com.kwad.framework.filedownloader.a.b bVar) {
        com.kwad.framework.filedownloader.d.b bVar2 = this.aAP;
        if (bVar2 == null || bVar2.CW().get("User-Agent") == null) {
            bVar.addHeader("User-Agent", com.kwad.framework.filedownloader.f.f.DF());
        }
    }

    final com.kwad.framework.filedownloader.a.b BV() {
        com.kwad.framework.filedownloader.a.b bVarCa = b.Ca().ca(this.url);
        a(bVarCa);
        b(bVarCa);
        c(bVarCa);
        this.aAS = bVarCa.BO();
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "%s request header %s", Integer.valueOf(this.aAO), this.aAS);
        }
        bVarCa.execute();
        ArrayList arrayList = new ArrayList();
        this.aAT = arrayList;
        return com.kwad.framework.filedownloader.a.d.a(this.aAS, bVarCa, arrayList);
    }

    final boolean BW() {
        return this.aAQ.aAX > 0;
    }

    final String BX() {
        List<String> list = this.aAT;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<String> list2 = this.aAT;
        return list2.get(list2.size() - 1);
    }

    public final com.kwad.framework.filedownloader.download.a BY() {
        return this.aAQ;
    }

    public final Map<String, List<String>> getRequestHeader() {
        return this.aAS;
    }

    private ConnectTask(com.kwad.framework.filedownloader.download.a aVar, int i10, String str, String str2, com.kwad.framework.filedownloader.d.b bVar) {
        this.aAO = i10;
        this.url = str;
        this.aAR = str2;
        this.aAP = bVar;
        this.aAQ = aVar;
    }
}
