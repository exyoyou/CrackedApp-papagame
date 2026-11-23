package com.join.kotlin.ui.legendgame.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"formatServerInfo", "", "Lcom/join/kotlin/ui/legendgame/data/LegendLatestServerItem;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendLatestServerItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendLatestServerItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendLatestServerItemKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,16:1\n1#2:17\n*E\n"})
public final class LegendLatestServerItemKt {
    @Nullable
    public static final String formatServerInfo(@NotNull LegendLatestServerItem legendLatestServerItem) {
        Intrinsics.checkNotNullParameter(legendLatestServerItem, "<this>");
        String server_name = legendLatestServerItem.getServer_name();
        if (server_name != null) {
            if (!(!StringsKt__StringsKt.isBlank(server_name))) {
                server_name = null;
            }
            if (server_name == null || legendLatestServerItem.getServer_num() <= 0) {
                return null;
            }
            return legendLatestServerItem.getServer_num() + "服 " + server_name;
        }
        return null;
    }
}
