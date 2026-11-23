package com.beizi.fusion.sm.b;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.sm.b.a.l;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10285a;

    @Override // com.beizi.fusion.sm.b.b
    public void a(Exception exc) {
    }

    public static void a(Context context, b bVar) {
        l.a(context).a(bVar);
    }

    public static boolean a(Context context) {
        return l.a(context).a();
    }

    @Override // com.beizi.fusion.sm.b.b
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            a(new d("OAID is empty"));
        } else {
            this.f10285a = str;
        }
    }
}
