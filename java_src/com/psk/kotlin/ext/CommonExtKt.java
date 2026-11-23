package com.psk.kotlin.ext;

import android.content.Context;
import android.view.View;
import com.alipay.sdk.packet.d;
import com.join.mgps.Util.a3;
import com.papa.controller.component.bluetooth.spp.c;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, d2 = {"onClick", "", "Landroid/view/View;", d.f7195s, "Lkotlin/Function0;", c.f76484o, "Landroid/content/Context;", "message", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CommonExtKt {
    public static final void onClick(@NotNull View view, @NotNull final Function0<Unit> method) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(method, "method");
        view.setOnClickListener(new View.OnClickListener() { // from class: a8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                method.invoke();
            }
        });
    }

    public static final void toast(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (str == null) {
            return;
        }
        a3.b(context).d(str);
    }
}
