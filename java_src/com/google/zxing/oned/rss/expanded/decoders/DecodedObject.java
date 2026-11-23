package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes5.dex */
abstract class DecodedObject {
    private final int newPosition;

    DecodedObject(int i10) {
        this.newPosition = i10;
    }

    int getNewPosition() {
        return this.newPosition;
    }
}
