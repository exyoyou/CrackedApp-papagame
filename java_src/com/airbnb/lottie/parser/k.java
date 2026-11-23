package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final JsonReader.a f5964f = JsonReader.a.a("ef");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final JsonReader.a f5965g = JsonReader.a.a("nm", "v");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.airbnb.lottie.model.animatable.a f5966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.airbnb.lottie.model.animatable.b f5967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.airbnb.lottie.model.animatable.b f5968c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.airbnb.lottie.model.animatable.b f5969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.airbnb.lottie.model.animatable.b f5970e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    private void a(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        jsonReader.d();
        String strO = "";
        while (jsonReader.g()) {
            int iT = jsonReader.t(f5965g);
            if (iT != 0) {
                if (iT == 1) {
                    strO.hashCode();
                    switch (strO) {
                        case "Distance":
                            this.f5969d = d.e(jsonReader, jVar);
                            break;
                        case "Opacity":
                            this.f5967b = d.f(jsonReader, jVar, false);
                            break;
                        case "Direction":
                            this.f5968c = d.f(jsonReader, jVar, false);
                            break;
                        case "Shadow Color":
                            this.f5966a = d.c(jsonReader, jVar);
                            break;
                        case "Softness":
                            this.f5970e = d.e(jsonReader, jVar);
                            break;
                        default:
                            jsonReader.y();
                            break;
                    }
                } else {
                    jsonReader.v();
                    jsonReader.y();
                }
            } else {
                strO = jsonReader.o();
            }
        }
        jsonReader.f();
    }

    @Nullable
    j b(JsonReader jsonReader, com.airbnb.lottie.j jVar) throws IOException {
        com.airbnb.lottie.model.animatable.b bVar;
        com.airbnb.lottie.model.animatable.b bVar2;
        com.airbnb.lottie.model.animatable.b bVar3;
        com.airbnb.lottie.model.animatable.b bVar4;
        while (jsonReader.g()) {
            if (jsonReader.t(f5964f) != 0) {
                jsonReader.v();
                jsonReader.y();
            } else {
                jsonReader.b();
                while (jsonReader.g()) {
                    a(jsonReader, jVar);
                }
                jsonReader.e();
            }
        }
        com.airbnb.lottie.model.animatable.a aVar = this.f5966a;
        if (aVar == null || (bVar = this.f5967b) == null || (bVar2 = this.f5968c) == null || (bVar3 = this.f5969d) == null || (bVar4 = this.f5970e) == null) {
            return null;
        }
        return new j(aVar, bVar, bVar2, bVar3, bVar4);
    }
}
