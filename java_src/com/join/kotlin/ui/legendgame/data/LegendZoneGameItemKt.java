package com.join.kotlin.ui.legendgame.data;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u0002¨\u0006\u0006"}, d2 = {"hasCustomTags", "", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;", "resolveCustomTags", "", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendZoneGameItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendZoneGameItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendZoneGameItemKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"})
public final class LegendZoneGameItemKt {
    public static final boolean hasCustomTags(@NotNull LegendZoneGameItem legendZoneGameItem) {
        Intrinsics.checkNotNullParameter(legendZoneGameItem, "<this>");
        String game_version = legendZoneGameItem.getGame_version();
        if (game_version == null || StringsKt__StringsKt.isBlank(game_version)) {
            String career_type = legendZoneGameItem.getCareer_type();
            if (career_type == null || StringsKt__StringsKt.isBlank(career_type)) {
                String main_gameplay = legendZoneGameItem.getMain_gameplay();
                if (main_gameplay == null || StringsKt__StringsKt.isBlank(main_gameplay)) {
                    String rhythm_style = legendZoneGameItem.getRhythm_style();
                    if (rhythm_style == null || StringsKt__StringsKt.isBlank(rhythm_style)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @NotNull
    public static final List<String> resolveCustomTags(@NotNull LegendZoneGameItem legendZoneGameItem) {
        Intrinsics.checkNotNullParameter(legendZoneGameItem, "<this>");
        String[] strArr = new String[4];
        String game_version = legendZoneGameItem.getGame_version();
        String str = null;
        if (game_version == null || !(!StringsKt__StringsKt.isBlank(game_version))) {
            game_version = null;
        }
        strArr[0] = game_version;
        String career_type = legendZoneGameItem.getCareer_type();
        if (career_type == null || !(!StringsKt__StringsKt.isBlank(career_type))) {
            career_type = null;
        }
        strArr[1] = career_type;
        String main_gameplay = legendZoneGameItem.getMain_gameplay();
        if (main_gameplay == null || !(!StringsKt__StringsKt.isBlank(main_gameplay))) {
            main_gameplay = null;
        }
        strArr[2] = main_gameplay;
        String rhythm_style = legendZoneGameItem.getRhythm_style();
        if (rhythm_style != null && (!StringsKt__StringsKt.isBlank(rhythm_style))) {
            str = rhythm_style;
        }
        strArr[3] = str;
        return CollectionsKt__CollectionsKt.listOfNotNull((Object[]) strArr);
    }
}
