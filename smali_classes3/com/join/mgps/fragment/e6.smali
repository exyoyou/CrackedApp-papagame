.class public Lcom/join/mgps/fragment/e6;
.super Lcom/join/mgps/basefragment/a;
.source "SourceFile"

# interfaces
.implements Lw6/a$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02c9
.end annotation


# instance fields
.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/rpc/o;

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Z

.field private n:Lcom/join/mgps/adapter/s4;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/join/mgps/dto/AccountVoucherAd;

.field private q:Z

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/e6;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/e6;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 6
    .line 7
    return v0
.end method


# virtual methods
.method protected P()I
    .locals 1

    .line 1
    const v0, 0x7f0d02c9

    return v0
.end method

.method public Q()I
    .locals 1

    .line 1
    const v0, 0x7f0a0e2e

    return v0
.end method

.method public a0()Lcom/join/mgps/dto/AccountVoucherAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->p:Lcom/join/mgps/dto/AccountVoucherAd;

    .line 2
    .line 3
    return-object v0
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/n;->i()Lcom/join/mgps/rpc/impl/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->e:Lcom/join/mgps/rpc/o;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->r:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/adapter/s4;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/s4;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->n:Lcom/join/mgps/adapter/s4;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 39
    .line 40
    const/16 v1, 0xa

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/fragment/e6$a;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/e6$a;-><init>(Lcom/join/mgps/fragment/e6;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/fragment/e6$b;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/e6$b;-><init>(Lcom/join/mgps/fragment/e6;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v1, 0x7f0d081f

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->h:Landroid/view/View;

    .line 82
    .line 83
    const v1, 0x7f0a14be

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->k:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->h:Landroid/view/View;

    .line 95
    .line 96
    const v1, 0x7f0a103a

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->l:Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->h:Landroid/view/View;

    .line 108
    .line 109
    const v1, 0x7f0a1036

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/TextView;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->i:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->h:Landroid/view/View;

    .line 121
    .line 122
    const v1, 0x7f0a16c7

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/fragment/e6;->j:Landroid/widget/TextView;

    .line 132
    .line 133
    const v1, 0x7f12055d

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->i:Landroid/widget/TextView;

    .line 144
    .line 145
    const v1, 0x7f12055c

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/fragment/e6;->h:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0, p0}, Lw6/a;->a(Lw6/a$a;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->loadData()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method b0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/HotVoucherActivity_;->intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/HotVoucherActivity_$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method c0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method d0(Lcom/join/mgps/dto/PapayVoucherResultMain;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/PapayVoucherResultMain<",
            "Lcom/join/mgps/dto/ResultMyVoucherBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/ResultMyVoucherBean;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMyVoucherBean;->getRecommend()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/fragment/e6;->m:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->l:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->k:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    const v1, 0x7f0813b6

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->l:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->k:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v1, 0x7f060021

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->g0()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->c0()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->g()V

    .line 71
    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-lez p1, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->e()V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void
.end method

.method e0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f12031e

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method f0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method g0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/e6;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->k:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->k:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->g()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->q()V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/e6;->q:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->f:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->f:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->n:Lcom/join/mgps/adapter/s4;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method h0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public loadData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->r:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "uid"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/fragment/e6;->r:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "token"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/fragment/e6;->r:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "page"

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget v3, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, ""

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "limit"

    .line 72
    .line 73
    const-string v2, "10"

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/fragment/e6;->e:Lcom/join/mgps/rpc/o;

    .line 79
    .line 80
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/o;->f(Ljava/util/Map;)Lcom/join/mgps/dto/PapayVoucherResultMain;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getError()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/4 v2, 0x1

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/join/mgps/dto/ResultMyVoucherBean;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMyVoucherBean;->getCoupons()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lcom/join/mgps/dto/ResultMyVoucherBean;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMyVoucherBean;->getAd()Lcom/join/mgps/dto/AccountVoucherAd;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iput-object v3, p0, Lcom/join/mgps/fragment/e6;->p:Lcom/join/mgps/dto/AccountVoucherAd;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapayVoucherResultMain;->getData()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/join/mgps/dto/ResultMyVoucherBean;

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMyVoucherBean;->is_show_recommend_bar()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    iput-boolean v3, p0, Lcom/join/mgps/fragment/e6;->q:Z

    .line 126
    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-lez v3, :cond_2

    .line 134
    .line 135
    iget v0, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 136
    .line 137
    if-ne v0, v2, :cond_1

    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/join/mgps/fragment/e6;->m:Z

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    .line 157
    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->g0()V

    .line 159
    .line 160
    .line 161
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/16 v1, 0xa

    .line 166
    .line 167
    if-gt v0, v1, :cond_8

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->c0()V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    iget v1, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 174
    .line 175
    if-ne v1, v2, :cond_8

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e6;->d0(Lcom/join/mgps/dto/PapayVoucherResultMain;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    iget v1, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 182
    .line 183
    if-ne v1, v2, :cond_8

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e6;->d0(Lcom/join/mgps/dto/PapayVoucherResultMain;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    iget v0, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 190
    .line 191
    if-ne v0, v2, :cond_5

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->showLodingFailed()V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->c0()V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->showLodingFailed()V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->showLodingFailed()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->e0()V

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->f0()V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public onAppMsgChange()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/e6;->g:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->d:Lcom/join/mgps/customview/XListView2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->q()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/e6;->loadData()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lw6/a;->d(Lw6/a$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method showLodingFailed()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e6;->o:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method
