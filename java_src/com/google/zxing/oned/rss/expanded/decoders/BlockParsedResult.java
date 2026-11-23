package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes5.dex */
final class BlockParsedResult {
    private final DecodedInformation decodedInformation;
    private final boolean finished;

    BlockParsedResult(boolean z10) {
        this(null, z10);
    }

    DecodedInformation getDecodedInformation() {
        return this.decodedInformation;
    }

    boolean isFinished() {
        return this.finished;
    }

    BlockParsedResult(DecodedInformation decodedInformation, boolean z10) {
        this.finished = z10;
        this.decodedInformation = decodedInformation;
    }
}
