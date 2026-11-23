package com.switfpass.pay.utils;

import android.content.Context;
import android.content.DialogInterface;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class s0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ List f82842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Context f82843c;

    s0(List list, Context context) {
        this.f82842b = list;
        this.f82843c = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        if (((g) this.f82842b.get(i10)).c() != 0) {
            ((g) this.f82842b.get(i10)).f82796d.startActivityForResult(((g) this.f82842b.get(i10)).f82794b, ((g) this.f82842b.get(i10)).c());
        } else {
            this.f82843c.startActivity(((g) this.f82842b.get(i10)).f82794b);
        }
    }
}
