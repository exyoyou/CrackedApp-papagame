package com.haima.hmcp.beans;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class X86KeyMapContentConfig {
    public boolean isContainsRatioConfig;
    public boolean isUseLargeConfig;
    public String x86KeyMapContentConfig;
    public String x86KeyMapContentFnBtns;
    public String x86KeyMapContentKeyboard;
    public String x86KeyMapContentLargeScreenConfig;
    public String x86KeyMapContentLargeScreenFnBtns;
    public String x86KeyMapContentLargeScreenKeyboard;
    public String x86KeyMapContentLargeScreenMouse;
    public String x86KeyMapContentLargeScreenXbox;
    public String x86KeyMapContentMouse;
    public String x86KeyMapContentXbox;

    public String getConfig() {
        return ((this.isUseLargeConfig || TextUtils.isEmpty(this.x86KeyMapContentConfig)) && !TextUtils.isEmpty(this.x86KeyMapContentLargeScreenConfig)) ? this.x86KeyMapContentLargeScreenConfig : this.x86KeyMapContentConfig;
    }

    public String getFnBtnsConfig() {
        return ((this.isUseLargeConfig || TextUtils.isEmpty(this.x86KeyMapContentFnBtns)) && !TextUtils.isEmpty(this.x86KeyMapContentLargeScreenFnBtns)) ? this.x86KeyMapContentLargeScreenFnBtns : this.x86KeyMapContentFnBtns;
    }

    public String getKeyboardConfig() {
        return ((this.isUseLargeConfig || TextUtils.isEmpty(this.x86KeyMapContentKeyboard)) && !TextUtils.isEmpty(this.x86KeyMapContentLargeScreenKeyboard)) ? this.x86KeyMapContentLargeScreenKeyboard : this.x86KeyMapContentKeyboard;
    }

    public String getMouseConfig() {
        return ((this.isUseLargeConfig || TextUtils.isEmpty(this.x86KeyMapContentMouse)) && !TextUtils.isEmpty(this.x86KeyMapContentLargeScreenMouse)) ? this.x86KeyMapContentLargeScreenMouse : this.x86KeyMapContentMouse;
    }

    public String getXboxConfig() {
        return ((this.isUseLargeConfig || TextUtils.isEmpty(this.x86KeyMapContentXbox)) && !TextUtils.isEmpty(this.x86KeyMapContentLargeScreenXbox)) ? this.x86KeyMapContentLargeScreenXbox : this.x86KeyMapContentXbox;
    }

    public String toString() {
        return "X86KeyMapContentConfig{x86KeyMapContentConfig='" + this.x86KeyMapContentConfig + "', x86KeyMapContentMouse='" + this.x86KeyMapContentMouse + "', x86KeyMapContentXbox='" + this.x86KeyMapContentXbox + "', x86KeyMapContentKeyboard='" + this.x86KeyMapContentKeyboard + "', x86KeyMapContentLargeScreenConfig='" + this.x86KeyMapContentLargeScreenConfig + "', x86KeyMapContentLargeScreenMouse='" + this.x86KeyMapContentLargeScreenMouse + "', x86KeyMapContentLargeScreenXbox='" + this.x86KeyMapContentLargeScreenXbox + "', x86KeyMapContentLargeScreenKeyboard='" + this.x86KeyMapContentLargeScreenKeyboard + "', x86KeyMapContentFnBtns='" + this.x86KeyMapContentFnBtns + "', x86KeyMapContentLargeScreenFnBtns='" + this.x86KeyMapContentLargeScreenFnBtns + "', isUseLargeConfig=" + this.isUseLargeConfig + '}';
    }
}
