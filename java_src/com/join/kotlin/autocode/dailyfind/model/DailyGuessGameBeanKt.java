package com.join.kotlin.autocode.dailyfind.model;

import com.join.mgps.dto.CollectionBeanSub;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"guessLikeKey", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDailyGuessGameBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyGuessGameBean.kt\ncom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBeanKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"})
public final class DailyGuessGameBeanKt {
    /* JADX WARN: Code duplicated, block: B:13:0x0025 A[PHI: r0
      0x0025: PHI (r0v5 java.lang.String) = (r0v2 java.lang.String), (r0v6 java.lang.String) binds: [B:12:0x0023, B:8:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    @NotNull
    public static final String guessLikeKey(@NotNull CollectionBeanSub collectionBeanSub) {
        Intrinsics.checkNotNullParameter(collectionBeanSub, "<this>");
        String game_id = collectionBeanSub.getGame_id();
        boolean z10 = true;
        String str = null;
        if (game_id == null) {
            game_id = collectionBeanSub.getCrc_sign_id();
            if (game_id != null && (!StringsKt__StringsKt.isBlank(game_id))) {
                str = game_id;
            }
        } else {
            if (!(!StringsKt__StringsKt.isBlank(game_id))) {
                game_id = null;
            }
            if (game_id == null) {
                game_id = collectionBeanSub.getCrc_sign_id();
                if (game_id != null) {
                    str = game_id;
                }
            } else {
                str = game_id;
            }
        }
        if (str != null && !StringsKt__StringsKt.isBlank(str)) {
            z10 = false;
        }
        if (!z10) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        String ico_remote = collectionBeanSub.getIco_remote();
        if (ico_remote == null) {
            ico_remote = "";
        }
        sb2.append(ico_remote);
        sb2.append('|');
        String game_name = collectionBeanSub.getGame_name();
        sb2.append(game_name != null ? game_name : "");
        return sb2.toString();
    }
}
