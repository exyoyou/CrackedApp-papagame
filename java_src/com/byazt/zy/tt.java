package com.byazt.zy;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<rl> f23043c = new ArrayList();

    public void c(rl rlVar) {
        this.f23043c.add(rlVar);
    }

    public void c(Path path) {
        for (int size = this.f23043c.size() - 1; size >= 0; size--) {
            com.byazt.kk.da.c(path, this.f23043c.get(size));
        }
    }
}
