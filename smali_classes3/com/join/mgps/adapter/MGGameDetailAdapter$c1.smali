.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c1"
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/join/mgps/customview/CarouselViewPager2;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BannerImage;",
            ">;"
        }
    .end annotation
.end field

.field f:[Landroid/widget/ImageView;

.field final synthetic g:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->d:Landroid/view/View;

    .line 19
    .line 20
    const v0, 0x7f0a126d

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c:Landroid/view/ViewGroup;

    .line 30
    .line 31
    const v0, 0x7f0a17fd

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/mgps/customview/CarouselViewPager2;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 41
    .line 42
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;

    .line 43
    .line 44
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$a;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Lcom/join/mgps/adapter/MGGameDetailAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0a11a4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/FrameLayout;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;)Lcom/join/mgps/customview/CarouselViewPager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->d(Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tablesBeanListB",
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getJump_type()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getLink_type()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x1

    .line 66
    if-ne v1, v2, :cond_1

    .line 67
    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getTpl_type()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 126
    .line 127
    invoke-static {p2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bannerBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lcom/join/mgps/dto/BannerImage;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/join/mgps/dto/BannerImage;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v3, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const v5, 0x7f08018d

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v5, v4}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/BannerImage;->setImageView(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/BannerImage;->setUrl(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;

    .line 73
    .line 74
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1$b;-><init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const v2, 0x7f071015

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const v3, 0x7f071014

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iget-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c:Landroid/view/ViewGroup;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    new-array v3, v3, [Landroid/widget/ImageView;

    .line 127
    .line 128
    iput-object v3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 129
    .line 130
    const/4 v3, 0x0

    .line 131
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 132
    .line 133
    array-length v5, v4

    .line 134
    const/4 v6, 0x1

    .line 135
    if-ge v3, v5, :cond_3

    .line 136
    .line 137
    const/16 v5, 0x8

    .line 138
    .line 139
    if-le v3, v5, :cond_1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_1
    new-instance v5, Landroid/widget/ImageView;

    .line 143
    .line 144
    iget-object v7, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 145
    .line 146
    invoke-static {v7}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    aput-object v5, v4, v3

    .line 154
    .line 155
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .line 157
    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 161
    .line 162
    invoke-virtual {v4, v1, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 163
    .line 164
    .line 165
    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 166
    .line 167
    aget-object v5, v5, v3

    .line 168
    .line 169
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    if-nez v3, :cond_2

    .line 173
    .line 174
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 175
    .line 176
    aget-object v4, v4, v3

    .line 177
    .line 178
    const v5, 0x7f080f2e

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 186
    .line 187
    aget-object v4, v4, v3

    .line 188
    .line 189
    const v5, 0x7f080f2c

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 193
    .line 194
    .line 195
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->c:Landroid/view/ViewGroup;

    .line 196
    .line 197
    iget-object v5, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->f:[Landroid/widget/ImageView;

    .line 198
    .line 199
    aget-object v5, v5, v3

    .line 200
    .line 201
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 208
    .line 209
    if-eqz v1, :cond_5

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_5

    .line 216
    .line 217
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    .line 218
    .line 219
    const/4 v2, 0x4

    .line 220
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 224
    .line 225
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-ne v1, v6, :cond_4

    .line 235
    .line 236
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Lcom/join/mgps/dto/BannerImage;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerImage;->getImageView()Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->e:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Lcom/join/mgps/dto/BannerImage;

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerImage;->getUrl()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {p1, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    .line 264
    .line 265
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->a:Landroid/widget/FrameLayout;

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 274
    .line 275
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_4
    new-instance v0, Lcom/join/mgps/adapter/d7;

    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    .line 282
    .line 283
    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 288
    .line 289
    invoke-direct {v0, v1, v2, p1}, Lcom/join/mgps/adapter/d7;-><init>(Landroid/content/Context;Lcom/join/mgps/customview/CarouselViewPager2;Ljava/util/List;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 293
    .line 294
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$c1;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 298
    .line 299
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 304
    .line 305
    .line 306
    :cond_5
    :goto_4
    return-void
.end method
