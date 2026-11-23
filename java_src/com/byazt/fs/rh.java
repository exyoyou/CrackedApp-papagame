package com.byazt.fs;

import android.util.JsonReader;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, 115})
public class rh implements aw<Integer> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final rh f14274c = new rh();

    private rh() {
    }

    @Override // com.byazt.fs.aw
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Integer tt(JsonReader jsonReader, float f10) throws IOException {
        return Integer.valueOf(Math.round(my.tt(jsonReader) * f10));
    }
}
