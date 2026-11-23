package com.byazt.fs;

import android.graphics.PointF;
import android.util.JsonReader;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 720, TcMouseManager.MOUSE_STARY})
public class p implements aw<PointF> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p f14272c = new p();

    private p() {
    }

    @Override // com.byazt.fs.aw
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public PointF tt(JsonReader jsonReader, float f10) throws IOException {
        return my.tt(jsonReader, f10);
    }
}
