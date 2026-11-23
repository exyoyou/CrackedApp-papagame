package com.join.kotlin.ui.legendgame.data;

import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ(\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J \u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J \u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J \u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\u0012\u0010\u001f\u001a\u00020 2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005J\u0006\u0010!\u001a\u00020 J\u000e\u0010\"\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u0005J\u001c\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050$2\u0006\u0010%\u001a\u00020&H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendGameListMapper;", "", "<init>", "()V", "SOP_RECOMMEND", "", "SOP_LATEST_SERVER", "SOP_BRAND", "SOP_SERVER_REMIND", "mapHeader", "Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;", "recommend", "Lcom/join/kotlin/ui/legendgame/data/LegendRecommendItem;", "buildList", "Ljava/util/ArrayList;", "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;", "Lkotlin/collections/ArrayList;", "tabId", "", "data", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;", "buildRecommendList", "buildBrandList", "gameItem", "game", "Lcom/join/mgps/dto/CommonGameInfoBean;", "zoneItem", "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;", "processGame", "sopName", "typeCode", "legendTrackExtBean", "Lcom/join/mgps/dto/ExtBean;", "legendPageExpExtBean", "legendModuleExpExtBean", "formatOpenTime", "Lkotlin/Pair;", "openTimeSec", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendGameListMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameListMapper.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameListMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1869#2,2:169\n1869#2:171\n1869#2,2:172\n1870#2:174\n1869#2,2:175\n1#3:177\n*S KotlinDebug\n*F\n+ 1 LegendGameListMapper.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameListMapper\n*L\n44#1:169,2\n55#1:171\n63#1:172,2\n55#1:174\n80#1:175,2\n*E\n"})
public final class LegendGameListMapper {

    @NotNull
    public static final LegendGameListMapper INSTANCE = new LegendGameListMapper();

    @NotNull
    public static final String SOP_BRAND = "品牌大服";

    @NotNull
    public static final String SOP_LATEST_SERVER = "最新开服";

    @NotNull
    public static final String SOP_RECOMMEND = "爽服推荐";

    @NotNull
    public static final String SOP_SERVER_REMIND = "开服提醒";

    private LegendGameListMapper() {
    }

    private final ArrayList<LegendGameMultiItem> buildBrandList(LegendZoneResultData data) {
        ArrayList<LegendGameMultiItem> arrayList = new ArrayList<>();
        List<LegendBrandServerItem> brand_server_list = data.getBrand_server_list();
        if (brand_server_list == null) {
            brand_server_list = CollectionsKt__CollectionsKt.emptyList();
        }
        for (LegendBrandServerItem legendBrandServerItem : brand_server_list) {
            CommonGameInfoBean game_info = legendBrandServerItem.getGame_info();
            if (game_info != null) {
                LegendGameListMapper legendGameListMapper = INSTANCE;
                arrayList.add(legendGameListMapper.gameItem(legendGameListMapper.processGame(game_info, SOP_BRAND, "btnDown"), 1, legendBrandServerItem));
            }
        }
        return arrayList;
    }

    private final ArrayList<LegendGameMultiItem> buildRecommendList(LegendZoneResultData data) {
        ArrayList<LegendGameMultiItem> arrayList = new ArrayList<>();
        List<LegendRecommendItem> recommend_list = data.getRecommend_list();
        if (recommend_list == null) {
            recommend_list = CollectionsKt__CollectionsKt.emptyList();
        }
        for (LegendRecommendItem legendRecommendItem : CollectionsKt___CollectionsKt.drop(recommend_list, 1)) {
            CommonGameInfoBean game_info = legendRecommendItem.getGame_info();
            if (game_info != null) {
                LegendGameListMapper legendGameListMapper = INSTANCE;
                arrayList.add(legendGameListMapper.gameItem(legendGameListMapper.processGame(game_info, SOP_RECOMMEND, "topic"), 0, legendRecommendItem));
            }
        }
        List<LegendLatestServerGroup> latest_server_list = data.getLatest_server_list();
        if (latest_server_list == null) {
            latest_server_list = CollectionsKt__CollectionsKt.emptyList();
        }
        for (LegendLatestServerGroup legendLatestServerGroup : latest_server_list) {
            Pair<String, String> openTime = INSTANCE.formatOpenTime(legendLatestServerGroup.getOpen_time());
            arrayList.add(new LegendGameMultiItem(3, new LegendGameServerOpenData(openTime.component1(), openTime.component2()), null, null, null, 28, null));
            List<LegendLatestServerItem> list = legendLatestServerGroup.getList();
            if (list == null) {
                list = CollectionsKt__CollectionsKt.emptyList();
            }
            for (LegendLatestServerItem legendLatestServerItem : list) {
                CommonGameInfoBean game_info2 = legendLatestServerItem.getGame_info();
                if (game_info2 != null) {
                    LegendGameListMapper legendGameListMapper2 = INSTANCE;
                    arrayList.add(legendGameListMapper2.gameItem(legendGameListMapper2.processGame(game_info2, SOP_LATEST_SERVER, "topic"), 0, legendLatestServerItem));
                }
            }
        }
        return arrayList;
    }

    private final Pair<String, String> formatOpenTime(long openTimeSec) {
        if (openTimeSec <= 0) {
            return TuplesKt.to("今日开服", "");
        }
        Calendar calendar = Calendar.getInstance();
        long j10 = openTimeSec * ((long) 1000);
        calendar.setTimeInMillis(j10);
        Calendar calendar2 = Calendar.getInstance();
        return TuplesKt.to((calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) ? "今日开服" : new SimpleDateFormat("MM月dd日", Locale.getDefault()).format(new Date(j10)), new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date(j10)));
    }

    private final LegendGameMultiItem gameItem(CommonGameInfoBean game, int tabId, LegendZoneGameItem zoneItem) {
        int i10 = tabId == 0 ? 1 : 2;
        List<String> listResolveCustomTags = LegendZoneGameItemKt.resolveCustomTags(zoneItem);
        List<String> list = true ^ listResolveCustomTags.isEmpty() ? listResolveCustomTags : null;
        LegendLatestServerItem legendLatestServerItem = zoneItem instanceof LegendLatestServerItem ? (LegendLatestServerItem) zoneItem : null;
        return new LegendGameMultiItem(i10, game, (tabId != 0 || zoneItem.getDetail_id() <= 0) ? null : new LegendGameBespeakUiState(true, zoneItem.is_reminded, zoneItem.is_follow, zoneItem.getDetail_id()), list, legendLatestServerItem != null ? LegendLatestServerItemKt.formatServerInfo(legendLatestServerItem) : null);
    }

    public static /* synthetic */ ExtBean legendTrackExtBean$default(LegendGameListMapper legendGameListMapper, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        return legendGameListMapper.legendTrackExtBean(str);
    }

    private final CommonGameInfoBean processGame(CommonGameInfoBean game, String sopName, String typeCode) {
        ExtBean extBeanItemWithParent = game.getExtBean().itemWithParent(legendTrackExtBean(sopName));
        GInfoBean g_info = game.getG_info();
        extBeanItemWithParent.setResourceId(g_info != null ? g_info.getId() : null).setSopName(sopName).setTypeCode(typeCode);
        DlTaskManager.INSTANCE.updateDownloadTask(game);
        return game;
    }

    @NotNull
    public final ArrayList<LegendGameMultiItem> buildList(int tabId, @Nullable LegendZoneResultData data) {
        if (data == null) {
            return new ArrayList<>();
        }
        if (tabId != 0) {
            return tabId != 1 ? new ArrayList<>() : buildBrandList(data);
        }
        return buildRecommendList(data);
    }

    @NotNull
    public final ExtBean legendModuleExpExtBean(@NotNull String sopName) {
        Intrinsics.checkNotNullParameter(sopName, "sopName");
        ExtBean typeCode = legendTrackExtBean(sopName).setTypeCode("topic");
        Intrinsics.checkNotNullExpressionValue(typeCode, "setTypeCode(...)");
        return typeCode;
    }

    @NotNull
    public final ExtBean legendPageExpExtBean() {
        ExtBean typeCode = legendTrackExtBean$default(this, null, 1, null).setTypeCode("page");
        Intrinsics.checkNotNullExpressionValue(typeCode, "setTypeCode(...)");
        return typeCode;
    }

    @NotNull
    public final ExtBean legendTrackExtBean(@Nullable String sopName) {
        ExtBean secondModule = new ExtBean().setFirstModule("home").setSecondModule("legend");
        if (!(sopName == null || sopName.length() == 0)) {
            secondModule.setSopName(sopName);
        }
        Intrinsics.checkNotNull(secondModule);
        return secondModule;
    }

    @Nullable
    public final LegendGameHeaderData mapHeader(@Nullable LegendRecommendItem recommend) {
        CommonGameInfoBean game_info;
        if (recommend == null || (game_info = recommend.getGame_info()) == null || game_info.getG_info() == null) {
            return null;
        }
        LegendGameHeaderData legendGameHeaderData = new LegendGameHeaderData();
        legendGameHeaderData.setTitle(recommend.getTitle());
        legendGameHeaderData.setGame_version(recommend.getGame_version());
        legendGameHeaderData.setCareer_type(recommend.getCareer_type());
        legendGameHeaderData.setMain_gameplay(recommend.getMain_gameplay());
        legendGameHeaderData.setRhythm_style(recommend.getRhythm_style());
        legendGameHeaderData.setImage_url(recommend.getImage_url());
        legendGameHeaderData.setGame_info(INSTANCE.processGame(game_info, SOP_RECOMMEND, "topic"));
        return legendGameHeaderData;
    }
}
