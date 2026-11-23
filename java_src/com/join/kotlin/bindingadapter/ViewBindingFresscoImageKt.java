package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, d2 = {"simpleDraweeViewBinding", "", "simpleDraweeView", "Lcom/facebook/drawee/view/SimpleDraweeView;", "imageUrl", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewBindingFresscoImageKt {
    @BindingAdapter(requireAll = false, value = {"loadImage"})
    public static final void simpleDraweeViewBinding(@NotNull SimpleDraweeView simpleDraweeView, @NotNull String imageUrl) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "simpleDraweeView");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        l.d(simpleDraweeView, R.drawable.main_normal_icon, imageUrl);
    }
}
