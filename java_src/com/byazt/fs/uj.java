package com.byazt.fs;

import android.util.JsonReader;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 15})
public class uj {
    public static com.byazt.kd.da a(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        return new com.byazt.kd.da(c(jsonReader, com.byazt.kk.da.c(), aVar, i.f14268c));
    }

    public static com.byazt.kd.tt c(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        return c(jsonReader, aVar, true);
    }

    public static com.byazt.kd.x n(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        return new com.byazt.kd.x(c(jsonReader, com.byazt.kk.da.c(), aVar, cu.f14264c));
    }

    public static com.byazt.kd.c sp(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        return new com.byazt.kd.c(c(jsonReader, aVar, sp.f14277c));
    }

    public static com.byazt.kd.uj tt(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        return new com.byazt.kd.uj(c(jsonReader, aVar, rh.f14274c));
    }

    public static com.byazt.kd.sp uj(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        return new com.byazt.kd.sp(c(jsonReader, aVar, or.f14271c));
    }

    public static com.byazt.kd.a ve(JsonReader jsonReader, com.byazt.ga.a aVar) throws IOException {
        return new com.byazt.kd.a(rl.c(jsonReader, aVar, com.byazt.kk.da.c(), md.f14269c, true));
    }

    public static com.byazt.kd.tt c(JsonReader jsonReader, com.byazt.ga.a aVar, boolean z10) throws IOException {
        return new com.byazt.kd.tt(c(jsonReader, z10 ? com.byazt.kk.da.c() : 1.0f, aVar, t.f14278c));
    }

    public static com.byazt.kd.ve c(JsonReader jsonReader, com.byazt.ga.a aVar, int i10) throws IOException {
        return new com.byazt.kd.ve(c(jsonReader, aVar, new z(i10)));
    }

    private static <T> List<com.byazt.vc.c<T>> c(JsonReader jsonReader, com.byazt.ga.a aVar, aw<T> awVar) throws IOException {
        return rl.c(jsonReader, aVar, 1.0f, awVar, false);
    }

    private static <T> List<com.byazt.vc.c<T>> c(JsonReader jsonReader, float f10, com.byazt.ga.a aVar, aw<T> awVar) throws IOException {
        return rl.c(jsonReader, aVar, f10, awVar, false);
    }
}
