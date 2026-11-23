package com.papa.gsyvideoplayer.cache;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d implements y2.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<String, String> f76759a = new HashMap();

    @Override // y2.b
    public Map<String, String> a(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("****** proxy addHeaders ****** ");
        Map<String, String> map = f76759a;
        sb2.append(map.size());
        com.papa.gsyvideoplayer.utils.c.h(sb2.toString());
        return map;
    }
}
