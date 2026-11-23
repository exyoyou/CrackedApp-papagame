package com.byazt.fs;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 66})
public class t implements aw<Float> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t f14278c = new t();

    private t() {
    }

    @Override // com.byazt.fs.aw
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Float tt(JsonReader jsonReader, float f10) throws IOException {
        return Float.valueOf(my.tt(jsonReader) * f10);
    }
}
