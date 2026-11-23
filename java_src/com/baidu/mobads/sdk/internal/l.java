package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public enum l {
    NEWS("news", 0),
    IMAGE("image", 1),
    VIDEO("video", 2),
    TOPIC("topic", 3),
    AD("ad", 4),
    HOTDOC("hotkey", 5),
    SMALLVIDEO("smallvideo", 6),
    RECALLNEWS("recallNews", 8),
    POLICETASK("policetask", 9);


    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f7914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f7915k;

    l(String str, int i10) {
        this.f7914j = str;
        this.f7915k = i10;
    }

    public String b() {
        return this.f7914j;
    }

    public int c() {
        return this.f7915k;
    }

    public static l b(String str) {
        for (l lVar : values()) {
            if (lVar != null && TextUtils.isEmpty(lVar.f7914j) && lVar.f7914j.equals(str)) {
                return lVar;
            }
        }
        return null;
    }
}
