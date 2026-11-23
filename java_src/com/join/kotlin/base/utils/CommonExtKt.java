package com.join.kotlin.base.utils;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import com.join.kotlin.base.ext.SystemServiceExtKt;
import com.join.kotlin.base.utils.CommonExtKt;
import com.join.kotlin.base.view.ViewExtKt;
import com.join.mgps.activity.posting.PostingActivity_;
import com.kuaishou.weapon.p0.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aC\u0010\u0007\u001a\u00020\b\"\u0006\b\u0000\u0010\t\u0018\u0001*\u0004\u0018\u0001H\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\b0\u000b2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\rH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a\u0012\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001\u001a\u0012\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0001\u001a\u0012\u0010\u000f\u001a\u00020\u0001*\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0001\u001a\u0012\u0010\u0011\u001a\u00020\u0001*\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0001\u001a\u001c\u0010\u0014\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u001a\u0012\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0016\u001a7\u0010\u001b\u001a\u00020\b2\u0016\u0010\u001c\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u001d\"\u0004\u0018\u00010\u00132\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0002\u0010\u001f\u001aA\u0010 \u001a\u00020\b2\u0016\u0010\u001c\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00130\u001d\"\u0004\u0018\u00010\u00132\b\b\u0002\u0010!\u001a\u00020\"2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0002\u0010#\u001a\u0014\u0010$\u001a\u00020%*\u00020\u00162\b\b\u0002\u0010&\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006'"}, d2 = {"screenWidth", "", "Landroid/content/Context;", "getScreenWidth", "(Landroid/content/Context;)I", "screenHeight", "getScreenHeight", "notNull", "", "T", "notNullAction", "Lkotlin/Function1;", "nullAction", "Lkotlin/Function0;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "dp2px", t.f74892q, "px2dp", "px", "Landroid/view/View;", "copyToClipboard", "text", "", PostingActivity_.LABEL_EXTRA, "checkAccessibilityServiceEnabled", "", "serviceName", "setOnclick", "views", "", "onClick", "([Landroid/view/View;Lkotlin/jvm/functions/Function1;)V", "setOnclickNoRepeat", "interval", "", "([Landroid/view/View;JLkotlin/jvm/functions/Function1;)V", "toHtml", "Landroid/text/Spanned;", "flag", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommonExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,142:1\n13472#2,2:143\n13472#2,2:145\n*S KotlinDebug\n*F\n+ 1 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n112#1:143,2\n126#1:145,2\n*E\n"})
public final class CommonExtKt {
    public static final boolean checkAccessibilityServiceEnabled(@NotNull Context context, @NotNull String serviceName) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(serviceName, "serviceName");
        Settings.Secure.getString(context.getApplicationContext().getContentResolver(), "enabled_accessibility_services");
        TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(':');
        while (simpleStringSplitter.hasNext()) {
            if (StringsKt__StringsJVMKt.equals(simpleStringSplitter.next(), serviceName, true)) {
                return true;
            }
        }
        return false;
    }

    public static final void copyToClipboard(@NotNull Context context, @NotNull String text, @NotNull String label) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(label, "label");
        ClipData clipDataNewPlainText = ClipData.newPlainText(label, text);
        ClipboardManager clipboardManager = SystemServiceExtKt.getClipboardManager(context);
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(clipDataNewPlainText);
        }
    }

    public static /* synthetic */ void copyToClipboard$default(Context context, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "悟饭游戏";
        }
        copyToClipboard(context, str, str2);
    }

    public static final int dp2px(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (int) ((i10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static final int getScreenHeight(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static final int getScreenWidth(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static final /* synthetic */ <T> void notNull(T t10, Function1<? super T, Unit> notNullAction, Function0<Unit> nullAction) {
        Intrinsics.checkNotNullParameter(notNullAction, "notNullAction");
        Intrinsics.checkNotNullParameter(nullAction, "nullAction");
        if (t10 != null) {
            notNullAction.invoke(t10);
        } else {
            nullAction.invoke();
        }
    }

    public static /* synthetic */ void notNull$default(Object obj, Function1 notNullAction, Function0 nullAction, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            nullAction = new Function0<Unit>() { // from class: com.join.kotlin.base.utils.CommonExtKt.notNull.1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        Intrinsics.checkNotNullParameter(notNullAction, "notNullAction");
        Intrinsics.checkNotNullParameter(nullAction, "nullAction");
        if (obj != null) {
            notNullAction.invoke(obj);
        } else {
            nullAction.invoke();
        }
    }

    public static final int px2dp(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (int) ((i10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static final void setOnclick(@NotNull View[] views, @NotNull final Function1<? super View, Unit> onClick) {
        Intrinsics.checkNotNullParameter(views, "views");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        for (View view : views) {
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: w5.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        CommonExtKt.setOnclick$lambda$1$lambda$0(onClick, view2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setOnclick$lambda$1$lambda$0(Function1 function1, View view) {
        Intrinsics.checkNotNull(view);
        function1.invoke(view);
    }

    public static final void setOnclickNoRepeat(@NotNull View[] views, long j10, @NotNull final Function1<? super View, Unit> onClick) {
        Intrinsics.checkNotNullParameter(views, "views");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        for (View view : views) {
            if (view != null) {
                ViewExtKt.clickNoRepeat(view, j10, new Function1() { // from class: w5.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return CommonExtKt.setOnclickNoRepeat$lambda$3$lambda$2(onClick, (View) obj);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void setOnclickNoRepeat$default(View[] viewArr, long j10, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 500;
        }
        setOnclickNoRepeat(viewArr, j10, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setOnclickNoRepeat$lambda$3$lambda$2(Function1 function1, View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        function1.invoke(view);
        return Unit.INSTANCE;
    }

    @NotNull
    public static final Spanned toHtml(@NotNull String str, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (Build.VERSION.SDK_INT >= 24) {
            Spanned spannedFromHtml = Html.fromHtml(str, i10);
            Intrinsics.checkNotNull(spannedFromHtml);
            return spannedFromHtml;
        }
        Spanned spannedFromHtml2 = Html.fromHtml(str);
        Intrinsics.checkNotNull(spannedFromHtml2);
        return spannedFromHtml2;
    }

    public static /* synthetic */ Spanned toHtml$default(String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return toHtml(str, i10);
    }

    public static final int dp2px(@NotNull View view, int i10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return (int) ((i10 * view.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static final int px2dp(@NotNull View view, int i10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return (int) ((i10 / view.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
