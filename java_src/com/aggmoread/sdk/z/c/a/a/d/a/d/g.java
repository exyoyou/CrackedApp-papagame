package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes7.dex */
public class g {
    public static Context a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, com.aggmoread.sdk.z.c.a.a.e.v.g gVar) {
        Context context;
        ContextWrapper fVar2;
        Context context2 = eVar.f4948d;
        try {
            int iB = fVar.f5004d.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5054y);
            com.aggmoread.sdk.z.c.a.a.e.e.a("isHack  g = " + iB + ", def false");
            if (iB == 2) {
                com.aggmoread.sdk.z.c.a.a.e.e.a("isHack  r 2 ");
                return context2;
            }
            boolean zA = gVar.a(fVar);
            com.aggmoread.sdk.z.c.a.a.e.e.a("isHack " + zA);
            if (zA) {
                if (eVar.f4948d instanceof Activity) {
                    context = context2;
                    fVar2 = new com.aggmoread.sdk.z.c.a.a.e.v.e((Activity) eVar.f4948d);
                } else {
                    context = context2;
                    fVar2 = new com.aggmoread.sdk.z.c.a.a.e.v.f(eVar.f4948d);
                }
                gVar.a(fVar2, fVar, new Object[0]);
                context = fVar2;
            }
            context = context2;
            com.aggmoread.sdk.z.c.a.a.e.e.a("getAdContext " + context);
            return context;
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("hack err " + e10.getMessage());
            context = eVar.f4948d;
        }
    }
}
