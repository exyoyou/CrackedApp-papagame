package com.join.mgps.Util;

import com.MApplication;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.dto.TipBean;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final d1 f49541a = new d1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final String f49542b = "com.zjrx.gamestore";

    private d1() {
    }

    @JvmStatic
    public static final boolean a(@Nullable List<? extends TipBean> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        Iterator<? extends TipBean> it2 = list.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual("134", it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    @JvmStatic
    public static final void b() {
        APKUtils.b bVar = APKUtils.f34739a;
        MApplication instance = MApplication.f3182z;
        Intrinsics.checkNotNullExpressionValue(instance, "instance");
        bVar.W(instance, f49542b, true);
    }

    @JvmStatic
    public static final boolean c() {
        APKUtils.b bVar = APKUtils.f34739a;
        MApplication instance = MApplication.f3182z;
        Intrinsics.checkNotNullExpressionValue(instance, "instance");
        return bVar.A(instance, f49542b);
    }
}
