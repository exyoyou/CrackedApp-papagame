.class public Lcom/join/mgps/activity/GameSearchFavoriteActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0065
.end annotation


# static fields
.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field private static final v:I = 0xa


# instance fields
.field b:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field c:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/adapter/u4;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field n:Lcom/join/mgps/rpc/i;

.field o:Lcom/join/mgps/rpc/e;

.field p:Ljava/lang/String;

.field private q:Z

.field private r:I

.field s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:Z

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 16
    .line 17
    const/16 v0, 0x14

    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->s:I

    .line 20
    .line 21
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/GameSearchFavoriteActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 2
    .line 3
    return p1
.end method

.method private f()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method c()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o:Lcom/join/mgps/rpc/e;

    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->b:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g:Landroid/widget/TextView;

    .line 22
    .line 23
    const-string v4, "\u6211\u7684\u6536\u85cf"

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->d:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->d:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    const v1, 0x7f0a014e

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$a;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$a;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->d:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e:Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c:Landroid/widget/EditText;

    .line 77
    .line 78
    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 87
    .line 88
    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$d;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$d;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    new-instance v0, Lcom/join/mgps/adapter/u4;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l:Ljava/util/List;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/u4;-><init>(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->k:Lcom/join/mgps/adapter/u4;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 111
    .line 112
    new-instance v1, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;-><init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->b:I

    .line 126
    .line 127
    if-ne v0, v3, :cond_1

    .line 128
    .line 129
    invoke-direct {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->f()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Landroid/widget/LinearLayout;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void
.end method

.method d()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method e()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_4

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->p:Ljava/lang/String;

    .line 8
    .line 9
    iget v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 10
    .line 11
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->g(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o:Lcom/join/mgps/rpc/e;

    .line 16
    .line 17
    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/e;->S0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/SearchAppBean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchAppBean;->getMessages()Lcom/join/mgps/dto/SearchAppMessageBean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchAppMessageBean;->getData()Lcom/join/mgps/dto/SearchResultData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultData;->getList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget v4, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->s:I

    .line 53
    .line 54
    if-lt v3, v4, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:Z

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 61
    .line 62
    if-le v3, v2, :cond_3

    .line 63
    .line 64
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:Z

    .line 65
    .line 66
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :catch_0
    nop

    .line 71
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 72
    .line 73
    if-gt v0, v2, :cond_b

    .line 74
    .line 75
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n:Lcom/join/mgps/rpc/i;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->m:Lcom/join/mgps/Util/b;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget v4, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 90
    .line 91
    invoke-interface {v0, v3, v4}, Lcom/join/mgps/rpc/i;->s0(Ljava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    if-eqz v0, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-nez v3, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/util/List;

    .line 116
    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-lez v3, :cond_8

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/16 v4, 0xa

    .line 130
    .line 131
    if-lt v3, v4, :cond_7

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    :cond_7
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:Z

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_8
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:Z

    .line 138
    .line 139
    :goto_1
    iget v1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 140
    .line 141
    if-gt v1, v2, :cond_9

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h()V

    .line 144
    .line 145
    .line 146
    :cond_9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o(Ljava/util/List;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_a
    :goto_2
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 151
    .line 152
    if-gt v0, v2, :cond_b

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :catch_1
    nop

    .line 159
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 160
    .line 161
    if-gt v0, v2, :cond_b

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l()V

    .line 164
    .line 165
    .line 166
    :cond_b
    :goto_3
    return-void
.end method

.method g(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "KEYWORD",
            "Page"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "searchInfo"

    .line 6
    .line 7
    iget v4, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->s:I

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v2, p1

    .line 12
    move v3, p2

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method h()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method j()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method k()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method l()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method m()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method n(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-gt v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    .line 26
    .line 27
    :cond_1
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->l:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 43
    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->q:Z

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 56
    .line 57
    add-int/2addr p1, v1

    .line 58
    iput p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->r:I

    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->j:Lcom/join/mgps/customview/XListView2;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->k:Lcom/join/mgps/adapter/u4;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
