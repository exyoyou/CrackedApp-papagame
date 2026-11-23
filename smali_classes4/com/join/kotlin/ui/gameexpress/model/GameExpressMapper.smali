.class public final Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameExpressMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressMapper.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1869#2:151\n1870#2:153\n1068#2:154\n1869#2,2:155\n1#3:152\n*S KotlinDebug\n*F\n+ 1 GameExpressMapper.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMapper\n*L\n32#1:151\n32#1:153\n50#1:154\n50#1:155,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u001dH\u0002J\u0018\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001dH\u0002R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;",
        "",
        "<init>",
        "()V",
        "weekCn",
        "",
        "",
        "[Ljava/lang/String;",
        "engWeekFormat",
        "Ljava/text/SimpleDateFormat;",
        "parse",
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;",
        "data",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;",
        "pageBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "buildListItems",
        "",
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
        "newGameList",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;",
        "applyTrackInfo",
        "",
        "game",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "item",
        "buildTitleItem",
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressTitleItem;",
        "timeMs",
        "",
        "chineseWeekday",
        "isSameCalendarDay",
        "",
        "aMs",
        "bMs",
        "isYesterdayOf",
        "dayMs",
        "nowMs",
        "ParsedResult",
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
        "SMAP\nGameExpressMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressMapper.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n1869#2:151\n1870#2:153\n1068#2:154\n1869#2,2:155\n1#3:152\n*S KotlinDebug\n*F\n+ 1 GameExpressMapper.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMapper\n*L\n32#1:151\n32#1:153\n50#1:154\n50#1:155,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final engWeekFormat:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final weekCn:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    const-string v2, "\u5468\u65e5"

    .line 11
    .line 12
    const-string v3, "\u5468\u4e00"

    .line 13
    .line 14
    const-string v4, "\u5468\u4e8c"

    .line 15
    .line 16
    const-string v5, "\u5468\u4e09"

    .line 17
    .line 18
    const-string v6, "\u5468\u56db"

    .line 19
    .line 20
    const-string v7, "\u5468\u4e94"

    .line 21
    .line 22
    const-string v8, "\u5468\u516d"

    .line 23
    .line 24
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->weekCn:[Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string v1, "EEE"

    .line 33
    .line 34
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->engWeekFormat:Ljava/text/SimpleDateFormat;

    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final applyTrackInfo(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;Lcom/join/mgps/dto/ExtBean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p3, "\u901f\u9012\u5217\u8868"

    .line 31
    .line 32
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p3, "btnDown"

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->isThe_new()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    const-string v1, "new"

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->isThe_update()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    const-string v1, "update"

    .line 58
    .line 59
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 p2, 0x0

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    const/4 p2, 0x1

    .line 71
    :goto_3
    if-nez p2, :cond_6

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    :cond_6
    return-void
.end method

.method private final buildListItems(Ljava/util/List;Lcom/join/mgps/dto/ExtBean;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;",
            ">;",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v2, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$buildListItems$$inlined$sortedByDescending$1;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$buildListItems$$inlined$sortedByDescending$1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    const/4 v4, 0x0

    .line 29
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->getList()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    if-nez v8, :cond_0

    .line 46
    .line 47
    move-object/from16 v14, p2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    sget-object v6, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;

    .line 51
    .line 52
    move-object/from16 v14, p2

    .line 53
    .line 54
    invoke-direct {v6, v8, v5, v14}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->applyTrackInfo(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;Lcom/join/mgps/dto/ExtBean;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->getTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    const/16 v7, 0x3e8

    .line 62
    .line 63
    int-to-long v11, v7

    .line 64
    mul-long v9, v9, v11

    .line 65
    .line 66
    invoke-static {v9, v10}, Lcom/join/mgps/Util/e0;->E(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-nez v11, :cond_1

    .line 75
    .line 76
    new-instance v2, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    .line 77
    .line 78
    const/16 v16, 0x1

    .line 79
    .line 80
    invoke-direct {v6, v9, v10}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->buildTitleItem(J)Lcom/join/kotlin/ui/gameexpress/model/GameExpressTitleItem;

    .line 81
    .line 82
    .line 83
    move-result-object v17

    .line 84
    const/16 v18, 0x0

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    const/16 v20, 0x0

    .line 89
    .line 90
    const/16 v21, 0x1c

    .line 91
    .line 92
    const/16 v22, 0x0

    .line 93
    .line 94
    move-object v15, v2

    .line 95
    invoke-direct/range {v15 .. v22}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;-><init>(ILjava/lang/Object;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    move-object v2, v7

    .line 103
    :cond_1
    if-eqz v4, :cond_2

    .line 104
    .line 105
    new-instance v4, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    .line 106
    .line 107
    const/4 v7, 0x2

    .line 108
    invoke-virtual {v5}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->isThe_new()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    invoke-virtual {v5}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->isThe_update()Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    const/4 v11, 0x0

    .line 117
    const/16 v12, 0x10

    .line 118
    .line 119
    const/4 v13, 0x0

    .line 120
    move-object v6, v4

    .line 121
    invoke-direct/range {v6 .. v13}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;-><init>(ILjava/lang/Object;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    new-instance v15, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    .line 129
    .line 130
    const/4 v7, 0x3

    .line 131
    invoke-virtual {v5}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->isThe_new()Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    invoke-virtual {v5}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->isThe_update()Z

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    const/4 v11, 0x0

    .line 140
    const/16 v12, 0x10

    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    move-object v6, v15

    .line 144
    invoke-direct/range {v6 .. v13}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;-><init>(ILjava/lang/Object;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    return-object v0
.end method

.method private final buildTitleItem(J)Lcom/join/kotlin/ui/gameexpress/model/GameExpressTitleItem;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->isSameCalendarDay(JJ)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "MM.dd"

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "\u4eca\u65e5\u901f\u9012"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->isYesterdayOf(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v2, "\u6628\u5929"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p1, p2, v3}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->isSameCalendarDay(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_3

    .line 34
    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->isYesterdayOf(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sget-object v0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->engWeekFormat:Ljava/text/SimpleDateFormat;

    .line 43
    .line 44
    new-instance v1, Ljava/util/Date;

    .line 45
    .line 46
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "format(...)"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 59
    .line 60
    const-string v3, "US"

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "toUpperCase(...)"

    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    invoke-static {p1, p2, v3}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->chineseWeekday(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p2, Lcom/join/kotlin/ui/gameexpress/model/GameExpressTitleItem;

    .line 84
    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, v2, v0, p1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressTitleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object p2
.end method

.method private final chineseWeekday(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->weekCn:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 p2, 0x7

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    aget-object p1, p1, p2

    .line 16
    .line 17
    return-object p1
.end method

.method private final isSameCalendarDay(JJ)Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-ne p3, p4, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x6

    .line 27
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p4, p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p2, 0x0

    .line 39
    :goto_0
    return p2
.end method

.method private final isYesterdayOf(JJ)Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    const/4 p3, -0x1

    .line 9
    const/4 p4, 0x6

    .line 10
    invoke-virtual {v0, p4, p3}, Ljava/util/Calendar;->add(II)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne p2, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->get(I)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-ne p2, p3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    return p1
.end method


# virtual methods
.method public final parse(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->getThe_new_game_list()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    check-cast v1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressTheNewItem;->getList()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    sget-object v3, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance v1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->getGame_hot_topic_list()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;->getHot_game_comment_list()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->buildListItems(Ljava/util/List;Lcom/join/mgps/dto/ExtBean;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {v1, v2, p1, p2}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    return-object v1
.end method
