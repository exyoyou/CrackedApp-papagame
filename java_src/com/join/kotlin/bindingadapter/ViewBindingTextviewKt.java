package com.join.kotlin.bindingadapter;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;
import androidx.databinding.BindingAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007\u001a\u0018\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\bH\u0007\u001a\u001c\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0007¨\u0006\u000b"}, d2 = {"textViewBinding", "", "textView", "Landroid/widget/TextView;", "text", "", "textViewColorBinding", "textColor", "", "textViewBackgroundBinding", "resId", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nViewBindingTextview.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewBindingTextview.kt\ncom/join/kotlin/bindingadapter/ViewBindingTextviewKt\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,63:1\n29#2,6:64\n*S KotlinDebug\n*F\n+ 1 ViewBindingTextview.kt\ncom/join/kotlin/bindingadapter/ViewBindingTextviewKt\n*L\n54#1:64,6\n*E\n"})
public final class ViewBindingTextviewKt {
    @BindingAdapter(requireAll = false, value = {"backgroundResId"})
    public static final void textViewBackgroundBinding(@NotNull TextView textView, int i10) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.setBackgroundResource(i10);
    }

    @BindingAdapter(requireAll = false, value = {"setTextForBlood"})
    public static final void textViewBinding(@NotNull TextView textView, @NotNull String text) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Intrinsics.checkNotNullParameter(text, "text");
        if (!StringsKt__StringsKt.contains$default((CharSequence) text, (CharSequence) "《", false, 2, (Object) null)) {
            textView.setText(text);
            return;
        }
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(text, "《", " ", false, 4, (Object) null), "》", " ", false, 4, (Object) null);
        SpannableString spannableString = new SpannableString(strReplace$default);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#303030")), StringsKt__StringsKt.indexOf$default((CharSequence) text, (char) 12298, 0, false, 6, (Object) null), strReplace$default.length(), 33);
        textView.setText(spannableString);
    }

    @BindingAdapter(requireAll = false, value = {"textColor"})
    public static final void textViewColorBinding(@NotNull TextView textView, int i10) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.setTextColor(i10);
    }

    public static /* synthetic */ void textViewColorBinding$default(TextView textView, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "#000000";
        }
        textViewColorBinding(textView, str);
    }

    @BindingAdapter(requireAll = false, value = {"textColorStr"})
    public static final void textViewColorBinding(@NotNull TextView textView, @Nullable String str) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        try {
            if (str != null) {
                textView.setTextColor(Color.parseColor(str));
            } else {
                textView.setTextColor(Color.parseColor("#000000"));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
