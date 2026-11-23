package com.sigmob.sdk.base.models;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public enum ViewState {
    LOADING,
    DEFAULT,
    RESIZED,
    EXPANDED,
    HIDDEN;

    public String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
