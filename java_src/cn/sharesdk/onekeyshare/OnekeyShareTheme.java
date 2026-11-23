package cn.sharesdk.onekeyshare;

import cn.sharesdk.onekeyshare.themes.classic.ClassicTheme;

/* JADX INFO: loaded from: classes7.dex */
public enum OnekeyShareTheme {
    CLASSIC(0, new ClassicTheme());

    private final OnekeyShareThemeImpl impl;
    private final int value;

    OnekeyShareTheme(int i10, OnekeyShareThemeImpl onekeyShareThemeImpl) {
        this.value = i10;
        this.impl = onekeyShareThemeImpl;
    }

    public static OnekeyShareTheme fromValue(int i10) {
        for (OnekeyShareTheme onekeyShareTheme : values()) {
            if (onekeyShareTheme.value == i10) {
                return onekeyShareTheme;
            }
        }
        return CLASSIC;
    }

    public OnekeyShareThemeImpl getImpl() {
        return this.impl;
    }

    public int getValue() {
        return this.value;
    }
}
