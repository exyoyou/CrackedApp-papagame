package com.papa91.arc.widget.listview;

/* JADX INFO: loaded from: classes2.dex */
public enum LoadMoreMode {
    CLICK,
    SCROLL;

    static LoadMoreMode mapIntToValue(int i10) {
        return i10 != 1 ? CLICK : SCROLL;
    }
}
