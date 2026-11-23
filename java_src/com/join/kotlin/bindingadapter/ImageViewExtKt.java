package com.join.kotlin.bindingadapter;

import android.net.Uri;
import android.widget.ImageView;
import androidx.databinding.BindingAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007¨\u0006\u0006"}, d2 = {"loadUri", "", "imageView", "Landroid/widget/ImageView;", "loadUrl", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ImageViewExtKt {
    @BindingAdapter(requireAll = false, value = {"loadUri"})
    public static final void loadUri(@NotNull ImageView imageView, @Nullable String str) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        imageView.setImageURI(Uri.parse(str));
    }
}
