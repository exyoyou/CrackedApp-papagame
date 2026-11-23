package com.join.mgps.joystick.map;

import android.view.InputEvent;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InputEvent f71822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f71823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    int f71824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f71825d;

    public String a() {
        return this.f71823b;
    }

    public String b() {
        return this.f71825d;
    }

    @Deprecated
    public int c() {
        return this.f71824c;
    }

    public InputEvent d() {
        return this.f71822a;
    }

    public void e(String customKey) {
        this.f71823b = customKey;
    }

    public void f(String emuKey) {
        this.f71825d = emuKey;
    }

    @Deprecated
    public void g(int emumapKeyIndex) {
        this.f71824c = emumapKeyIndex;
    }

    public void h(InputEvent event) {
        this.f71822a = event;
    }

    public String toString() {
        return "KeyMapEvent{event=" + this.f71822a + ", customKey='" + this.f71823b + "', emumapKeyIndex=" + this.f71824c + ", emuKey='" + this.f71825d + "'}";
    }
}
