package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u001a,\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0000\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a\u001f\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"loadUrl", "", "simpleDraweeView", "Lcom/facebook/drawee/view/SimpleDraweeView;", "", "loadGif", "defaultId", "", "loadResId", "(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/Integer;)V", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class SimpleDrawableViewKt {
    @BindingAdapter(requireAll = false, value = {"loadResId"})
    public static final void loadResId(@NotNull SimpleDraweeView simpleDraweeView, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "simpleDraweeView");
        if (num != null) {
            num.intValue();
            if (num.intValue() != 0) {
                simpleDraweeView.setActualImageResource(num.intValue());
            }
        }
    }

    @BindingAdapter(requireAll = false, value = {"loadUrl", "loadGif", "defaultId"})
    public static final void loadUrl(@NotNull SimpleDraweeView simpleDraweeView, @Nullable String str, @Nullable String str2, int i10) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "simpleDraweeView");
        if (!(str2 == null || str2.length() == 0)) {
            l.o(simpleDraweeView, str2);
        } else if (i10 == 0) {
            l.q(simpleDraweeView, str, simpleDraweeView.getHierarchy().m());
        } else {
            l.r(simpleDraweeView, str, simpleDraweeView.getHierarchy().m(), i10);
        }
    }
}
