package com.android.dx.rop.annotation;

import com.android.dx.util.ToHuman;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;

/* JADX INFO: loaded from: classes7.dex */
public enum AnnotationVisibility implements ToHuman {
    RUNTIME("runtime"),
    BUILD(JsonPOJOBuilder.DEFAULT_BUILD_METHOD),
    SYSTEM("system"),
    EMBEDDED("embedded");

    private final String human;

    AnnotationVisibility(String str) {
        this.human = str;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return this.human;
    }
}
