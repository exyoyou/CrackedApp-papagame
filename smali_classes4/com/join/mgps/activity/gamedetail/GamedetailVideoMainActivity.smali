.class public Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d033e
.end annotation


# static fields
.field private static final BUNDLE_FRAGMENTS_KEY:Ljava/lang/String; = "android:support:fragments"

.field private static final OPTION_VIEW:Ljava/lang/String; = "view"

.field public static hasInAnim:Z


# instance fields
.field autodown:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field backImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private detailTabDarkColor:Z

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field fragment:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

.field fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isFromVideo:Z

.field isShowComment:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field iv_back:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_new:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_old:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mainCover:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field main_content:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

.field pageExtbean:Lcom/join/mgps/dto/ExtBean;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field setNetwork:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field showCover:Z

.field statuHVIew:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private statubarH:I

.field private tabTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tablayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tintManager:Lcom/join/android/app/common/manager/b;

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewpager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field xoffW:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tabTitles:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragments:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->detailTabDarkColor:Z

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    .line 34
    .line 35
    const/16 v1, 0xc8

    .line 36
    .line 37
    iput v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    .line 40
    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->refreshTab()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragments:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private backCheck()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->backpressedTofinishActivity()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "status_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method private refreshTab()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->detailTabDarkColor:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backImg:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v2, 0x7f080181

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backImg:Landroid/widget/ImageView;

    .line 23
    .line 24
    const v2, 0x7f08017e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ge v2, v3, :cond_7

    .line 39
    .line 40
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_6

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_6

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const v5, 0x7f0a1a35

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const v6, 0x7f0a19e4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->o()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v6, -0x1

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    const-string v3, "sans-serif-medium"

    .line 88
    .line 89
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    .line 95
    .line 96
    const/high16 v3, -0x1000000

    .line 97
    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    iget-boolean v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->detailTabDarkColor:Z

    .line 101
    .line 102
    if-nez v7, :cond_1

    .line 103
    .line 104
    const/4 v7, -0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    const/high16 v7, -0x1000000

    .line 107
    .line 108
    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->detailTabDarkColor:Z

    .line 114
    .line 115
    if-nez v4, :cond_2

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    const/high16 v6, -0x1000000

    .line 119
    .line 120
    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 125
    .line 126
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    .line 128
    .line 129
    const-string v3, "#919191"

    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    iget-boolean v7, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->detailTabDarkColor:Z

    .line 134
    .line 135
    if-nez v7, :cond_4

    .line 136
    .line 137
    const/4 v7, -0x1

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    if-nez v0, :cond_5

    .line 147
    .line 148
    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->detailTabDarkColor:Z

    .line 149
    .line 150
    if-nez v4, :cond_5

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_5
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_7
    return-void
.end method

.method private sendPoint(Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialType"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getLocation()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {v0, v5}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getDataFlag()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v5, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->getKeyword()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v6, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->getWhere()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v15, v0

    .line 58
    move-object/from16 v16, v5

    .line 59
    .line 60
    move-object/from16 v17, v6

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object v3, v2

    .line 64
    move-object v4, v3

    .line 65
    move-object v15, v4

    .line 66
    move-object/from16 v16, v15

    .line 67
    .line 68
    move-object/from16 v17, v16

    .line 69
    .line 70
    :goto_1
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v3, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v3, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    move-object v10, v0

    .line 108
    move-object v12, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move-object v10, v3

    .line 111
    move-object v12, v4

    .line 112
    :goto_2
    const-string v0, "112"

    .line 113
    .line 114
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    const-string v0, "147"

    .line 121
    .line 122
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    :cond_3
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getReMarks()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    :cond_4
    move-object v14, v2

    .line 135
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 136
    .line 137
    const-string v2, "detail"

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    iget-object v3, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 142
    .line 143
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 144
    .line 145
    .line 146
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 147
    .line 148
    invoke-virtual {v0, v10}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    .line 151
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setPapaPage(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 157
    .line 158
    const-string v3, "page"

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 161
    .line 162
    .line 163
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 166
    .line 167
    .line 168
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 169
    .line 170
    iget-object v2, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 173
    .line 174
    .line 175
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 176
    .line 177
    iget-object v2, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_5
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 184
    .line 185
    invoke-virtual {v0, v10}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 186
    .line 187
    .line 188
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setPapaPage(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 191
    .line 192
    .line 193
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 196
    .line 197
    .line 198
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 199
    .line 200
    iget-object v2, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 203
    .line 204
    .line 205
    :goto_3
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 206
    .line 207
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    iget-object v8, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 214
    .line 215
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    iget-object v0, v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 234
    .line 235
    .line 236
    move-result-object v18

    .line 237
    move-object/from16 v11, p1

    .line 238
    .line 239
    move-object/from16 v13, p1

    .line 240
    .line 241
    invoke-virtual/range {v7 .. v18}, Lcom/papa/sim/statistic/t;->x2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public static startTActivity(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZLcom/join/mgps/dto/ExtBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "transitionView",
            "gameId",
            "autodown",
            "extBean"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;

    .line 4
    .line 5
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "isFromVideo"

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const-string v0, "gameId"

    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string p2, "autodown"

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p2, "extBean"

    .line 25
    .line 26
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getStatusBarHeight(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statubarH:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statuHVIew:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16
    .line 17
    iget v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statubarH:I

    .line 18
    .line 19
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statuHVIew:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x7f071375

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getDetialData()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method animFinish()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x258L
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 3
    .line 4
    return-void
.end method

.method public autoPlayVideo(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topvideo_view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method backImg()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected clearFragmentsTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clickBack()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backCheck()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->clearVideo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getDetailPageExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method getDetialData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/join/kotlin/discount/model/request/GameDetailRequest;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lq5/f;->B()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v2, v3, v0, v4}, Lcom/join/kotlin/discount/model/request/GameDetailRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lb7/i;->n(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/16 v2, 0xc8

    .line 94
    .line 95
    if-ne v1, v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;->getWf_data()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;->getWf_data()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;->getDiscount_data()Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;->getDiscount_data()Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->updateNewUi(Lcom/join/kotlin/discount/model/bean/GameDetailBean;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLodingFailed()V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLodingFailed()V

    .line 144
    .line 145
    .line 146
    :goto_0
    return-void
.end method

.method public getModleFourBeanShow()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModleFourFragment()Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTabBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewpagerCurrentPage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public gethideOrshowCover()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    .line 2
    .line 3
    return v0
.end method

.method hideLoadingDelay()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0xc8L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->main_content:Landroid/view/View;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->mainCover:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method iv_back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backCheck()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->clearVideo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDestroy()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->backCheck()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;->onBackPressedMy()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->clearFragmentsTag()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "android:support:fragments"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->clearFragmentsTag()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "android:support:fragments"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getDetialData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method scroolToposition()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x4e2L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->xoffW:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public selectTab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTabIsDarkColor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDark"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->detailTabDarkColor:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->refreshTab()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method shakeAnim()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x258

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$5;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$5;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public shakeAnimback()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x258

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$6;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$6;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->animFinish()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstIntentgamedetialVideo()Lorg/androidannotations/api/sharedpreferences/d;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setNetwork:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setNetwork:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method updateNewUi(Lcom/join/kotlin/discount/model/bean/GameDetailBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newGameBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string p1, "0"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->layout_old:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->layout_new:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hideLoadingDelay()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tabTitles:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tabTitles:Ljava/util/ArrayList;

    .line 28
    .line 29
    const-string v2, "\u8be6\u60c5"

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tabTitles:Ljava/util/ArrayList;

    .line 35
    .line 36
    const-string v2, "\u8bc4\u4ef7"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tabTitles:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->I()Lcom/google/android/material/tabs/TabLayout$g;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const v4, 0x7f0d059f

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const v5, 0x7f0a1a35

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const v6, 0x7f0a19e4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    const/4 v2, -0x1

    .line 102
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->i(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 115
    .line 116
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragments:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    const/4 p1, 0x0

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tabTitles:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-ge p1, v0, :cond_3

    .line 137
    .line 138
    new-instance v0, Landroid/os/Bundle;

    .line 139
    .line 140
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->tabTitles:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/lang/String;

    .line 150
    .line 151
    const-string v3, "type"

    .line 152
    .line 153
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v2, "gameId"

    .line 157
    .line 158
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const-string v3, "parentExtBean"

    .line 174
    .line 175
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    if-nez p1, :cond_1

    .line 179
    .line 180
    new-instance v2, Lcom/join/kotlin/discount/GameDetailFragment;

    .line 181
    .line 182
    invoke-direct {v2}, Lcom/join/kotlin/discount/GameDetailFragment;-><init>()V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_1
    const/4 v2, 0x1

    .line 187
    if-ne p1, v2, :cond_2

    .line 188
    .line 189
    new-instance v2, Lcom/join/kotlin/discount/GameDetailCommentListFragment;

    .line 190
    .line 191
    invoke-direct {v2}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;-><init>()V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_2
    new-instance v2, Lcom/join/kotlin/discount/GameDetailFragment;

    .line 196
    .line 197
    invoke-direct {v2}, Lcom/join/kotlin/discount/GameDetailFragment;-><init>()V

    .line 198
    .line 199
    .line 200
    :goto_2
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragments:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    add-int/lit8 p1, p1, 0x1

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 212
    .line 213
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;

    .line 214
    .line 215
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$3;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Landroidx/fragment/app/FragmentActivity;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 222
    .line 223
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$4;

    .line 224
    .line 225
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$4;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 232
    .line 233
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modleFourBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->layout_old:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->layout_new:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->f(Ljava/util/List;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 61
    .line 62
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-object v5, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-class v6, Lcom/join/mgps/dto/VolcanoOther;

    .line 73
    .line 74
    invoke-virtual {v4, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lcom/join/mgps/dto/VolcanoOther;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->setPosition_path(Lcom/join/mgps/dto/VolcanoOther;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVideo_and_cover()Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "autodown"

    .line 88
    .line 89
    const-string v5, "isFromVideo"

    .line 90
    .line 91
    const-string v6, "extBean"

    .line 92
    .line 93
    const-string v7, "gameId"

    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;->getVideo_url()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-static {v9}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_4

    .line 107
    .line 108
    iget v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->from:I

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    if-ne v9, v10, :cond_4

    .line 112
    .line 113
    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->main_content:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v9, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 144
    .line 145
    invoke-virtual {v9}, Lcom/join/mgps/pref/PrefDef_;->firstIntentgamedetialVideo()Lorg/androidannotations/api/sharedpreferences/d;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v9}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_1

    .line 160
    .line 161
    iput-boolean v8, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    .line 162
    .line 163
    sput-boolean v8, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 164
    .line 165
    :cond_1
    new-instance v10, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;

    .line 166
    .line 167
    invoke-direct {v10}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v10, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-virtual {v10, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_2

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-virtual {v10, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    iput-object v10, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    invoke-virtual {v10, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    iput-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    .line 211
    .line 212
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 213
    .line 214
    :cond_2
    const-string v1, "1"

    .line 215
    .line 216
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v1, Landroid/os/Bundle;

    .line 220
    .line 221
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v4, "videoDatas"

    .line 225
    .line 226
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 227
    .line 228
    .line 229
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 230
    .line 231
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 232
    .line 233
    .line 234
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v1, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 240
    .line 241
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    .line 243
    .line 244
    new-instance v1, Lcom/join/mgps/adapter/h0$a;

    .line 245
    .line 246
    const-string v3, "\u89c6\u9891"

    .line 247
    .line 248
    iget-object v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentVideo:Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;

    .line 249
    .line 250
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_switch()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    const-string v1, "\u8be6\u60c5"

    .line 261
    .line 262
    if-ne p1, v8, :cond_3

    .line 263
    .line 264
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 265
    .line 266
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 267
    .line 268
    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 269
    .line 270
    iget-boolean v6, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isShowComment:Z

    .line 271
    .line 272
    invoke-static {p1, v3, v4, v5, v6}, Lcom/join/mgps/activity/s2;->n0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZZ)Lcom/join/mgps/activity/s2;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 277
    .line 278
    new-instance v3, Lcom/join/mgps/adapter/h0$a;

    .line 279
    .line 280
    invoke-direct {v3, v1, p1}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto :goto_0

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 290
    .line 291
    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 292
    .line 293
    iget-boolean v6, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isShowComment:Z

    .line 294
    .line 295
    invoke-static {p1, v3, v4, v5, v6}, Lcom/join/mgps/activity/b3;->r0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZZ)Lcom/join/mgps/activity/b3;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 300
    .line 301
    new-instance v3, Lcom/join/mgps/adapter/h0$a;

    .line 302
    .line 303
    invoke-direct {v3, v1, p1}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :goto_0
    new-instance p1, Lcom/join/mgps/adapter/h0;

    .line 310
    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {p1, v1, v2}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 319
    .line 320
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 324
    .line 325
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;

    .line 326
    .line 327
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$1;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;Z)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 331
    .line 332
    .line 333
    if-eqz v9, :cond_8

    .line 334
    .line 335
    iput-boolean v8, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showCover:Z

    .line 336
    .line 337
    sput-boolean v8, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hasInAnim:Z

    .line 338
    .line 339
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->shakeAnim()V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->main_content:Landroid/view/View;

    .line 345
    .line 346
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->mainCover:Landroid/view/View;

    .line 350
    .line 351
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    .line 355
    .line 356
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hideLoadingDelay()V

    .line 360
    .line 361
    .line 362
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragment:Landroid/widget/FrameLayout;

    .line 363
    .line 364
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    iput-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    .line 384
    .line 385
    if-eqz v3, :cond_5

    .line 386
    .line 387
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    iput-object v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    iput-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 406
    .line 407
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    .line 416
    .line 417
    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 418
    .line 419
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBt_game_switch()I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    const v1, 0x7f0a06c2

    .line 424
    .line 425
    .line 426
    if-ne p1, v8, :cond_6

    .line 427
    .line 428
    const-string p1, "2"

    .line 429
    .line 430
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 434
    .line 435
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 436
    .line 437
    iget-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 438
    .line 439
    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    .line 440
    .line 441
    iget-boolean v5, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isShowComment:Z

    .line 442
    .line 443
    invoke-static {p1, v0, v3, v4, v5}, Lcom/join/mgps/activity/s2;->n0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZZ)Lcom/join/mgps/activity/s2;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 448
    .line 449
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 450
    .line 451
    .line 452
    goto :goto_2

    .line 453
    :cond_6
    if-eqz v0, :cond_7

    .line 454
    .line 455
    const-string p1, "3"

    .line 456
    .line 457
    goto :goto_1

    .line 458
    :cond_7
    const-string p1, "0"

    .line 459
    .line 460
    :goto_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->sendPoint(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    .line 464
    .line 465
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->pageExtbean:Lcom/join/mgps/dto/ExtBean;

    .line 466
    .line 467
    iget-boolean v3, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    .line 468
    .line 469
    iget-boolean v4, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isFromVideo:Z

    .line 470
    .line 471
    iget-boolean v5, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->isShowComment:Z

    .line 472
    .line 473
    invoke-static {p1, v0, v3, v4, v5}, Lcom/join/mgps/activity/b3;->r0(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;ZZZ)Lcom/join/mgps/activity/b3;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragmentDetial:Lcom/join/mgps/activity/gamedetail/BaseGameDetailFragment;

    .line 478
    .line 479
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 480
    .line 481
    .line 482
    :goto_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 483
    .line 484
    .line 485
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 486
    .line 487
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    if-eqz p1, :cond_a

    .line 492
    .line 493
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 494
    .line 495
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_a

    .line 508
    .line 509
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 514
    .line 515
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    const-string v1, "242"

    .line 520
    .line 521
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_9

    .line 526
    .line 527
    :try_start_0
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 528
    .line 529
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 530
    .line 531
    .line 532
    const-string v0, "discount_game"

    .line 533
    .line 534
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 535
    .line 536
    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 546
    .line 547
    .line 548
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 549
    .line 550
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 551
    .line 552
    .line 553
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->modleFourBeanShow:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 560
    .line 561
    .line 562
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->context:Landroid/content/Context;

    .line 563
    .line 564
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    sget-object v2, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 569
    .line 570
    invoke-virtual {v1, v2, p1, v0}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .line 572
    .line 573
    goto :goto_4

    .line 574
    :catch_0
    move-exception p1

    .line 575
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    .line 577
    .line 578
    :cond_a
    :goto_4
    return-void
.end method
