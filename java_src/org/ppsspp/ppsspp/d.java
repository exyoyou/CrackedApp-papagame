package org.ppsspp.ppsspp;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<EditCheatInfo> f95934a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<CheatInfo> f95935b = new ArrayList();

    public List<CheatInfo> a() {
        return this.f95935b;
    }

    public List<EditCheatInfo> b() {
        return this.f95934a;
    }

    public void c(List<CheatInfo> list) {
        this.f95935b = list;
    }

    public void d(List<EditCheatInfo> list) {
        this.f95934a = list;
    }
}
