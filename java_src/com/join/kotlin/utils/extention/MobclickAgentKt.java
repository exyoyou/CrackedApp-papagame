package com.join.kotlin.utils.extention;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.constant.a;
import com.umeng.analytics.MobclickAgent;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a\u001c\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u001a.\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001\u001a\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002¨\u0006\n"}, d2 = {"getCustomEventParam", "", "", "context", "Landroid/content/Context;", "onEvent", "", NotificationCompat.CATEGORY_EVENT, "sub", "map", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMobclickAgent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MobclickAgent.kt\ncom/join/kotlin/utils/extention/MobclickAgentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"})
public final class MobclickAgentKt {
    private static final Map<String, String> getCustomEventParam(Context context) {
        String strB = a.b(context);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!(strB == null || strB.length() == 0)) {
            linkedHashMap.put("channelId", strB);
        }
        return linkedHashMap;
    }

    public static final void onEvent(@NotNull Context context, @NotNull String event, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(event, "event");
        Map mutableMap = MapsKt__MapsKt.toMutableMap(getCustomEventParam(context));
        if (str != null) {
            mutableMap.put("sub", str);
        }
        MobclickAgent.onEvent(context, event, (Map<String, String>) mutableMap);
    }

    public static /* synthetic */ void onEvent$default(Context context, String str, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        onEvent(context, str, str2);
    }

    public static /* synthetic */ void onEvent$default(Context context, String str, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = null;
        }
        onEvent(context, str, (Map<String, String>) map);
    }

    public static final void onEvent(@NotNull Context context, @NotNull String event, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(event, "event");
        Map mutableMap = MapsKt__MapsKt.toMutableMap(getCustomEventParam(context));
        if (map != null) {
            mutableMap.putAll(map);
        }
        MobclickAgent.onEvent(context, event, (Map<String, String>) mutableMap);
    }

    public static final void onEvent(@NotNull Context context, @NotNull String event) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(event, "event");
        MobclickAgent.onEvent(context, event, (Map<String, String>) MapsKt__MapsKt.toMutableMap(getCustomEventParam(context)));
    }
}
