.class public Lcom/join/mgps/adapter/l2;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/l2$c;,
        Lcom/join/mgps/adapter/l2$e;,
        Lcom/join/mgps/adapter/l2$d;,
        Lcom/join/mgps/adapter/l2$b;
    }
.end annotation


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll6/a<",
            "Lcom/join/mgps/dto/GameOLNoOpenTestBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/adapter/l2;->b:Landroid/view/LayoutInflater;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/l2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(I)Ll6/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ll6/a<",
            "Lcom/join/mgps/dto/GameOLNoOpenTestBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ll6/a;

    .line 8
    .line 9
    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll6/a<",
            "Lcom/join/mgps/dto/GameOLNoOpenTestBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewHolderListItem",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->a(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/LinearLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/l2$d;->e:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Lcom/join/mgps/adapter/l2$d;->d:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->i(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->k(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->m(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->a(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/LinearLayout;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    iget-object p2, p1, Lcom/join/mgps/adapter/l2$d;->e:Landroid/widget/ProgressBar;

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p1, Lcom/join/mgps/adapter/l2$d;->d:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/l2$d;->d:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p1, Lcom/join/mgps/adapter/l2$d;->e:Landroid/widget/ProgressBar;

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->i(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->k(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/join/mgps/adapter/l2$d;->m(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/l2;->b(I)Ll6/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
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
    iget-object v0, p0, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ll6/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Ll6/a;->d()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/l2;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_3

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    :goto_0
    move-object/from16 v7, p2

    move-object v6, v5

    move-object v8, v6

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v6, Lcom/join/mgps/adapter/l2$d;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/l2$d;-><init>(Lcom/join/mgps/adapter/l2;)V

    .line 3
    iget-object v7, v1, Lcom/join/mgps/adapter/l2;->b:Landroid/view/LayoutInflater;

    const v8, 0x7f0d0367

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a1044

    .line 4
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->d(Lcom/join/mgps/adapter/l2$d;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v8, 0x7f0a0790

    .line 5
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->f(Lcom/join/mgps/adapter/l2$d;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v8, 0x7f0a1042

    .line 6
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->h(Lcom/join/mgps/adapter/l2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f0a12a5

    .line 7
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, v6, Lcom/join/mgps/adapter/l2$d;->d:Landroid/widget/ProgressBar;

    const v8, 0x7f0a129e

    .line 8
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, v6, Lcom/join/mgps/adapter/l2$d;->e:Landroid/widget/ProgressBar;

    const v8, 0x7f0a128f

    .line 9
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->j(Lcom/join/mgps/adapter/l2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f0a1697

    .line 10
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->l(Lcom/join/mgps/adapter/l2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f0a1629

    .line 11
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->n(Lcom/join/mgps/adapter/l2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f0a12f7

    .line 12
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->p(Lcom/join/mgps/adapter/l2$d;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v8, 0x7f0a1045

    .line 13
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->r(Lcom/join/mgps/adapter/l2$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f0a0e73

    .line 14
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$d;->b(Lcom/join/mgps/adapter/l2$d;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v8, 0x7f0a00f7

    .line 15
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    const v8, 0x7f0a0f94

    .line 16
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/join/mgps/adapter/l2$d;->l:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object v8, v6

    move-object v6, v5

    goto :goto_4

    .line 18
    :cond_1
    new-instance v6, Lcom/join/mgps/adapter/l2$e;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/l2$e;-><init>(Lcom/join/mgps/adapter/l2;)V

    .line 19
    iget-object v7, v1, Lcom/join/mgps/adapter/l2;->b:Landroid/view/LayoutInflater;

    const v8, 0x7f0d0369

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a177f

    .line 20
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$e;->b(Lcom/join/mgps/adapter/l2$e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 21
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v8, v5

    goto :goto_4

    .line 22
    :cond_2
    new-instance v6, Lcom/join/mgps/adapter/l2$c;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/l2$c;-><init>(Lcom/join/mgps/adapter/l2;)V

    .line 23
    iget-object v7, v1, Lcom/join/mgps/adapter/l2;->b:Landroid/view/LayoutInflater;

    const v8, 0x7f0d0368

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0094

    .line 24
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/l2$c;->b(Lcom/join/mgps/adapter/l2$c;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    move-object v8, v5

    move-object v5, v6

    move-object v6, v8

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    goto/16 :goto_0

    .line 26
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/l2$d;

    move-object/from16 v7, p2

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/l2$e;

    move-object/from16 v7, p2

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/l2$c;

    move-object/from16 v7, p2

    goto :goto_3

    :goto_4
    if-eqz v2, :cond_19

    if-eq v2, v4, :cond_18

    if-eq v2, v3, :cond_7

    goto/16 :goto_b

    .line 29
    :cond_7
    iget-object v2, v1, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ll6/a;

    .line 30
    invoke-virtual {v2}, Ll6/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameOLNoOpenTestBean;

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v5

    invoke-virtual {v2}, Ll6/a;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->c(Lcom/join/mgps/adapter/l2$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    const v6, 0x7f080caf

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v4, :cond_8

    .line 34
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->e(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 35
    :cond_8
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->e(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_5
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->g(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLNoOpenTestBean;->getGame_open_time()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "000"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 40
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->k(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5f00\u6d4b\u65f6\u95f4:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/e0;->v(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_9
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->i(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u609f\u996d\u7279\u6743:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLNoOpenTestBean;->getPapa_privilege()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 42
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->m(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6e38\u620f\u72b6\u6001:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLNoOpenTestBean;->getGame_status()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    mul-double v4, v4, v9

    mul-double v4, v4, v9

    double-to-long v4, v4

    .line 44
    invoke-virtual {v2}, Ll6/a;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v9

    .line 45
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v13}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0x7f080f8b

    if-eqz v10, :cond_a

    .line 47
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u5f00\u59cb"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->e(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_a
    const-string v6, "\u66f4\u65b0"

    const v10, -0xa81da

    const v12, 0x7f120105

    const v13, 0x7f080f97

    const v14, -0x8d57ef

    const v15, 0x7f080f90

    if-nez v9, :cond_e

    .line 52
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v3, v4}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 54
    iget-object v3, v1, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 56
    iget-object v3, v1, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v3

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v3, v0, :cond_b

    .line 58
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 62
    :cond_b
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 66
    :cond_c
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 69
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->o(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/join/mgps/Util/UtilsMy;->p3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_a

    .line 70
    :cond_d
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 73
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->o(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/join/mgps/Util/UtilsMy;->p3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_a

    .line 74
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " dd "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "infoo"

    invoke-static {v12, v10}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v12

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x2b

    if-lez v12, :cond_f

    const/16 v10, 0x2b

    :cond_f
    if-eqz v10, :cond_17

    const/16 v12, 0x1b

    const-string v11, "\u6682\u505c\u4e2d"

    if-eq v10, v12, :cond_16

    const/16 v12, 0x30

    const v14, -0xc57a1e

    if-eq v10, v12, :cond_15

    const-wide/16 v16, 0x0

    const-string v12, "/"

    if-eq v10, v3, :cond_13

    const/4 v3, 0x3

    if-eq v10, v3, :cond_11

    const/4 v3, 0x5

    if-eq v10, v3, :cond_10

    const/4 v3, 0x6

    if-eq v10, v3, :cond_11

    const/4 v3, 0x7

    if-eq v10, v3, :cond_17

    const/16 v3, 0x2a

    if-eq v10, v3, :cond_10

    if-eq v10, v13, :cond_17

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_a

    .line 77
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 78
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->l:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 81
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080fb6

    .line 82
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 85
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 86
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->l:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080550

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0x4a4a4b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 93
    :pswitch_2
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u5b89\u88c5"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0x8d57ef

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 97
    :pswitch_3
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080f8b

    .line 98
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u7b49\u5f85"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 102
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :try_start_0
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    :goto_6
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->l:Landroid/widget/TextView;

    const-string v3, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 106
    :pswitch_4
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0x8d57ef

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 111
    :cond_10
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080f97

    .line 112
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/adapter/l2;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0xa81da

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 116
    :cond_11
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080f8b

    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u7ee7\u7eed"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 121
    :try_start_1
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v13

    cmp-long v0, v13, v16

    if-nez v0, :cond_12

    .line 122
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 123
    :cond_12
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_7
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    :goto_8
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 127
    :cond_13
    invoke-static {v9}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 128
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080f8b

    .line 129
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u6682\u505c"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 133
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v10

    cmp-long v0, v10, v16

    if-nez v0, :cond_14

    .line 134
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 135
    :cond_14
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_9
    iget-object v0, v8, Lcom/join/mgps/adapter/l2$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v3, v8, Lcom/join/mgps/adapter/l2$d;->l:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 139
    :cond_15
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080f8b

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_a

    .line 143
    :cond_16
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 144
    :cond_17
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v3

    .line 145
    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 147
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->q(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->o(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/join/mgps/Util/UtilsMy;->p3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 148
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/l2;->d(Lcom/join/mgps/adapter/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 149
    :goto_a
    invoke-static {v8}, Lcom/join/mgps/adapter/l2$d;->o(Lcom/join/mgps/adapter/l2$d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/adapter/l2$b;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/l2$b;-><init>(Lcom/join/mgps/adapter/l2;Ll6/a;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 150
    :cond_18
    iget-object v2, v1, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6/a;

    invoke-virtual {v0}, Ll6/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v6}, Lcom/join/mgps/adapter/l2$e;->a(Lcom/join/mgps/adapter/l2$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 152
    :cond_19
    iget-object v2, v1, Lcom/join/mgps/adapter/l2;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6/a;

    invoke-virtual {v0}, Ll6/a;->b()Lcom/join/mgps/dto/GameOLHeadAdBean;

    move-result-object v0

    .line 153
    invoke-static {v5}, Lcom/join/mgps/adapter/l2$c;->a(Lcom/join/mgps/adapter/l2$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getPic_remote()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08018d

    invoke-static {v2, v4, v3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 154
    invoke-static {v5}, Lcom/join/mgps/adapter/l2$c;->a(Lcom/join/mgps/adapter/l2$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/l2$a;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/l2$a;-><init>(Lcom/join/mgps/adapter/l2;Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_b
    return-object v7

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
