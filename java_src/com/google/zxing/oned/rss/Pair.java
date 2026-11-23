package com.google.zxing.oned.rss;

/* JADX INFO: loaded from: classes5.dex */
final class Pair extends DataCharacter {
    private int count;
    private final FinderPattern finderPattern;

    Pair(int i10, int i11, FinderPattern finderPattern) {
        super(i10, i11);
        this.finderPattern = finderPattern;
    }

    int getCount() {
        return this.count;
    }

    FinderPattern getFinderPattern() {
        return this.finderPattern;
    }

    void incrementCount() {
        this.count++;
    }
}
