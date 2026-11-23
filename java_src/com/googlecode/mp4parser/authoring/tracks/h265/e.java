package com.googlecode.mp4parser.authoring.tracks.h265;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    public e(com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar) throws IOException {
        int i10 = 0;
        while (cVar.c(8) == 255) {
            i10 += 255;
        }
        int iC = cVar.c(8) + i10;
        while (cVar.c(8) == 255) {
        }
        cVar.c(8);
        System.err.println("payloadType " + iC);
    }
}
