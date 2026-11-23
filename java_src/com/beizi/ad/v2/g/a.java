package com.beizi.ad.v2.g;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.ad.model.f;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.ad.v2.a.a {
    public a(Context context, ViewGroup viewGroup, View view, String str) {
        viewGroup.setPadding(0, 0, 0, 0);
        this.f9677a = new b(context, viewGroup, view, str);
    }

    public void a(int i10, int i11, int i12, int i13) {
    }

    public void b(View.OnTouchListener onTouchListener) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            ((b) bVar).b(onTouchListener);
        }
    }

    public void t() {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            ((b) bVar).D();
        }
    }

    public void a(com.beizi.ad.a aVar) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            ((b) bVar).a(aVar);
        }
    }

    public void a(com.beizi.ad.v2.b.a aVar) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            ((b) bVar).a(aVar);
        }
    }

    public void a(View view) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            ((b) bVar).a(view);
        }
    }

    public void a(int i10, int i11) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            ((b) bVar).a(i10, i11);
        }
    }

    public void a(View.OnTouchListener onTouchListener) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            ((b) bVar).a(onTouchListener);
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10) {
        com.beizi.ad.v2.a.b bVar = this.f9677a;
        if (bVar != null && (bVar instanceof b)) {
            f fVar = new f();
            if (!TextUtils.isEmpty(str)) {
                fVar.a(str);
            }
            if (!TextUtils.isEmpty(str2)) {
                fVar.b(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                fVar.c(str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                fVar.d(str4);
            }
            if (!TextUtils.isEmpty(str5)) {
                fVar.e(str5);
            }
            if (!TextUtils.isEmpty(str6)) {
                fVar.f(str6);
            }
            if (!TextUtils.isEmpty(str7)) {
                fVar.g(str7);
            }
            if (!TextUtils.isEmpty(str8)) {
                fVar.h(str8);
            }
            ((b) this.f9677a).a(fVar, i10);
        }
    }
}
