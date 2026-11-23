package com.byazt.wr;

import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1361, 20})
public class c implements com.byazt.yy.c, com.byazt.yy.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.iy.ve f21659c;
    public final boolean tt = false;

    public c(com.byazt.iy.ve veVar) {
        this.f21659c = veVar;
    }

    @Override // com.byazt.yy.c
    public Map<String, Object> c(File file) {
        if (file.getName().endsWith(".prop")) {
            return new tt(this.f21659c, this.tt).c(file);
        }
        File file2 = new File(file.getParent(), file.getName() + ".prop");
        if (file2.exists() && file2.length() > 0) {
            return new tt(this.f21659c, this.tt).c(file2);
        }
        if (file.getName().endsWith("xml")) {
            return n.c() ? new n(this.f21659c, this.tt).c(file) : new a(this.f21659c, this.tt).c(file);
        }
        return new ConcurrentHashMap();
    }

    @Override // com.byazt.yy.tt
    public void c(Map<String, Object> map, File file) throws Throwable {
        if (!file.getName().endsWith(".prop")) {
            file = new File(file.getParent(), file.getName() + ".prop");
        }
        file.setReadable(true, false);
        new tt(this.f21659c, this.tt).c(map, file);
    }
}
