package com.aggmoread.sdk.z.a.l;

import com.aggmoread.sdk.z.a.i.h;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public interface a extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f3672c = new C0080a();

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.l.a$a, reason: collision with other inner class name */
    static class C0080a implements a {
        C0080a() {
        }

        @Override // com.aggmoread.sdk.z.a.l.a, com.aggmoread.sdk.z.a.i.h
        public void a(com.aggmoread.sdk.z.a.g.f fVar) {
        }

        @Override // com.aggmoread.sdk.z.a.l.a
        public void onAdLoaded(List<c> list) {
        }
    }

    @Override // com.aggmoread.sdk.z.a.i.h
    void a(com.aggmoread.sdk.z.a.g.f fVar);

    void onAdLoaded(List<c> list);
}
