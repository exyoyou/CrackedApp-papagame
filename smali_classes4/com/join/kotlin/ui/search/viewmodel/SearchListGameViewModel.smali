.class public final Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchListGameViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,300:1\n1878#2,3:301\n1878#2,3:304\n1878#2,3:307\n1878#2,3:310\n1878#2,3:313\n1878#2,3:316\n*S KotlinDebug\n*F\n+ 1 SearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel\n*L\n56#1:301,3\n89#1:304,3\n110#1:307,3\n197#1:310,3\n233#1:313,3\n263#1:316,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/R\u001f\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001d\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011\"\u0004\u0008\u001e\u0010\u0013R\u001a\u0010\u001f\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0011\"\u0004\u0008!\u0010\u0013R\u001a\u0010\"\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0011\"\u0004\u0008$\u0010\u0013R*\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\u000c0&j\u0008\u0012\u0004\u0012\u00020\u000c`\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u00060"
    }
    d2 = {
        "Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "title",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getTitle",
        "()Landroidx/lifecycle/MutableLiveData;",
        "listData",
        "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "getListData",
        "page",
        "",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "keyword",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "gameId",
        "getGameId",
        "setGameId",
        "plugin_num",
        "getPlugin_num",
        "setPlugin_num",
        "lang_id",
        "getLang_id",
        "setLang_id",
        "search_status",
        "getSearch_status",
        "setSearch_status",
        "allDownloadBeans",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getAllDownloadBeans",
        "()Ljava/util/ArrayList;",
        "setAllDownloadBeans",
        "(Ljava/util/ArrayList;)V",
        "gameSearchList",
        "",
        "refresh",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchListGameViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,300:1\n1878#2,3:301\n1878#2,3:304\n1878#2,3:307\n1878#2,3:310\n1878#2,3:313\n1878#2,3:316\n*S KotlinDebug\n*F\n+ 1 SearchListGameViewModel.kt\ncom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel\n*L\n56#1:301,3\n89#1:304,3\n110#1:307,3\n197#1:310,3\n233#1:313,3\n263#1:316,3\n*E\n"
    }
.end annotation


# instance fields
.field private allDownloadBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private keyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lang_id:I

.field private final listData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:I

.field private plugin_num:I

.field private search_status:I

.field private final title:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    const-string v1, "\u641c\u7d22"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->page:I

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->keyword:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->gameId:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic a(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->gameSearchList$lambda$9(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lcom/join/kotlin/ui/search/model/SearchDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->gameSearchList$lambda$8(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lcom/join/kotlin/ui/search/model/SearchDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final gameSearchList$lambda$8(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lcom/join/kotlin/ui/search/model/SearchDataBean;)Lkotlin/Unit;
    .locals 22

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getSearch_status()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iput v1, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->search_status:I

    .line 14
    .line 15
    :cond_1
    iget v1, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->page:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    add-int/2addr v1, v2

    .line 19
    iput v1, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->page:I

    .line 20
    .line 21
    new-instance v7, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_1c

    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getPrecise_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "10200"

    .line 33
    .line 34
    const-string v4, "_1"

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Iterable;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v5, 0x0

    .line 49
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    add-int/lit8 v8, v5, 0x1

    .line 60
    .line 61
    if-gez v5, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 64
    .line 65
    .line 66
    :cond_2
    move-object v12, v6

    .line 67
    check-cast v12, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 68
    .line 69
    new-instance v5, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 70
    .line 71
    new-instance v6, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    const/4 v14, 0x0

    .line 75
    const/4 v15, 0x0

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getWord_info()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    .line 79
    .line 80
    .line 81
    move-result-object v17

    .line 82
    const/16 v18, 0x1e

    .line 83
    .line 84
    const/16 v19, 0x0

    .line 85
    .line 86
    move-object v11, v6

    .line 87
    invoke-direct/range {v11 .. v19}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v5, v2, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const-string v9, "searchResultGame"

    .line 121
    .line 122
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    iget-object v9, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->keyword:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    iget-object v9, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->keyword:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v6, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move v5, v8

    .line 146
    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getPrecise_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getMore()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_4

    .line 156
    .line 157
    new-instance v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 158
    .line 159
    new-instance v5, Lcom/join/kotlin/ui/search/model/SearchTitleBean;

    .line 160
    .line 161
    iget-object v6, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->keyword:Ljava/lang/String;

    .line 162
    .line 163
    const-string v8, ""

    .line 164
    .line 165
    invoke-direct {v5, v6, v8, v2}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    const/4 v6, 0x3

    .line 169
    invoke-direct {v1, v6, v5}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_line_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_5

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-eqz v1, :cond_5

    .line 186
    .line 187
    check-cast v1, Ljava/util/Collection;

    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    xor-int/2addr v1, v2

    .line 194
    if-ne v1, v2, :cond_5

    .line 195
    .line 196
    const/4 v1, 0x1

    .line 197
    goto :goto_2

    .line 198
    :cond_5
    const/4 v1, 0x0

    .line 199
    :goto_2
    if-eqz v1, :cond_a

    .line 200
    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_line_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getAd_position()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getPrecise_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    if-eqz v5, :cond_6

    .line 214
    .line 215
    invoke-virtual {v5}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    if-eqz v5, :cond_6

    .line 220
    .line 221
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    goto :goto_3

    .line 226
    :cond_6
    const/4 v5, 0x0

    .line 227
    :goto_3
    const-string v6, "AD"

    .line 228
    .line 229
    if-ge v1, v5, :cond_8

    .line 230
    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_line_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getAd_position()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_line_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v5}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    check-cast v5, Ljava/lang/Iterable;

    .line 248
    .line 249
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    const/4 v8, 0x0

    .line 254
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-eqz v9, :cond_a

    .line 259
    .line 260
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    add-int/lit8 v11, v8, 0x1

    .line 265
    .line 266
    if-gez v8, :cond_7

    .line 267
    .line 268
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 269
    .line 270
    .line 271
    :cond_7
    check-cast v9, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 272
    .line 273
    new-instance v8, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 274
    .line 275
    new-instance v15, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 276
    .line 277
    const/4 v14, 0x0

    .line 278
    const/16 v16, 0x0

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    const/16 v18, 0x1

    .line 283
    .line 284
    const/16 v19, 0x0

    .line 285
    .line 286
    const/16 v20, 0x2e

    .line 287
    .line 288
    const/16 v21, 0x0

    .line 289
    .line 290
    move-object v12, v15

    .line 291
    move-object v13, v9

    .line 292
    move-object v0, v15

    .line 293
    move-object/from16 v15, v16

    .line 294
    .line 295
    move/from16 v16, v17

    .line 296
    .line 297
    move/from16 v17, v18

    .line 298
    .line 299
    move-object/from16 v18, v19

    .line 300
    .line 301
    move/from16 v19, v20

    .line 302
    .line 303
    move-object/from16 v20, v21

    .line 304
    .line 305
    invoke-direct/range {v12 .. v20}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 306
    .line 307
    .line 308
    invoke-direct {v8, v2, v0}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    new-instance v12, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    invoke-virtual {v0, v12}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0, v6}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v9}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-virtual {v0, v9}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    add-int/2addr v1, v2

    .line 353
    iget-object v0, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move v8, v11

    .line 359
    goto :goto_4

    .line 360
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_line_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Ljava/lang/Iterable;

    .line 369
    .line 370
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    const/4 v1, 0x0

    .line 375
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_a

    .line 380
    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    add-int/lit8 v8, v1, 0x1

    .line 386
    .line 387
    if-gez v1, :cond_9

    .line 388
    .line 389
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 390
    .line 391
    .line 392
    :cond_9
    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 393
    .line 394
    new-instance v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 395
    .line 396
    new-instance v9, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 397
    .line 398
    const/4 v13, 0x0

    .line 399
    const/4 v14, 0x0

    .line 400
    const/4 v15, 0x0

    .line 401
    const/16 v16, 0x1

    .line 402
    .line 403
    const/16 v17, 0x0

    .line 404
    .line 405
    const/16 v18, 0x2e

    .line 406
    .line 407
    const/16 v19, 0x0

    .line 408
    .line 409
    move-object v11, v9

    .line 410
    move-object v12, v5

    .line 411
    invoke-direct/range {v11 .. v19}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 412
    .line 413
    .line 414
    invoke-direct {v1, v2, v9}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    invoke-virtual {v9, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    new-instance v11, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v11

    .line 440
    invoke-virtual {v9, v11}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    invoke-virtual {v9, v6}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    invoke-virtual {v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-virtual {v9, v5}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    iget-object v5, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move v1, v8

    .line 464
    goto :goto_5

    .line 465
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    if-eqz v0, :cond_b

    .line 470
    .line 471
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    if-eqz v0, :cond_b

    .line 476
    .line 477
    check-cast v0, Ljava/util/Collection;

    .line 478
    .line 479
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    xor-int/2addr v0, v2

    .line 484
    if-ne v0, v2, :cond_b

    .line 485
    .line 486
    const/4 v0, 0x1

    .line 487
    goto :goto_6

    .line 488
    :cond_b
    const/4 v0, 0x0

    .line 489
    :goto_6
    if-eqz v0, :cond_10

    .line 490
    .line 491
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getAd_position()I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getPrecise_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    if-eqz v1, :cond_c

    .line 504
    .line 505
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    if-eqz v1, :cond_c

    .line 510
    .line 511
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    goto :goto_7

    .line 516
    :cond_c
    const/4 v1, 0x0

    .line 517
    :goto_7
    const-string v3, "AD_SEARCH"

    .line 518
    .line 519
    const/4 v5, 0x2

    .line 520
    if-ge v0, v1, :cond_e

    .line 521
    .line 522
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getAd_position()I

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-eqz v1, :cond_d

    .line 543
    .line 544
    new-instance v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 545
    .line 546
    new-instance v6, Lcom/join/kotlin/ui/search/model/SearchTitleBean;

    .line 547
    .line 548
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-virtual {v8}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    invoke-virtual {v9}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getMore()Z

    .line 561
    .line 562
    .line 563
    move-result v9

    .line 564
    invoke-direct {v6, v8, v3, v9}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 565
    .line 566
    .line 567
    const/4 v3, 0x0

    .line 568
    invoke-direct {v1, v3, v6}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v7, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    :cond_d
    add-int/2addr v0, v2

    .line 575
    new-instance v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 576
    .line 577
    new-instance v3, Lcom/join/kotlin/ui/search/model/SearchAdGridBean;

    .line 578
    .line 579
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    invoke-virtual {v6}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    invoke-direct {v3, v6}, Lcom/join/kotlin/ui/search/model/SearchAdGridBean;-><init>(Ljava/util/List;)V

    .line 588
    .line 589
    .line 590
    invoke-direct {v1, v5, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v7, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    goto :goto_8

    .line 597
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-eqz v0, :cond_f

    .line 610
    .line 611
    new-instance v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 612
    .line 613
    new-instance v1, Lcom/join/kotlin/ui/search/model/SearchTitleBean;

    .line 614
    .line 615
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    invoke-virtual {v6}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 624
    .line 625
    .line 626
    move-result-object v8

    .line 627
    invoke-virtual {v8}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getMore()Z

    .line 628
    .line 629
    .line 630
    move-result v8

    .line 631
    invoke-direct {v1, v6, v3, v8}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 632
    .line 633
    .line 634
    const/4 v3, 0x0

    .line 635
    invoke-direct {v0, v3, v1}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    :cond_f
    new-instance v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 642
    .line 643
    new-instance v1, Lcom/join/kotlin/ui/search/model/SearchAdGridBean;

    .line 644
    .line 645
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRec_grid_ad_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-direct {v1, v3}, Lcom/join/kotlin/ui/search/model/SearchAdGridBean;-><init>(Ljava/util/List;)V

    .line 654
    .line 655
    .line 656
    invoke-direct {v0, v5, v1}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    :cond_10
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getGf_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    if-eqz v0, :cond_11

    .line 667
    .line 668
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    if-eqz v0, :cond_11

    .line 673
    .line 674
    check-cast v0, Ljava/util/Collection;

    .line 675
    .line 676
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    xor-int/2addr v0, v2

    .line 681
    if-ne v0, v2, :cond_11

    .line 682
    .line 683
    const/4 v0, 0x1

    .line 684
    goto :goto_9

    .line 685
    :cond_11
    const/4 v0, 0x0

    .line 686
    :goto_9
    const-string v1, "btnMore"

    .line 687
    .line 688
    if-eqz v0, :cond_14

    .line 689
    .line 690
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getGf_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    const-string v3, "10203"

    .line 703
    .line 704
    if-eqz v0, :cond_12

    .line 705
    .line 706
    new-instance v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 707
    .line 708
    new-instance v5, Lcom/join/kotlin/ui/search/model/SearchTitleBean;

    .line 709
    .line 710
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getGf_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-virtual {v6}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getGf_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 719
    .line 720
    .line 721
    move-result-object v8

    .line 722
    invoke-virtual {v8}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getMore()Z

    .line 723
    .line 724
    .line 725
    move-result v8

    .line 726
    const-string v9, "GF_SEARCH"

    .line 727
    .line 728
    invoke-direct {v5, v6, v9, v8}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 729
    .line 730
    .line 731
    const/4 v6, 0x0

    .line 732
    invoke-direct {v0, v6, v5}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v5, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 740
    .line 741
    .line 742
    move-result-object v5

    .line 743
    invoke-virtual {v5, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 744
    .line 745
    .line 746
    move-result-object v5

    .line 747
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getGf_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 748
    .line 749
    .line 750
    move-result-object v6

    .line 751
    invoke-virtual {v6}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v6

    .line 755
    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getGf_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    check-cast v0, Ljava/lang/Iterable;

    .line 770
    .line 771
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    const/4 v5, 0x0

    .line 776
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 777
    .line 778
    .line 779
    move-result v6

    .line 780
    if-eqz v6, :cond_14

    .line 781
    .line 782
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v6

    .line 786
    add-int/lit8 v8, v5, 0x1

    .line 787
    .line 788
    if-gez v5, :cond_13

    .line 789
    .line 790
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 791
    .line 792
    .line 793
    :cond_13
    check-cast v6, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 794
    .line 795
    new-instance v5, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 796
    .line 797
    new-instance v9, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 798
    .line 799
    const/4 v13, 0x0

    .line 800
    const/4 v14, 0x0

    .line 801
    const/4 v15, 0x0

    .line 802
    const/16 v16, 0x0

    .line 803
    .line 804
    const/16 v17, 0x0

    .line 805
    .line 806
    const/16 v18, 0x3e

    .line 807
    .line 808
    const/16 v19, 0x0

    .line 809
    .line 810
    move-object v11, v9

    .line 811
    move-object v12, v6

    .line 812
    invoke-direct/range {v11 .. v19}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 813
    .line 814
    .line 815
    invoke-direct {v5, v2, v9}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 819
    .line 820
    .line 821
    move-result-object v9

    .line 822
    invoke-virtual {v9, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 823
    .line 824
    .line 825
    move-result-object v9

    .line 826
    new-instance v11, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v11

    .line 841
    invoke-virtual {v9, v11}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 842
    .line 843
    .line 844
    move-result-object v9

    .line 845
    invoke-virtual {v6}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v6

    .line 849
    invoke-virtual {v9, v6}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    iget-object v6, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move v5, v8

    .line 861
    goto :goto_a

    .line 862
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getTag_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    if-eqz v0, :cond_15

    .line 867
    .line 868
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    if-eqz v0, :cond_15

    .line 873
    .line 874
    check-cast v0, Ljava/util/Collection;

    .line 875
    .line 876
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 877
    .line 878
    .line 879
    move-result v0

    .line 880
    xor-int/2addr v0, v2

    .line 881
    if-ne v0, v2, :cond_15

    .line 882
    .line 883
    const/4 v0, 0x1

    .line 884
    goto :goto_b

    .line 885
    :cond_15
    const/4 v0, 0x0

    .line 886
    :goto_b
    if-eqz v0, :cond_18

    .line 887
    .line 888
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getTag_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 897
    .line 898
    .line 899
    move-result v0

    .line 900
    const-string v3, "10204"

    .line 901
    .line 902
    if-eqz v0, :cond_16

    .line 903
    .line 904
    new-instance v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 905
    .line 906
    new-instance v5, Lcom/join/kotlin/ui/search/model/SearchTitleBean;

    .line 907
    .line 908
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getTag_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 909
    .line 910
    .line 911
    move-result-object v6

    .line 912
    invoke-virtual {v6}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v6

    .line 916
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getTag_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 917
    .line 918
    .line 919
    move-result-object v8

    .line 920
    invoke-virtual {v8}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getMore()Z

    .line 921
    .line 922
    .line 923
    move-result v8

    .line 924
    const-string v9, "TAG_SEARCH"

    .line 925
    .line 926
    invoke-direct {v5, v6, v9, v8}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 927
    .line 928
    .line 929
    const/4 v6, 0x0

    .line 930
    invoke-direct {v0, v6, v5}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    invoke-virtual {v5, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 938
    .line 939
    .line 940
    move-result-object v5

    .line 941
    invoke-virtual {v5, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getTag_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 946
    .line 947
    .line 948
    move-result-object v5

    .line 949
    invoke-virtual {v5}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v5

    .line 953
    invoke-virtual {v1, v5}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getTag_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    check-cast v0, Ljava/lang/Iterable;

    .line 968
    .line 969
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    const/4 v1, 0x0

    .line 974
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 975
    .line 976
    .line 977
    move-result v5

    .line 978
    if-eqz v5, :cond_18

    .line 979
    .line 980
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v5

    .line 984
    add-int/lit8 v6, v1, 0x1

    .line 985
    .line 986
    if-gez v1, :cond_17

    .line 987
    .line 988
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 989
    .line 990
    .line 991
    :cond_17
    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 992
    .line 993
    new-instance v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 994
    .line 995
    new-instance v8, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 996
    .line 997
    const/4 v13, 0x0

    .line 998
    const/4 v14, 0x0

    .line 999
    const/4 v15, 0x0

    .line 1000
    const/16 v16, 0x0

    .line 1001
    .line 1002
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getWord_info()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v17

    .line 1006
    const/16 v18, 0x1e

    .line 1007
    .line 1008
    const/16 v19, 0x0

    .line 1009
    .line 1010
    move-object v11, v8

    .line 1011
    move-object v12, v5

    .line 1012
    invoke-direct/range {v11 .. v19}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v8

    .line 1022
    invoke-virtual {v8, v3}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v8

    .line 1026
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v9

    .line 1041
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v8

    .line 1045
    invoke-virtual {v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v5

    .line 1049
    invoke-virtual {v8, v5}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    iget-object v5, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 1056
    .line 1057
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .line 1059
    .line 1060
    move v1, v6

    .line 1061
    goto :goto_c

    .line 1062
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRecommend_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    if-eqz v0, :cond_19

    .line 1067
    .line 1068
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    if-eqz v0, :cond_19

    .line 1073
    .line 1074
    check-cast v0, Ljava/util/Collection;

    .line 1075
    .line 1076
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v0

    .line 1080
    xor-int/2addr v0, v2

    .line 1081
    if-ne v0, v2, :cond_19

    .line 1082
    .line 1083
    const/4 v3, 0x1

    .line 1084
    goto :goto_d

    .line 1085
    :cond_19
    const/4 v3, 0x0

    .line 1086
    :goto_d
    if-eqz v3, :cond_1c

    .line 1087
    .line 1088
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRecommend_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v0

    .line 1100
    if-eqz v0, :cond_1a

    .line 1101
    .line 1102
    new-instance v0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 1103
    .line 1104
    new-instance v1, Lcom/join/kotlin/ui/search/model/SearchTitleBean;

    .line 1105
    .line 1106
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRecommend_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v3

    .line 1110
    invoke-virtual {v3}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getTitle()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v3

    .line 1114
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRecommend_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v5

    .line 1118
    invoke-virtual {v5}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getMore()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v5

    .line 1122
    const-string v6, "RECOMMEND_SEARCH"

    .line 1123
    .line 1124
    invoke-direct {v1, v3, v6, v5}, Lcom/join/kotlin/ui/search/model/SearchTitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1125
    .line 1126
    .line 1127
    const/4 v3, 0x0

    .line 1128
    invoke-direct {v0, v3, v1}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    .line 1133
    .line 1134
    goto :goto_e

    .line 1135
    :cond_1a
    const/4 v3, 0x0

    .line 1136
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getRecommend_game_list()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGroupListBean;->getList()Ljava/util/List;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    check-cast v0, Ljava/lang/Iterable;

    .line 1145
    .line 1146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    const/4 v1, 0x0

    .line 1151
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1152
    .line 1153
    .line 1154
    move-result v5

    .line 1155
    if-eqz v5, :cond_1d

    .line 1156
    .line 1157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v5

    .line 1161
    add-int/lit8 v6, v1, 0x1

    .line 1162
    .line 1163
    if-gez v1, :cond_1b

    .line 1164
    .line 1165
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1166
    .line 1167
    .line 1168
    :cond_1b
    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 1169
    .line 1170
    new-instance v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 1171
    .line 1172
    new-instance v8, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 1173
    .line 1174
    const/4 v13, 0x0

    .line 1175
    const/4 v14, 0x0

    .line 1176
    const/4 v15, 0x0

    .line 1177
    const/16 v16, 0x0

    .line 1178
    .line 1179
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/search/model/SearchDataBean;->getWord_info()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v17

    .line 1183
    const/16 v18, 0x1e

    .line 1184
    .line 1185
    const/16 v19, 0x0

    .line 1186
    .line 1187
    move-object v11, v8

    .line 1188
    move-object v12, v5

    .line 1189
    invoke-direct/range {v11 .. v19}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1190
    .line 1191
    .line 1192
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v8

    .line 1199
    const-string v9, "10205"

    .line 1200
    .line 1201
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v8

    .line 1205
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v9

    .line 1220
    invoke-virtual {v8, v9}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v8

    .line 1224
    invoke-virtual {v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v5

    .line 1228
    invoke-virtual {v8, v5}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    iget-object v5, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 1235
    .line 1236
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    .line 1238
    .line 1239
    move v1, v6

    .line 1240
    goto :goto_f

    .line 1241
    :cond_1c
    const/4 v3, 0x0

    .line 1242
    :cond_1d
    new-instance v11, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 1243
    .line 1244
    const/4 v1, 0x1

    .line 1245
    const/4 v4, 0x0

    .line 1246
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1247
    .line 1248
    .line 1249
    move-result v5

    .line 1250
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    xor-int/lit8 v6, v0, 0x1

    .line 1255
    .line 1256
    if-eqz p0, :cond_1e

    .line 1257
    .line 1258
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    if-eqz v0, :cond_1e

    .line 1263
    .line 1264
    const/4 v8, 0x1

    .line 1265
    goto :goto_10

    .line 1266
    :cond_1e
    const/4 v8, 0x0

    .line 1267
    :goto_10
    const/4 v9, 0x2

    .line 1268
    const/4 v12, 0x0

    .line 1269
    move-object v0, v11

    .line 1270
    move-object v2, v4

    .line 1271
    move/from16 v3, p0

    .line 1272
    .line 1273
    move v4, v5

    .line 1274
    move v5, v6

    .line 1275
    move v6, v8

    .line 1276
    move v8, v9

    .line 1277
    move-object v9, v12

    .line 1278
    invoke-direct/range {v0 .. v9}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1279
    .line 1280
    .line 1281
    iget-object v0, v10, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 1282
    .line 1283
    invoke-virtual {v0, v11}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1284
    .line 1285
    .line 1286
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1287
    .line 1288
    return-object v0
.end method

.method private static final gameSearchList$lambda$9(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v9, 0x38

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    move-object v1, v0

    .line 25
    move v4, p0

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final gameSearchList(Z)V
    .locals 8

    .line 1
    new-instance v1, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v1, p1, p0, v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;-><init>(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/join/kotlin/ui/search/viewmodel/c;

    .line 8
    .line 9
    invoke-direct {v2, p1, p0}, Lcom/join/kotlin/ui/search/viewmodel/c;-><init>(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/join/kotlin/ui/search/viewmodel/d;

    .line 13
    .line 14
    invoke-direct {v3, p1, p0}, Lcom/join/kotlin/ui/search/viewmodel/d;-><init>(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x18

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v0, p0

    .line 23
    invoke-static/range {v0 .. v7}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getAllDownloadBeans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLang_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->lang_id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getListData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->plugin_num:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSearch_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->search_status:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAllDownloadBeans(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->allDownloadBeans:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->keyword:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setLang_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->lang_id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->plugin_num:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSearch_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->search_status:I

    .line 2
    .line 3
    return-void
.end method
