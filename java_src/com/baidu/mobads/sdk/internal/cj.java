package com.baidu.mobads.sdk.internal;

import android.content.SharedPreferences;
import android.os.Handler;

/* JADX INFO: loaded from: classes6.dex */
class cj extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ cb.c f7716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Handler f7717c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ cb f7718d;

    cj(cb cbVar, cb.c cVar, Handler handler) {
        this.f7718d = cbVar;
        this.f7716b = cVar;
        this.f7717c = handler;
    }

    @Override // com.baidu.mobads.sdk.internal.j
    protected Object i() {
        try {
            try {
                synchronized (cb.class) {
                    try {
                        this.f7718d.b(this.f7716b, this.f7717c);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SharedPreferences.Editor editorEdit = this.f7718d.m().edit();
                editorEdit.putString(cb.f7682d, this.f7718d.a());
                editorEdit.apply();
                return null;
            } catch (Throwable th2) {
                try {
                    this.f7718d.f7704z.a(cb.f7679a, "Load APK Failed: " + th2.toString());
                    this.f7718d.b(false);
                    SharedPreferences.Editor editorEdit2 = this.f7718d.m().edit();
                    editorEdit2.putString(cb.f7682d, this.f7718d.a());
                    editorEdit2.apply();
                    return null;
                } catch (Throwable th3) {
                    try {
                        SharedPreferences.Editor editorEdit3 = this.f7718d.m().edit();
                        editorEdit3.putString(cb.f7682d, this.f7718d.a());
                        editorEdit3.apply();
                    } catch (Throwable th4) {
                        this.f7718d.f7704z.a(cb.f7679a, th4);
                    }
                    throw th3;
                }
            }
        } catch (Throwable th5) {
            this.f7718d.f7704z.a(cb.f7679a, th5);
            return null;
        }
    }
}
