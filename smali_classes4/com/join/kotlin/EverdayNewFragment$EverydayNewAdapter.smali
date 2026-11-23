.class public final Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/EverdayNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EverydayNewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0010H\u0014J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0014J\u001a\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "<init>",
        "()V",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "getItemViewType",
        "position",
        "list",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "item",
        "bindGameUI",
        "itemData",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "updateGameUI",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;
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
    .locals 11

    .line 1
    new-instance v0, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->Companion:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    const-string v1, "EEE"

    .line 12
    .line 13
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->engWeekFormat:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    const-string v4, "\u5468\u65e5"

    .line 23
    .line 24
    const-string v5, "\u5468\u4e00"

    .line 25
    .line 26
    const-string v6, "\u5468\u4e8c"

    .line 27
    .line 28
    const-string v7, "\u5468\u4e09"

    .line 29
    .line 30
    const-string v8, "\u5468\u56db"

    .line 31
    .line 32
    const-string v9, "\u5468\u4e94"

    .line 33
    .line 34
    const-string v10, "\u5468\u516d"

    .line 35
    .line 36
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->weekCn:[Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getWeekCn$cp()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->weekCn:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final bindGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const v2, 0x7f0a1a3b

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v1, v0

    .line 24
    :goto_1
    const v2, 0x7f0a1a3f

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move-object v1, v0

    .line 38
    :goto_2
    if-eqz p2, :cond_3

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move-object v2, v0

    .line 46
    :goto_3
    const-string v3, " | "

    .line 47
    .line 48
    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v2, 0x7f0a1a3d

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    move-object v1, v0

    .line 66
    :goto_4
    const v3, 0x7f0a1a3c

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v3, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-ne v4, v1, :cond_5

    .line 81
    .line 82
    const/4 v4, 0x1

    .line 83
    goto :goto_5

    .line 84
    :cond_5
    const/4 v4, 0x0

    .line 85
    :goto_5
    const v5, 0x7f0a09fe

    .line 86
    .line 87
    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    invoke-virtual {p1, v5, v3}, Lv2/c;->h(IZ)Lv2/c;

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    invoke-virtual {p1, v5, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 95
    .line 96
    .line 97
    :goto_6
    const v1, 0x7f0a14a2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lv2/c;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 105
    .line 106
    if-eqz p2, :cond_7

    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_7
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const v1, 0x7f0a1a3e

    .line 127
    .line 128
    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v3, "getSize(...)"

    .line 136
    .line 137
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    const/16 v0, 0x400

    .line 145
    .line 146
    int-to-double v5, v0

    .line 147
    mul-double v3, v3, v5

    .line 148
    .line 149
    mul-double v3, v3, v5

    .line 150
    .line 151
    double-to-long v3, v3

    .line 152
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v1, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 157
    .line 158
    .line 159
    :cond_8
    const v0, 0x7f0a06d8

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual {p1, v0, v3}, Lv2/c;->h(IZ)Lv2/c;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual {p1, v2, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-virtual {p1, v1, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 181
    .line 182
    .line 183
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 184
    .line 185
    new-instance v1, Lcom/join/kotlin/d;

    .line 186
    .line 187
    invoke-direct {v1, p2, p0}, Lcom/join/kotlin/d;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->updateGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method private static final bindGameUI$lambda$0(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1, p0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->bindGameUI$lambda$0(Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getItemViewType(ILjava/util/List;)I
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->onBindViewHolder(Lv2/c;ILcom/psk/kotlin/util/CommonListMainData;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/psk/kotlin/util/CommonListMainData;)V
    .locals 5
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/psk/kotlin/util/CommonListMainData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    const-string p2, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->bindGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {p3}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 6
    sget-object v0, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->Companion:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;

    invoke-static {v0, p2, p3}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;->access$titleMainText(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;J)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a1767

    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 8
    invoke-static {v0, p2, p3, v1, v2}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;->access$isSameCalendarDay(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;JJ)Z

    move-result v3

    const-string v4, "MM.dd"

    if-eqz v3, :cond_4

    invoke-static {p2, p3, v4}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {v0, p2, p3, v1, v2}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;->access$isYesterdayOf(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2, p3, v4}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_5
    sget-object v1, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->engWeekFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toUpperCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const v2, 0x7f0a1a3b

    .line 11
    invoke-virtual {p1, v2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    const v1, 0x7f0a1a3c

    .line 12
    invoke-static {v0, p2, p3}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;->access$chineseWeekday(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter$Companion;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 2
    new-instance p2, Lv2/c;

    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p3}, Lv2/c;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p1, Lv2/c;

    const p3, 0x7f0d0493

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lv2/c;

    const p3, 0x7f0d025a

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public final updateGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a054e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 14
    .line 15
    new-instance v0, Lm6/c;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
