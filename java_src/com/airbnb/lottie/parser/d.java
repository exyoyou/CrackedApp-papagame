package com.airbnb.lottie.parser;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class d {
    private d() {
    }

    private static <T> List<com.airbnb.lottie.value.a<T>> a(JsonReader jsonReader, float f10, com.airbnb.lottie.j jVar, n0<T> n0Var) throws IOException {
        return u.a(jsonReader, jVar, f10, n0Var, false);
    }

    private static <T> List<com.airbnb.lottie.value.a<T>> b(JsonReader jsonReader, com.airbnb.lottie.j jVar, n0<T> n0Var) throws IOException {
        return u.a(jsonReader, jVar, 1.0f, n0Var, false);
    }

    static com.airbnb.lottie.model.animatable.a c(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.a(b(jsonReader, jVar, g.f5950a));
    }

    static com.airbnb.lottie.model.animatable.j d(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.j(a(jsonReader, com.airbnb.lottie.utils.l.e(), jVar, i.f5955a));
    }

    public static com.airbnb.lottie.model.animatable.b e(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return f(jsonReader, jVar, true);
    }

    public static com.airbnb.lottie.model.animatable.b f(JsonReader jsonReader, com.airbnb.lottie.j jVar, boolean z10) throws IOException {
        return new com.airbnb.lottie.model.animatable.b(a(jsonReader, z10 ? com.airbnb.lottie.utils.l.e() : 1.0f, jVar, l.f5972a));
    }

    static com.airbnb.lottie.model.animatable.c g(JsonReader jsonReader, com.airbnb.lottie.j jVar, int i10) throws IOException {
        return new com.airbnb.lottie.model.animatable.c(b(jsonReader, jVar, new o(i10)));
    }

    static com.airbnb.lottie.model.animatable.d h(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.d(b(jsonReader, jVar, r.f6052a));
    }

    static com.airbnb.lottie.model.animatable.f i(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.f(u.a(jsonReader, jVar, com.airbnb.lottie.utils.l.e(), b0.f5940a, true));
    }

    static com.airbnb.lottie.model.animatable.g j(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.g((List<com.airbnb.lottie.value.a<com.airbnb.lottie.value.k>>) b(jsonReader, jVar, g0.f5951a));
    }

    static com.airbnb.lottie.model.animatable.h k(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        return new com.airbnb.lottie.model.animatable.h(a(jsonReader, com.airbnb.lottie.utils.l.e(), jVar, h0.f5953a));
    }
}
