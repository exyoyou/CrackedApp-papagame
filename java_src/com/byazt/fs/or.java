package com.byazt.fs;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 579})
public class or implements aw<com.byazt.vc.uj> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final or f14271c = new or();

    private or() {
    }

    @Override // com.byazt.fs.aw
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.byazt.vc.uj tt(JsonReader jsonReader, float f10) throws IOException {
        boolean z10 = jsonReader.peek() == JsonToken.BEGIN_ARRAY;
        if (z10) {
            jsonReader.beginArray();
        }
        float fNextDouble = (float) jsonReader.nextDouble();
        float fNextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        if (z10) {
            jsonReader.endArray();
        }
        return new com.byazt.vc.uj((fNextDouble / 100.0f) * f10, (fNextDouble2 / 100.0f) * f10);
    }
}
