.class public final Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonZoneAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonZoneAdapter.kt\ncom/join/kotlin/zone/adapter/CommonZoneAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,219:1\n55#2:220\n55#2:221\n55#2:222\n55#2:223\n55#2:224\n55#2:225\n*S KotlinDebug\n*F\n+ 1 CommonZoneAdapter.kt\ncom/join/kotlin/zone/adapter/CommonZoneAdapter\n*L\n34#1:220\n47#1:221\n60#1:222\n84#1:223\n131#1:224\n154#1:225\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u0013\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J*\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J*\u0010\u0011\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00122\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;",
        "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
        "<init>",
        "()V",
        "videoHelper",
        "Lcom/join/android/app/component/video/RvListVideoHelper;",
        "(Lcom/join/android/app/component/video/RvListVideoHelper;)V",
        "fillLabel",
        "",
        "view",
        "Landroid/widget/TextView;",
        "tag_info",
        "",
        "Lcom/join/mgps/dto/TipBean;",
        "sp_tag_info",
        "Lcom/join/mgps/dto/TipNew;",
        "addTags",
        "Landroid/widget/LinearLayout;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonZoneAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonZoneAdapter.kt\ncom/join/kotlin/zone/adapter/CommonZoneAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,219:1\n55#2:220\n55#2:221\n55#2:222\n55#2:223\n55#2:224\n55#2:225\n*S KotlinDebug\n*F\n+ 1 CommonZoneAdapter.kt\ncom/join/kotlin/zone/adapter/CommonZoneAdapter\n*L\n34#1:220\n47#1:221\n60#1:222\n84#1:223\n131#1:224\n154#1:225\n*E\n"
    }
.end annotation


# static fields
.field public static final AD_PIC:I = 0x1

.field public static final CARD_GAME_INFO_BOTTOM:I = 0x3

.field public static final CARD_GAME_INFO_BOTTOM_VIDEO:I = 0x6

.field public static final CARD_GAME_INFO_INNER_BOTTOM:I = 0x4

.field public static final Companion:Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ITEM_GAME_INFO_BOTTOM:I = 0x5

.field public static final TITLE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;->Companion:Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/join/android/app/component/video/h;)V
    .locals 4
    .param p1    # Lcom/join/android/app/component/video/h;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;-><init>()V

    .line 3
    new-instance v0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$1;

    invoke-direct {v0}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$1;-><init>()V

    const/4 v1, 0x1

    .line 4
    const-class v2, Lv2/a;

    invoke-virtual {p0, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$2;

    invoke-direct {v1}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$2;-><init>()V

    const/4 v3, 0x2

    .line 6
    invoke-virtual {v0, v3, v2, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$3;

    invoke-direct {v1, p0}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$3;-><init>(Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;)V

    const/4 v3, 0x3

    .line 8
    invoke-virtual {v0, v3, v2, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4;

    invoke-direct {v1, p1, p0}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4;-><init>(Lcom/join/android/app/component/video/h;Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;)V

    const/4 p1, 0x6

    .line 10
    invoke-virtual {v0, p1, v2, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$5;

    invoke-direct {v0, p0}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$5;-><init>(Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;)V

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$6;

    invoke-direct {v0, p0}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$6;-><init>(Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;)V

    const/4 v1, 0x5

    .line 14
    invoke-virtual {p1, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 15
    new-instance p1, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$7;

    invoke-direct {p1}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$7;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    return-void
.end method


# virtual methods
.method public final addTags(Landroid/widget/LinearLayout;Ljava/util/List;Lcom/join/mgps/dto/TipNew;)V
    .locals 10
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/TipNew;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Lcom/join/mgps/dto/TipNew;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a1a37

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0d04b1

    .line 11
    .line 12
    .line 13
    const v2, 0x7f07133d

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, -0x2

    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    .line 28
    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    float-to-int v6, v6

    .line 44
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v9, "\u5e73\u53f0: "

    .line 66
    .line 67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p3}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 81
    .line 82
    invoke-virtual {p3, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    const-string v9, "toUpperCase(...)"

    .line 87
    .line 88
    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object p3, v3

    .line 93
    :goto_0
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    if-eqz p2, :cond_3

    .line 107
    .line 108
    move-object p3, p2

    .line 109
    check-cast p3, Ljava/util/Collection;

    .line 110
    .line 111
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    xor-int/lit8 p3, p3, 0x1

    .line 116
    .line 117
    if-eqz p3, :cond_3

    .line 118
    .line 119
    const/4 p3, 0x0

    .line 120
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lcom/join/mgps/dto/TipBean;

    .line 125
    .line 126
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {p3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    float-to-int v2, v2

    .line 144
    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v2, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/widget/TextView;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_1
    return-void
.end method

.method public final fillLabel(Landroid/widget/TextView;Ljava/util/List;Lcom/join/mgps/dto/TipNew;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/TipNew;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Lcom/join/mgps/dto/TipNew;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, " | "

    .line 5
    .line 6
    invoke-static {p3, p2, v0}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
