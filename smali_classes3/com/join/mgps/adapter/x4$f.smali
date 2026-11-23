.class public Lcom/join/mgps/adapter/x4$f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/x4$g;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field final synthetic g:Lcom/join/mgps/adapter/x4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x4;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x4$f;->g:Lcom/join/mgps/adapter/x4;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/x4$f;->e:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/join/mgps/adapter/x4$f;->f:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/x4$f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x4$f;->f:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Lcom/join/mgps/adapter/x4$g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x4$f;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/mgps/adapter/x4$f;->f(Lcom/join/mgps/adapter/x4$g;Lcom/join/mgps/dto/StandAloneListBean$ListBean;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/x4$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0d04a8

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/join/mgps/adapter/x4$g;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/adapter/x4$f;->g:Lcom/join/mgps/adapter/x4;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/adapter/x4$g;-><init>(Lcom/join/mgps/adapter/x4;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a1604

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p2, Lcom/join/mgps/adapter/x4$g;->d:Landroid/view/View;

    .line 32
    .line 33
    const v0, 0x7f0a1602

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    iput-object v0, p2, Lcom/join/mgps/adapter/x4$g;->e:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    const v0, 0x7f0a1603

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p2, Lcom/join/mgps/adapter/x4$g;->f:Landroid/widget/TextView;

    .line 54
    .line 55
    const v0, 0x7f0a1601

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    iput-object v0, p2, Lcom/join/mgps/adapter/x4$g;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    .line 66
    const v0, 0x7f0a1605

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p2, Lcom/join/mgps/adapter/x4$g;->h:Landroid/view/View;

    .line 74
    .line 75
    return-object p2
.end method

.method public f(Lcom/join/mgps/adapter/x4$g;Lcom/join/mgps/dto/StandAloneListBean$ListBean;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "holder",
            "gameInfoV2_2Bean",
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->d:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->h:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/x4$f;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    if-ne p3, v2, :cond_1

    .line 26
    .line 27
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->d:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->h:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->d:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->h:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->f:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object p3, p1, Lcom/join/mgps/adapter/x4$g;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/StandAloneListBean$ListBean;->getPic()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p3, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lcom/join/mgps/adapter/x4$g;->e:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    new-instance p3, Lcom/join/mgps/adapter/x4$f$a;

    .line 69
    .line 70
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/x4$f$a;-><init>(Lcom/join/mgps/adapter/x4$f;Lcom/join/mgps/dto/StandAloneListBean$ListBean;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x4$f;->e:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/adapter/x4$g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x4$f;->b(Lcom/join/mgps/adapter/x4$g;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x4$f;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/x4$g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setListDatas(Ljava/util/List;)V
    .locals 1
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
            "Lcom/join/mgps/dto/StandAloneListBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x4$f;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/x4$f;->e:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
