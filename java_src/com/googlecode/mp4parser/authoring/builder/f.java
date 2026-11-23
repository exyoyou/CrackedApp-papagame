package com.googlecode.mp4parser.authoring.builder;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<com.googlecode.mp4parser.authoring.h, long[]> f32853a;

    public f(Map<com.googlecode.mp4parser.authoring.h, long[]> map) {
        this.f32853a = map;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.c
    public long[] a(com.googlecode.mp4parser.authoring.h hVar) {
        return this.f32853a.get(hVar);
    }
}
