package com.join.kotlin.utils.extention;

import android.net.Uri;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003¨\u0006\u0004"}, d2 = {"addUrlParams", "", "params", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 String.kt\ncom/join/kotlin/utils/extention/StringKt\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,14:1\n29#2:15\n216#3,2:16\n*S KotlinDebug\n*F\n+ 1 String.kt\ncom/join/kotlin/utils/extention/StringKt\n*L\n7#1:15\n8#1:16,2\n*E\n"})
public final class StringKt {
    @NotNull
    public static final String addUrlParams(@NotNull String str, @NotNull Map<String, String> params) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(params, "params");
        if (params.isEmpty()) {
            return str;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry<String, String> entry : params.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (value != null) {
                builderBuildUpon.appendQueryParameter(key, value);
            }
        }
        String string = builderBuildUpon.build().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
