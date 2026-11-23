package com.join.kotlin.ui.legendgame.data;

import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\b\u0010\r\u001a\u0004\u0018\u00010\u000bJ\b\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;", "<init>", "()V", "game_info", "Lcom/join/mgps/dto/CommonGameInfoBean;", "getGame_info", "()Lcom/join/mgps/dto/CommonGameInfoBean;", "setGame_info", "(Lcom/join/mgps/dto/CommonGameInfoBean;)V", "resolveCoverUrl", "", "resolveVideoUrl", "resolveBannerUrl", "resolveTitle", "resolveDesc", "resolveIcon", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendGameHeaderData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameHeaderData.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameHeaderData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"})
public final class LegendGameHeaderData extends LegendZoneGameItem {

    @Nullable
    private CommonGameInfoBean game_info;

    @Nullable
    public final CommonGameInfoBean getGame_info() {
        return this.game_info;
    }

    @Nullable
    public final String resolveBannerUrl() {
        return resolveCoverUrl();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0026  */
    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    @Nullable
    public final String resolveCoverUrl() {
        CommonGameInfoBean commonGameInfoBean;
        CommonGameInfoBean commonGameInfoBean2;
        String image_url = getImage_url();
        if (image_url == null) {
            commonGameInfoBean = this.game_info;
            if (commonGameInfoBean != null || (image_url = commonGameInfoBean.getBig_pic()) == null || !(!StringsKt__StringsKt.isBlank(image_url))) {
                image_url = null;
            }
            if (image_url == null && ((commonGameInfoBean2 = this.game_info) == null || (image_url = commonGameInfoBean2.getCoverPicUrl()) == null || !(!StringsKt__StringsKt.isBlank(image_url)))) {
                return null;
            }
        } else {
            if (!(!StringsKt__StringsKt.isBlank(image_url))) {
                image_url = null;
            }
            if (image_url == null) {
                commonGameInfoBean = this.game_info;
                if (commonGameInfoBean != null) {
                    image_url = null;
                } else {
                    image_url = null;
                }
                if (image_url == null) {
                    return null;
                }
            }
        }
        return image_url;
    }

    @Nullable
    public final String resolveDesc() {
        GInfoBean g_info;
        CommonGameInfoBean commonGameInfoBean = this.game_info;
        if (commonGameInfoBean == null || (g_info = commonGameInfoBean.getG_info()) == null) {
            return null;
        }
        return g_info.getInfo();
    }

    @Nullable
    public final String resolveIcon() {
        GInfoBean g_info;
        CommonGameInfoBean commonGameInfoBean = this.game_info;
        if (commonGameInfoBean == null || (g_info = commonGameInfoBean.getG_info()) == null) {
            return null;
        }
        return g_info.getIco();
    }

    @Nullable
    public final String resolveTitle() {
        GInfoBean g_info;
        String showName;
        CommonGameInfoBean commonGameInfoBean = this.game_info;
        if (commonGameInfoBean != null && (showName = commonGameInfoBean.getShowName()) != null) {
            if (!(!StringsKt__StringsKt.isBlank(showName))) {
                showName = null;
            }
            if (showName != null) {
                return showName;
            }
        }
        CommonGameInfoBean commonGameInfoBean2 = this.game_info;
        if (commonGameInfoBean2 == null || (g_info = commonGameInfoBean2.getG_info()) == null) {
            return null;
        }
        return g_info.getName();
    }

    @Nullable
    public final String resolveVideoUrl() {
        String v_url;
        CommonGameInfoBean commonGameInfoBean = this.game_info;
        if (commonGameInfoBean == null || (v_url = commonGameInfoBean.getV_url()) == null || !(!StringsKt__StringsKt.isBlank(v_url))) {
            return null;
        }
        return v_url;
    }

    public final void setGame_info(@Nullable CommonGameInfoBean commonGameInfoBean) {
        this.game_info = commonGameInfoBean;
    }
}
