package com.join.kotlin.ui.gameexpress.model;

import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotCommentBean;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotTopicBean;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressResultData;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressTheNewItem;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.e0;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.kwad.sdk.api.model.AdnName;
import com.sigmob.sdk.base.n;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001dH\u0002J\u0018\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001dH\u0002R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;", "", "<init>", "()V", "weekCn", "", "", "[Ljava/lang/String;", "engWeekFormat", "Ljava/text/SimpleDateFormat;", "parse", "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;", "data", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;", "pageBean", "Lcom/join/mgps/dto/ExtBean;", "buildListItems", "", "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;", "newGameList", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;", "applyTrackInfo", "", "game", "Lcom/join/mgps/dto/CommonGameInfoBean;", "item", "buildTitleItem", "Lcom/join/kotlin/ui/gameexpress/model/GameExpressTitleItem;", "timeMs", "", "chineseWeekday", "isSameCalendarDay", "", "aMs", "bMs", "isYesterdayOf", "dayMs", "nowMs", "ParsedResult", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameExpressMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressMapper.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1869#2:151\n1870#2:153\n1068#2:154\n1869#2,2:155\n1#3:152\n*S KotlinDebug\n*F\n+ 1 GameExpressMapper.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMapper\n*L\n32#1:151\n32#1:153\n50#1:154\n50#1:155,2\n*E\n"})
public final class GameExpressMapper {

    @NotNull
    public static final GameExpressMapper INSTANCE = new GameExpressMapper();

    @NotNull
    private static final String[] weekCn = {"", "周日", "周一", "周二", "周三", "周四", "周五", "周六"};

    @NotNull
    private static final SimpleDateFormat engWeekFormat = new SimpleDateFormat("EEE", Locale.US);

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J9\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;", "", "hotTopics", "", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;", "qualityComments", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;", "listItems", "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getHotTopics", "()Ljava/util/List;", "getQualityComments", "getListItems", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ParsedResult {

        @NotNull
        private final List<GameExpressHotTopicBean> hotTopics;

        @NotNull
        private final List<GameExpressMultiItem> listItems;

        @NotNull
        private final List<GameExpressHotCommentBean> qualityComments;

        public ParsedResult(@NotNull List<GameExpressHotTopicBean> hotTopics, @NotNull List<GameExpressHotCommentBean> qualityComments, @NotNull List<GameExpressMultiItem> listItems) {
            Intrinsics.checkNotNullParameter(hotTopics, "hotTopics");
            Intrinsics.checkNotNullParameter(qualityComments, "qualityComments");
            Intrinsics.checkNotNullParameter(listItems, "listItems");
            this.hotTopics = hotTopics;
            this.qualityComments = qualityComments;
            this.listItems = listItems;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ParsedResult copy$default(ParsedResult parsedResult, List list, List list2, List list3, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                list = parsedResult.hotTopics;
            }
            if ((i10 & 2) != 0) {
                list2 = parsedResult.qualityComments;
            }
            if ((i10 & 4) != 0) {
                list3 = parsedResult.listItems;
            }
            return parsedResult.copy(list, list2, list3);
        }

        @NotNull
        public final List<GameExpressHotTopicBean> component1() {
            return this.hotTopics;
        }

        @NotNull
        public final List<GameExpressHotCommentBean> component2() {
            return this.qualityComments;
        }

        @NotNull
        public final List<GameExpressMultiItem> component3() {
            return this.listItems;
        }

        @NotNull
        public final ParsedResult copy(@NotNull List<GameExpressHotTopicBean> hotTopics, @NotNull List<GameExpressHotCommentBean> qualityComments, @NotNull List<GameExpressMultiItem> listItems) {
            Intrinsics.checkNotNullParameter(hotTopics, "hotTopics");
            Intrinsics.checkNotNullParameter(qualityComments, "qualityComments");
            Intrinsics.checkNotNullParameter(listItems, "listItems");
            return new ParsedResult(hotTopics, qualityComments, listItems);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ParsedResult)) {
                return false;
            }
            ParsedResult parsedResult = (ParsedResult) other;
            return Intrinsics.areEqual(this.hotTopics, parsedResult.hotTopics) && Intrinsics.areEqual(this.qualityComments, parsedResult.qualityComments) && Intrinsics.areEqual(this.listItems, parsedResult.listItems);
        }

        @NotNull
        public final List<GameExpressHotTopicBean> getHotTopics() {
            return this.hotTopics;
        }

        @NotNull
        public final List<GameExpressMultiItem> getListItems() {
            return this.listItems;
        }

        @NotNull
        public final List<GameExpressHotCommentBean> getQualityComments() {
            return this.qualityComments;
        }

        public int hashCode() {
            return (((this.hotTopics.hashCode() * 31) + this.qualityComments.hashCode()) * 31) + this.listItems.hashCode();
        }

        @NotNull
        public String toString() {
            return "ParsedResult(hotTopics=" + this.hotTopics + ", qualityComments=" + this.qualityComments + ", listItems=" + this.listItems + ')';
        }
    }

    private GameExpressMapper() {
    }

    private final void applyTrackInfo(CommonGameInfoBean game, GameExpressTheNewItem item, ExtBean pageBean) {
        GInfoBean g_info = game.getG_info();
        String str = null;
        String id2 = g_info != null ? g_info.getId() : null;
        if (id2 == null) {
            id2 = "";
        }
        ExtBean typeCode = game.getExtBean().itemWithParent(pageBean).setResourceId(id2).setSopName("速递列表").setTypeCode("btnDown");
        if (item.isThe_new()) {
            str = "new";
        } else if (item.isThe_update()) {
            str = n.f79591r;
        }
        if (str == null || str.length() == 0) {
            return;
        }
        typeCode.setReMarks(str);
    }

    private final List<GameExpressMultiItem> buildListItems(List<? extends GameExpressTheNewItem> newGameList, ExtBean pageBean) {
        ArrayList arrayList = new ArrayList();
        String str = "";
        while (true) {
            boolean z10 = false;
            for (GameExpressTheNewItem gameExpressTheNewItem : CollectionsKt___CollectionsKt.sortedWith(newGameList, new Comparator() { // from class: com.join.kotlin.ui.gameexpress.model.GameExpressMapper$buildListItems$$inlined$sortedByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t10, T t11) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((GameExpressTheNewItem) t11).getTime()), Long.valueOf(((GameExpressTheNewItem) t10).getTime()));
                }
            })) {
                CommonGameInfoBean list = gameExpressTheNewItem.getList();
                if (list != null) {
                    GameExpressMapper gameExpressMapper = INSTANCE;
                    gameExpressMapper.applyTrackInfo(list, gameExpressTheNewItem, pageBean);
                    long time = gameExpressTheNewItem.getTime() * ((long) 1000);
                    String strE = e0.E(time);
                    if (!Intrinsics.areEqual(strE, str)) {
                        arrayList.add(new GameExpressMultiItem(1, gameExpressMapper.buildTitleItem(time), false, false, false, 28, null));
                        z10 = true;
                        str = strE;
                    }
                    if (z10) {
                        arrayList.add(new GameExpressMultiItem(2, list, gameExpressTheNewItem.isThe_new(), gameExpressTheNewItem.isThe_update(), false, 16, null));
                    } else {
                        arrayList.add(new GameExpressMultiItem(3, list, gameExpressTheNewItem.isThe_new(), gameExpressTheNewItem.isThe_update(), false, 16, null));
                    }
                }
            }
            return arrayList;
        }
    }

    private final GameExpressTitleItem buildTitleItem(long timeMs) {
        String strD;
        String strD2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (isSameCalendarDay(timeMs, jCurrentTimeMillis)) {
            strD = "今日速递";
        } else {
            strD = isYesterdayOf(timeMs, jCurrentTimeMillis) ? "昨天" : e0.D(timeMs, "MM.dd");
        }
        if (isSameCalendarDay(timeMs, jCurrentTimeMillis) || isYesterdayOf(timeMs, jCurrentTimeMillis)) {
            strD2 = e0.D(timeMs, "MM.dd");
        } else {
            String str = engWeekFormat.format(new Date(timeMs));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            strD2 = str.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(strD2, "toUpperCase(...)");
        }
        String strChineseWeekday = chineseWeekday(timeMs);
        Intrinsics.checkNotNull(strD);
        Intrinsics.checkNotNull(strD2);
        return new GameExpressTitleItem(strD, strD2, strChineseWeekday);
    }

    private final String chineseWeekday(long timeMs) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(timeMs);
        return weekCn[calendar.get(7)];
    }

    private final boolean isSameCalendarDay(long aMs, long bMs) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(aMs);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(bMs);
        return calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    private final boolean isYesterdayOf(long dayMs, long nowMs) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(nowMs);
        calendar.add(6, -1);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(dayMs);
        return calendar2.get(1) == calendar.get(1) && calendar2.get(6) == calendar.get(6);
    }

    @NotNull
    public final ParsedResult parse(@NotNull GameExpressResultData data, @NotNull ExtBean pageBean) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(pageBean, "pageBean");
        List<GameExpressTheNewItem> the_new_game_list = data.getThe_new_game_list();
        if (the_new_game_list == null) {
            the_new_game_list = CollectionsKt__CollectionsKt.emptyList();
        }
        Iterator<T> it2 = the_new_game_list.iterator();
        while (it2.hasNext()) {
            CommonGameInfoBean list = ((GameExpressTheNewItem) it2.next()).getList();
            if (list != null) {
                DlTaskManager.INSTANCE.updateDownloadTask(list);
            }
        }
        List<GameExpressHotTopicBean> game_hot_topic_list = data.getGame_hot_topic_list();
        if (game_hot_topic_list == null) {
            game_hot_topic_list = CollectionsKt__CollectionsKt.emptyList();
        }
        List<GameExpressHotCommentBean> hot_game_comment_list = data.getHot_game_comment_list();
        if (hot_game_comment_list == null) {
            hot_game_comment_list = CollectionsKt__CollectionsKt.emptyList();
        }
        return new ParsedResult(game_hot_topic_list, hot_game_comment_list, buildListItems(the_new_game_list, pageBean));
    }
}
