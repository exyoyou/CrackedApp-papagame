package com.join.kotlin.domain.ext;

import android.content.Context;
import androidx.fragment.app.DialogFragment;
import com.alipay.sdk.authjs.a;
import com.join.android.app.common.utils.m;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.a3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004\u001a\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"checkHasLogin", "", "Landroid/content/Context;", a.f7128m, "Lkotlin/Function0;", "checkHasNetWork", "dialogFragmentCanShow", "", "dialogFragment", "Landroidx/fragment/app/DialogFragment;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class EXTKt {
    public static final void checkHasLogin(@NotNull Context context, @NotNull Function0<Unit> func) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(func, "func");
        if (IntentUtil.getInstance().goLogin(context)) {
            return;
        }
        func.invoke();
    }

    public static final void checkHasNetWork(@NotNull Context context, @NotNull Function0<Unit> func) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(func, "func");
        if (m.j(context)) {
            func.invoke();
        } else {
            a3.b(context).d("请检查网络！");
        }
    }

    public static final boolean dialogFragmentCanShow(@NotNull DialogFragment dialogFragment) {
        Intrinsics.checkNotNullParameter(dialogFragment, "dialogFragment");
        return (dialogFragment.isAdded() || dialogFragment.isVisible() || dialogFragment.isRemoving()) ? false : true;
    }
}
