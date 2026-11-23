package com.aggmoread.sdk.z.a.m;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes7.dex */
public class i extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f3708b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3707a = "devyok.DATA_PROVIDER";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3709c = 1;

    public i(Context context) {
        this.f3708b = context;
    }

    SharedPreferences a() {
        return this.f3708b.getSharedPreferences(this.f3707a, 0);
    }

    @Override // com.aggmoread.sdk.z.a.m.h
    public void b(String str, String str2) {
        SharedPreferences.Editor editorEdit = a().edit();
        editorEdit.putString(str, str2);
        a(editorEdit);
    }

    @Override // com.aggmoread.sdk.z.a.m.h
    public void c(String str) {
        this.f3707a = str;
    }

    @Override // com.aggmoread.sdk.z.a.m.h
    public String a(String str, String str2) {
        return a().getString(str, str2);
    }

    @Override // com.aggmoread.sdk.z.a.m.h
    public boolean b(String str) {
        return a().contains(str);
    }

    private void a(SharedPreferences.Editor editor) {
        int i10 = this.f3709c;
        if (i10 != 1 && i10 == 2) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    @Override // com.aggmoread.sdk.z.a.m.h
    public boolean a(String str) {
        return a().edit().remove(str).commit();
    }
}
