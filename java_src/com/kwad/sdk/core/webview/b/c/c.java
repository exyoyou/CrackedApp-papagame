package com.kwad.sdk.core.webview.b.c;

import com.haima.hmcp.beans.ClipBoardItemData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static final List<String> bcW;

    static {
        ArrayList arrayList = new ArrayList();
        bcW = arrayList;
        arrayList.add("application/x-javascript");
        arrayList.add("image/jpeg");
        arrayList.add("image/tiff");
        arrayList.add("text/css");
        arrayList.add(ClipBoardItemData.TYPE_TEXT_HTML);
        arrayList.add("image/gif");
        arrayList.add("image/png");
        arrayList.add("application/javascript");
        arrayList.add("video/mp4");
        arrayList.add("audio/mpeg");
        arrayList.add("application/json");
        arrayList.add("image/webp");
        arrayList.add("image/apng");
        arrayList.add("image/svg+xml");
        arrayList.add("application/octet-stream");
    }

    public static boolean fU(String str) {
        return bcW.contains(str);
    }
}
