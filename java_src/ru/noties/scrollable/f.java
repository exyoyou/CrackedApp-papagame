package ru.noties.scrollable;

/* JADX INFO: loaded from: classes10.dex */
public class f implements c {
    @Override // ru.noties.scrollable.c
    public int a(ScrollableLayout scrollableLayout, boolean z10, int i10, int i11, int i12) {
        if (z10) {
            return 0;
        }
        return i12;
    }

    @Override // ru.noties.scrollable.c
    public int b(ScrollableLayout scrollableLayout, int i10, int i11) {
        if (i10 < i11 / 2) {
            return 0;
        }
        return i11;
    }
}
