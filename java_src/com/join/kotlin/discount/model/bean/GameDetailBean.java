package com.join.kotlin.discount.model.bean;

import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DownloadPointBase;
import com.join.mgps.dto.SearchHistoryBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\bH\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B·\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0012\b\u0002\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u0014\u0012\u0012\b\u0002\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0012\b\u0002\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u0014\u0012\u0012\b\u0002\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u0014\u0012\u0012\b\u0002\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b%\u0010&J\u0006\u0010f\u001a\u00020gJ\u0006\u0010h\u001a\u00020gJ\u0006\u0010i\u001a\u00020gJ\u0006\u0010j\u001a\u00020gJ\u0006\u0010k\u001a\u00020\tJ\u000e\u0010l\u001a\u00020\t2\u0006\u0010m\u001a\u00020\u0018J\u0006\u0010n\u001a\u00020gJ\u0006\u0010o\u001a\u00020gJ\u0006\u0010p\u001a\u00020gJ\n\u0010q\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010r\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010s\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010t\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010u\u001a\u00020gH\u0016J\n\u0010v\u001a\u0004\u0018\u00010wH\u0016J\u000b\u0010x\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010}\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u0014\u0010\u0082\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u0014HÆ\u0003J\u0014\u0010\u0083\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0014HÆ\u0003J\u0011\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0018HÆ\u0003¢\u0006\u0002\u0010PJ\u0014\u0010\u0085\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u0014HÆ\u0003J\u0014\u0010\u0086\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u0014HÆ\u0003J\u0014\u0010\u0087\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u0014HÆ\u0003J\f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010\u0089\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0018HÆ\u0003¢\u0006\u0002\u0010PJ\u0011\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0018HÆ\u0003¢\u0006\u0002\u0010PJ\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003JÀ\u0002\u0010\u008e\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0012\b\u0002\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00142\u0012\b\u0002\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u00142\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0012\b\u0002\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u00142\u0012\b\u0002\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u00142\u0012\b\u0002\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u00142\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0003\u0010\u008f\u0001J\u0016\u0010\u0090\u0001\u001a\u00020g2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u0001HÖ\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0018HÖ\u0001J\n\u0010\u0094\u0001\u001a\u00020\tHÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001c\u0010\n\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00104\"\u0004\b8\u00106R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u00104\"\u0004\b:\u00106R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00100\"\u0004\b<\u00102R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR$\u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR$\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010J\"\u0004\bN\u0010LR\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010S\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR$\u0010\u0019\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010J\"\u0004\bU\u0010LR$\u0010\u001b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010J\"\u0004\bW\u0010LR$\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u0010J\"\u0004\bY\u0010LR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u00104\"\u0004\b[\u00106R\u001c\u0010 \u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u00104\"\u0004\b]\u00106R\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u00104\"\u0004\b_\u00106R\u001e\u0010\"\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010S\u001a\u0004\b`\u0010P\"\u0004\ba\u0010RR\u001e\u0010#\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010S\u001a\u0004\bb\u0010P\"\u0004\bc\u0010RR\u001c\u0010$\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u00104\"\u0004\be\u00106¨\u0006\u0095\u0001"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailBean;", "Lcom/join/mgps/dto/DownloadPointBase;", "basic_info", "Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;", "booking_info", "Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;", "coupon_info", "Lcom/join/kotlin/discount/model/bean/CommonComponentBean;", "game_icon", "", "game_id", SearchHistoryBean.GAME_NAME, "gift_info", "pic_video_info", "Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;", "game_notice_info", "Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;", "game_server_info", "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;", "transaction_info", "", "Lcom/join/kotlin/discount/model/bean/GameDetailSubAccountBean;", "benefits", "has648", "", "ad", "Lcom/join/mgps/dto/CommonGameInfoBean;", "sub_titles", "Lcom/join/kotlin/discount/model/bean/StreamingGameTagBean;", "similarity_game_names", "Lcom/join/kotlin/discount/model/bean/SimilarGameBean;", "comment_number", "trading_number", "top_bg_color", "recycle_number", "sell_number", "tagName", "<init>", "(Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;Lcom/join/kotlin/discount/model/bean/CommonComponentBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/discount/model/bean/CommonComponentBean;Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getBasic_info", "()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;", "setBasic_info", "(Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;)V", "getBooking_info", "()Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;", "setBooking_info", "(Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;)V", "getCoupon_info", "()Lcom/join/kotlin/discount/model/bean/CommonComponentBean;", "setCoupon_info", "(Lcom/join/kotlin/discount/model/bean/CommonComponentBean;)V", "getGame_icon", "()Ljava/lang/String;", "setGame_icon", "(Ljava/lang/String;)V", "getGame_id", "setGame_id", "getGame_name", "setGame_name", "getGift_info", "setGift_info", "getPic_video_info", "()Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;", "setPic_video_info", "(Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;)V", "getGame_notice_info", "()Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;", "setGame_notice_info", "(Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;)V", "getGame_server_info", "()Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;", "setGame_server_info", "(Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;)V", "getTransaction_info", "()Ljava/util/List;", "setTransaction_info", "(Ljava/util/List;)V", "getBenefits", "setBenefits", "getHas648", "()Ljava/lang/Integer;", "setHas648", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getAd", "setAd", "getSub_titles", "setSub_titles", "getSimilarity_game_names", "setSimilarity_game_names", "getComment_number", "setComment_number", "getTrading_number", "setTrading_number", "getTop_bg_color", "setTop_bg_color", "getRecycle_number", "setRecycle_number", "getSell_number", "setSell_number", "getTagName", "setTagName", "serverInfoAvailable", "", "showEvent", "showBenefits", "showAd", "activeNoticeCountStr", "getTagForAppDl", "index", "showSimilarGames", "showNoticeCount", "showDiscount", "getGameId", "getIcon", "getModGameId", "getPackageName", "hasGInfo", "getIntentDataBean", "Lcom/join/mgps/Util/IntentDateBean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "copy", "(Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;Lcom/join/kotlin/discount/model/bean/CommonComponentBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/discount/model/bean/CommonComponentBean;Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GameDetailBean;", "equals", AdnName.OTHER, "", "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailBean extends DownloadPointBase {

    @Nullable
    private List<? extends CommonGameInfoBean> ad;

    @Nullable
    private GameDetailBasicInfoBean basic_info;

    @Nullable
    private List<String> benefits;

    @Nullable
    private GameDetailBookingInfoBean booking_info;

    @Nullable
    private String comment_number;

    @Nullable
    private CommonComponentBean coupon_info;

    @Nullable
    private String game_icon;

    @Nullable
    private String game_id;

    @Nullable
    private String game_name;

    @Nullable
    private GameDetailNoticeBean game_notice_info;

    @Nullable
    private GameServerInfoBean game_server_info;

    @Nullable
    private CommonComponentBean gift_info;

    @Nullable
    private Integer has648;

    @Nullable
    private GameDetailPicAndVideoInfoBean pic_video_info;

    @Nullable
    private Integer recycle_number;

    @Nullable
    private Integer sell_number;

    @Nullable
    private List<SimilarGameBean> similarity_game_names;

    @Nullable
    private List<StreamingGameTagBean> sub_titles;

    @Nullable
    private String tagName;

    @Nullable
    private String top_bg_color;

    @Nullable
    private String trading_number;

    @Nullable
    private List<GameDetailSubAccountBean> transaction_info;

    public GameDetailBean() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 4194303, null);
    }

    @NotNull
    public final String activeNoticeCountStr() {
        GameDetailNoticeBean gameDetailNoticeBean = this.game_notice_info;
        if (gameDetailNoticeBean != null) {
            String activeNoticeCount = gameDetailNoticeBean != null ? gameDetailNoticeBean.getActiveNoticeCount() : null;
            if (!(activeNoticeCount == null || activeNoticeCount.length() == 0)) {
                GameDetailNoticeBean gameDetailNoticeBean2 = this.game_notice_info;
                return String.valueOf(gameDetailNoticeBean2 != null ? gameDetailNoticeBean2.getActiveNoticeCount() : null);
            }
        }
        return "0";
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final GameDetailBasicInfoBean getBasic_info() {
        return this.basic_info;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final GameServerInfoBean getGame_server_info() {
        return this.game_server_info;
    }

    @Nullable
    public final List<GameDetailSubAccountBean> component11() {
        return this.transaction_info;
    }

    @Nullable
    public final List<String> component12() {
        return this.benefits;
    }

    @Nullable
    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Integer getHas648() {
        return this.has648;
    }

    @Nullable
    public final List<CommonGameInfoBean> component14() {
        return this.ad;
    }

    @Nullable
    public final List<StreamingGameTagBean> component15() {
        return this.sub_titles;
    }

    @Nullable
    public final List<SimilarGameBean> component16() {
        return this.similarity_game_names;
    }

    @Nullable
    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getComment_number() {
        return this.comment_number;
    }

    @Nullable
    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getTrading_number() {
        return this.trading_number;
    }

    @Nullable
    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getTop_bg_color() {
        return this.top_bg_color;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final GameDetailBookingInfoBean getBooking_info() {
        return this.booking_info;
    }

    @Nullable
    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Integer getRecycle_number() {
        return this.recycle_number;
    }

    @Nullable
    /* JADX INFO: renamed from: component21, reason: from getter */
    public final Integer getSell_number() {
        return this.sell_number;
    }

    @Nullable
    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getTagName() {
        return this.tagName;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CommonComponentBean getCoupon_info() {
        return this.coupon_info;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGame_icon() {
        return this.game_icon;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getGame_id() {
        return this.game_id;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getGame_name() {
        return this.game_name;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final CommonComponentBean getGift_info() {
        return this.gift_info;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final GameDetailPicAndVideoInfoBean getPic_video_info() {
        return this.pic_video_info;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final GameDetailNoticeBean getGame_notice_info() {
        return this.game_notice_info;
    }

    @NotNull
    public final GameDetailBean copy(@Nullable GameDetailBasicInfoBean basic_info, @Nullable GameDetailBookingInfoBean booking_info, @Nullable CommonComponentBean coupon_info, @Nullable String game_icon, @Nullable String game_id, @Nullable String game_name, @Nullable CommonComponentBean gift_info, @Nullable GameDetailPicAndVideoInfoBean pic_video_info, @Nullable GameDetailNoticeBean game_notice_info, @Nullable GameServerInfoBean game_server_info, @Nullable List<GameDetailSubAccountBean> transaction_info, @Nullable List<String> benefits, @Nullable Integer has648, @Nullable List<? extends CommonGameInfoBean> ad2, @Nullable List<StreamingGameTagBean> sub_titles, @Nullable List<SimilarGameBean> similarity_game_names, @Nullable String comment_number, @Nullable String trading_number, @Nullable String top_bg_color, @Nullable Integer recycle_number, @Nullable Integer sell_number, @Nullable String tagName) {
        return new GameDetailBean(basic_info, booking_info, coupon_info, game_icon, game_id, game_name, gift_info, pic_video_info, game_notice_info, game_server_info, transaction_info, benefits, has648, ad2, sub_titles, similarity_game_names, comment_number, trading_number, top_bg_color, recycle_number, sell_number, tagName);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailBean)) {
            return false;
        }
        GameDetailBean gameDetailBean = (GameDetailBean) other;
        return Intrinsics.areEqual(this.basic_info, gameDetailBean.basic_info) && Intrinsics.areEqual(this.booking_info, gameDetailBean.booking_info) && Intrinsics.areEqual(this.coupon_info, gameDetailBean.coupon_info) && Intrinsics.areEqual(this.game_icon, gameDetailBean.game_icon) && Intrinsics.areEqual(this.game_id, gameDetailBean.game_id) && Intrinsics.areEqual(this.game_name, gameDetailBean.game_name) && Intrinsics.areEqual(this.gift_info, gameDetailBean.gift_info) && Intrinsics.areEqual(this.pic_video_info, gameDetailBean.pic_video_info) && Intrinsics.areEqual(this.game_notice_info, gameDetailBean.game_notice_info) && Intrinsics.areEqual(this.game_server_info, gameDetailBean.game_server_info) && Intrinsics.areEqual(this.transaction_info, gameDetailBean.transaction_info) && Intrinsics.areEqual(this.benefits, gameDetailBean.benefits) && Intrinsics.areEqual(this.has648, gameDetailBean.has648) && Intrinsics.areEqual(this.ad, gameDetailBean.ad) && Intrinsics.areEqual(this.sub_titles, gameDetailBean.sub_titles) && Intrinsics.areEqual(this.similarity_game_names, gameDetailBean.similarity_game_names) && Intrinsics.areEqual(this.comment_number, gameDetailBean.comment_number) && Intrinsics.areEqual(this.trading_number, gameDetailBean.trading_number) && Intrinsics.areEqual(this.top_bg_color, gameDetailBean.top_bg_color) && Intrinsics.areEqual(this.recycle_number, gameDetailBean.recycle_number) && Intrinsics.areEqual(this.sell_number, gameDetailBean.sell_number) && Intrinsics.areEqual(this.tagName, gameDetailBean.tagName);
    }

    @Nullable
    public final List<CommonGameInfoBean> getAd() {
        return this.ad;
    }

    @Nullable
    public final GameDetailBasicInfoBean getBasic_info() {
        return this.basic_info;
    }

    @Nullable
    public final List<String> getBenefits() {
        return this.benefits;
    }

    @Nullable
    public final GameDetailBookingInfoBean getBooking_info() {
        return this.booking_info;
    }

    @Nullable
    public final String getComment_number() {
        return this.comment_number;
    }

    @Nullable
    public final CommonComponentBean getCoupon_info() {
        return this.coupon_info;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getGameId() {
        return this.game_id;
    }

    @Nullable
    public final String getGame_icon() {
        return this.game_icon;
    }

    @Nullable
    public final String getGame_id() {
        return this.game_id;
    }

    @Nullable
    public final String getGame_name() {
        return this.game_name;
    }

    @Nullable
    public final GameDetailNoticeBean getGame_notice_info() {
        return this.game_notice_info;
    }

    @Nullable
    public final GameServerInfoBean getGame_server_info() {
        return this.game_server_info;
    }

    @Nullable
    public final CommonComponentBean getGift_info() {
        return this.gift_info;
    }

    @Nullable
    public final Integer getHas648() {
        return this.has648;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getIcon() {
        return this.game_icon;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    @Nullable
    public IntentDateBean getIntentDataBean() {
        return new IntentDateBean();
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getModGameId() {
        return "";
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getPackageName() {
        return "";
    }

    @Nullable
    public final GameDetailPicAndVideoInfoBean getPic_video_info() {
        return this.pic_video_info;
    }

    @Nullable
    public final Integer getRecycle_number() {
        return this.recycle_number;
    }

    @Nullable
    public final Integer getSell_number() {
        return this.sell_number;
    }

    @Nullable
    public final List<SimilarGameBean> getSimilarity_game_names() {
        return this.similarity_game_names;
    }

    @Nullable
    public final List<StreamingGameTagBean> getSub_titles() {
        return this.sub_titles;
    }

    @NotNull
    public final String getTagForAppDl(int index) {
        GameDetailBasicInfoBean gameDetailBasicInfoBean;
        List<TagBean> tags;
        TagBean tagBean;
        String name;
        StreamingGameTagBean streamingGameTagBean;
        String name2;
        try {
            List<StreamingGameTagBean> list = this.sub_titles;
            if (!(list == null || list.isEmpty())) {
                List<StreamingGameTagBean> list2 = this.sub_titles;
                if ((list2 != null ? list2.size() : 0) >= index + 1) {
                    List<StreamingGameTagBean> list3 = this.sub_titles;
                    if ((list3 != null ? list3.get(index) : null) != null) {
                        List<StreamingGameTagBean> list4 = this.sub_titles;
                        if (list4 != null && (streamingGameTagBean = list4.get(index)) != null && (name2 = streamingGameTagBean.getName()) != null) {
                            return name2;
                        }
                        return "";
                    }
                }
            }
            GameDetailBasicInfoBean gameDetailBasicInfoBean2 = this.basic_info;
            if (gameDetailBasicInfoBean2 == null) {
                return "";
            }
            List<TagBean> tags2 = gameDetailBasicInfoBean2 != null ? gameDetailBasicInfoBean2.getTags() : null;
            return ((tags2 == null || tags2.isEmpty()) || (gameDetailBasicInfoBean = this.basic_info) == null || (tags = gameDetailBasicInfoBean.getTags()) == null || (tagBean = tags.get(index)) == null || (name = tagBean.getName()) == null) ? "" : name;
        } catch (Exception unused) {
            return "";
        }
    }

    @Nullable
    public final String getTagName() {
        return this.tagName;
    }

    @Nullable
    public final String getTop_bg_color() {
        return this.top_bg_color;
    }

    @Nullable
    public final String getTrading_number() {
        return this.trading_number;
    }

    @Nullable
    public final List<GameDetailSubAccountBean> getTransaction_info() {
        return this.transaction_info;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public boolean hasGInfo() {
        return false;
    }

    public int hashCode() {
        GameDetailBasicInfoBean gameDetailBasicInfoBean = this.basic_info;
        int iHashCode = (gameDetailBasicInfoBean == null ? 0 : gameDetailBasicInfoBean.hashCode()) * 31;
        GameDetailBookingInfoBean gameDetailBookingInfoBean = this.booking_info;
        int iHashCode2 = (iHashCode + (gameDetailBookingInfoBean == null ? 0 : gameDetailBookingInfoBean.hashCode())) * 31;
        CommonComponentBean commonComponentBean = this.coupon_info;
        int iHashCode3 = (iHashCode2 + (commonComponentBean == null ? 0 : commonComponentBean.hashCode())) * 31;
        String str = this.game_icon;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.game_id;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.game_name;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        CommonComponentBean commonComponentBean2 = this.gift_info;
        int iHashCode7 = (iHashCode6 + (commonComponentBean2 == null ? 0 : commonComponentBean2.hashCode())) * 31;
        GameDetailPicAndVideoInfoBean gameDetailPicAndVideoInfoBean = this.pic_video_info;
        int iHashCode8 = (iHashCode7 + (gameDetailPicAndVideoInfoBean == null ? 0 : gameDetailPicAndVideoInfoBean.hashCode())) * 31;
        GameDetailNoticeBean gameDetailNoticeBean = this.game_notice_info;
        int iHashCode9 = (iHashCode8 + (gameDetailNoticeBean == null ? 0 : gameDetailNoticeBean.hashCode())) * 31;
        GameServerInfoBean gameServerInfoBean = this.game_server_info;
        int iHashCode10 = (iHashCode9 + (gameServerInfoBean == null ? 0 : gameServerInfoBean.hashCode())) * 31;
        List<GameDetailSubAccountBean> list = this.transaction_info;
        int iHashCode11 = (iHashCode10 + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.benefits;
        int iHashCode12 = (iHashCode11 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num = this.has648;
        int iHashCode13 = (iHashCode12 + (num == null ? 0 : num.hashCode())) * 31;
        List<? extends CommonGameInfoBean> list3 = this.ad;
        int iHashCode14 = (iHashCode13 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<StreamingGameTagBean> list4 = this.sub_titles;
        int iHashCode15 = (iHashCode14 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<SimilarGameBean> list5 = this.similarity_game_names;
        int iHashCode16 = (iHashCode15 + (list5 == null ? 0 : list5.hashCode())) * 31;
        String str4 = this.comment_number;
        int iHashCode17 = (iHashCode16 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.trading_number;
        int iHashCode18 = (iHashCode17 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.top_bg_color;
        int iHashCode19 = (iHashCode18 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num2 = this.recycle_number;
        int iHashCode20 = (iHashCode19 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.sell_number;
        int iHashCode21 = (iHashCode20 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str7 = this.tagName;
        return iHashCode21 + (str7 != null ? str7.hashCode() : 0);
    }

    public final boolean serverInfoAvailable() {
        return this.game_server_info != null;
    }

    public final void setAd(@Nullable List<? extends CommonGameInfoBean> list) {
        this.ad = list;
    }

    public final void setBasic_info(@Nullable GameDetailBasicInfoBean gameDetailBasicInfoBean) {
        this.basic_info = gameDetailBasicInfoBean;
    }

    public final void setBenefits(@Nullable List<String> list) {
        this.benefits = list;
    }

    public final void setBooking_info(@Nullable GameDetailBookingInfoBean gameDetailBookingInfoBean) {
        this.booking_info = gameDetailBookingInfoBean;
    }

    public final void setComment_number(@Nullable String str) {
        this.comment_number = str;
    }

    public final void setCoupon_info(@Nullable CommonComponentBean commonComponentBean) {
        this.coupon_info = commonComponentBean;
    }

    public final void setGame_icon(@Nullable String str) {
        this.game_icon = str;
    }

    public final void setGame_id(@Nullable String str) {
        this.game_id = str;
    }

    public final void setGame_name(@Nullable String str) {
        this.game_name = str;
    }

    public final void setGame_notice_info(@Nullable GameDetailNoticeBean gameDetailNoticeBean) {
        this.game_notice_info = gameDetailNoticeBean;
    }

    public final void setGame_server_info(@Nullable GameServerInfoBean gameServerInfoBean) {
        this.game_server_info = gameServerInfoBean;
    }

    public final void setGift_info(@Nullable CommonComponentBean commonComponentBean) {
        this.gift_info = commonComponentBean;
    }

    public final void setHas648(@Nullable Integer num) {
        this.has648 = num;
    }

    public final void setPic_video_info(@Nullable GameDetailPicAndVideoInfoBean gameDetailPicAndVideoInfoBean) {
        this.pic_video_info = gameDetailPicAndVideoInfoBean;
    }

    public final void setRecycle_number(@Nullable Integer num) {
        this.recycle_number = num;
    }

    public final void setSell_number(@Nullable Integer num) {
        this.sell_number = num;
    }

    public final void setSimilarity_game_names(@Nullable List<SimilarGameBean> list) {
        this.similarity_game_names = list;
    }

    public final void setSub_titles(@Nullable List<StreamingGameTagBean> list) {
        this.sub_titles = list;
    }

    public final void setTagName(@Nullable String str) {
        this.tagName = str;
    }

    public final void setTop_bg_color(@Nullable String str) {
        this.top_bg_color = str;
    }

    public final void setTrading_number(@Nullable String str) {
        this.trading_number = str;
    }

    public final void setTransaction_info(@Nullable List<GameDetailSubAccountBean> list) {
        this.transaction_info = list;
    }

    public final boolean showAd() {
        List<? extends CommonGameInfoBean> list = this.ad;
        if (!(list == null || list.isEmpty())) {
            List<? extends CommonGameInfoBean> list2 = this.ad;
            Intrinsics.checkNotNull(list2);
            if (list2.get(0) != null) {
                List<? extends CommonGameInfoBean> list3 = this.ad;
                Intrinsics.checkNotNull(list3);
                CommonGameInfoBean commonGameInfoBean = list3.get(0);
                String big_pic = commonGameInfoBean != null ? commonGameInfoBean.getBig_pic() : null;
                if (!(big_pic == null || big_pic.length() == 0)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean showBenefits() {
        List<String> list = this.benefits;
        return !(list == null || list.isEmpty());
    }

    public final boolean showDiscount() {
        String str = this.tagName;
        return !(str == null || str.length() == 0);
    }

    public final boolean showEvent() {
        GameDetailNoticeBean gameDetailNoticeBean = this.game_notice_info;
        if (gameDetailNoticeBean == null) {
            return false;
        }
        Intrinsics.checkNotNull(gameDetailNoticeBean);
        String jumpListUrl = gameDetailNoticeBean.getJumpListUrl();
        return !(jumpListUrl == null || jumpListUrl.length() == 0);
    }

    public final boolean showNoticeCount() {
        GameDetailNoticeBean gameDetailNoticeBean = this.game_notice_info;
        if (gameDetailNoticeBean == null) {
            return false;
        }
        Intrinsics.checkNotNull(gameDetailNoticeBean);
        String activeNoticeCount = gameDetailNoticeBean.getActiveNoticeCount();
        return !(activeNoticeCount == null || activeNoticeCount.length() == 0);
    }

    public final boolean showSimilarGames() {
        List<SimilarGameBean> list = this.similarity_game_names;
        return !(list == null || list.isEmpty());
    }

    @NotNull
    public String toString() {
        return "GameDetailBean(basic_info=" + this.basic_info + ", booking_info=" + this.booking_info + ", coupon_info=" + this.coupon_info + ", game_icon=" + this.game_icon + ", game_id=" + this.game_id + ", game_name=" + this.game_name + ", gift_info=" + this.gift_info + ", pic_video_info=" + this.pic_video_info + ", game_notice_info=" + this.game_notice_info + ", game_server_info=" + this.game_server_info + ", transaction_info=" + this.transaction_info + ", benefits=" + this.benefits + ", has648=" + this.has648 + ", ad=" + this.ad + ", sub_titles=" + this.sub_titles + ", similarity_game_names=" + this.similarity_game_names + ", comment_number=" + this.comment_number + ", trading_number=" + this.trading_number + ", top_bg_color=" + this.top_bg_color + ", recycle_number=" + this.recycle_number + ", sell_number=" + this.sell_number + ", tagName=" + this.tagName + ')';
    }

    public /* synthetic */ GameDetailBean(GameDetailBasicInfoBean gameDetailBasicInfoBean, GameDetailBookingInfoBean gameDetailBookingInfoBean, CommonComponentBean commonComponentBean, String str, String str2, String str3, CommonComponentBean commonComponentBean2, GameDetailPicAndVideoInfoBean gameDetailPicAndVideoInfoBean, GameDetailNoticeBean gameDetailNoticeBean, GameServerInfoBean gameServerInfoBean, List list, List list2, Integer num, List list3, List list4, List list5, String str4, String str5, String str6, Integer num2, Integer num3, String str7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : gameDetailBasicInfoBean, (i10 & 2) != 0 ? null : gameDetailBookingInfoBean, (i10 & 4) != 0 ? null : commonComponentBean, (i10 & 8) != 0 ? "" : str, (i10 & 16) != 0 ? "" : str2, (i10 & 32) != 0 ? "" : str3, (i10 & 64) != 0 ? null : commonComponentBean2, (i10 & 128) != 0 ? null : gameDetailPicAndVideoInfoBean, (i10 & 256) != 0 ? null : gameDetailNoticeBean, (i10 & 512) != 0 ? null : gameServerInfoBean, (i10 & 1024) != 0 ? null : list, (i10 & 2048) != 0 ? null : list2, (i10 & 4096) != 0 ? 0 : num, (i10 & 8192) != 0 ? null : list3, (i10 & 16384) != 0 ? null : list4, (i10 & 32768) != 0 ? null : list5, (i10 & 65536) != 0 ? "" : str4, (i10 & 131072) != 0 ? "" : str5, (i10 & 262144) != 0 ? "" : str6, (i10 & 524288) != 0 ? 0 : num2, (i10 & 1048576) != 0 ? 0 : num3, (i10 & 2097152) != 0 ? "" : str7);
    }

    public GameDetailBean(@Nullable GameDetailBasicInfoBean gameDetailBasicInfoBean, @Nullable GameDetailBookingInfoBean gameDetailBookingInfoBean, @Nullable CommonComponentBean commonComponentBean, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable CommonComponentBean commonComponentBean2, @Nullable GameDetailPicAndVideoInfoBean gameDetailPicAndVideoInfoBean, @Nullable GameDetailNoticeBean gameDetailNoticeBean, @Nullable GameServerInfoBean gameServerInfoBean, @Nullable List<GameDetailSubAccountBean> list, @Nullable List<String> list2, @Nullable Integer num, @Nullable List<? extends CommonGameInfoBean> list3, @Nullable List<StreamingGameTagBean> list4, @Nullable List<SimilarGameBean> list5, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str7) {
        this.basic_info = gameDetailBasicInfoBean;
        this.booking_info = gameDetailBookingInfoBean;
        this.coupon_info = commonComponentBean;
        this.game_icon = str;
        this.game_id = str2;
        this.game_name = str3;
        this.gift_info = commonComponentBean2;
        this.pic_video_info = gameDetailPicAndVideoInfoBean;
        this.game_notice_info = gameDetailNoticeBean;
        this.game_server_info = gameServerInfoBean;
        this.transaction_info = list;
        this.benefits = list2;
        this.has648 = num;
        this.ad = list3;
        this.sub_titles = list4;
        this.similarity_game_names = list5;
        this.comment_number = str4;
        this.trading_number = str5;
        this.top_bg_color = str6;
        this.recycle_number = num2;
        this.sell_number = num3;
        this.tagName = str7;
    }
}
