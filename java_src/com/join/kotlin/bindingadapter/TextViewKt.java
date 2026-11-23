package com.join.kotlin.bindingadapter;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.databinding.BindingAdapter;
import com.join.mgps.Util.r0;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a(\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0007¨\u0006\b"}, d2 = {"setTagText", "", "textView", "Landroid/widget/TextView;", "tagName", "", "tagName2", "message", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class TextViewKt {
    @BindingAdapter(requireAll = false, value = {"tagName", "tagName2", "message"})
    public static final void setTagText(@NotNull TextView textView, @NotNull String tagName, @NotNull String tagName2, @NotNull String message) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Intrinsics.checkNotNullParameter(tagName, "tagName");
        Intrinsics.checkNotNullParameter(tagName2, "tagName2");
        Intrinsics.checkNotNullParameter(message, "message");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayList arrayList = new ArrayList();
        if (!(tagName.length() == 0)) {
            ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
            tagInfo.setName(tagName);
            tagInfo.setColor("#FF372F");
            tagInfo.setFont_color("#ffffff");
            arrayList.add(tagInfo);
        }
        if (!(tagName2.length() == 0)) {
            ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
            tagInfo2.setName(tagName2);
            tagInfo2.setColor("#0570FF");
            tagInfo2.setFont_color("#ffffff");
            arrayList.add(tagInfo2);
        }
        r0.e(textView.getContext(), spannableStringBuilder, arrayList);
        if (TextUtils.isEmpty(message)) {
            message = "";
        }
        spannableStringBuilder.append((CharSequence) message);
        textView.setText(spannableStringBuilder);
    }
}
