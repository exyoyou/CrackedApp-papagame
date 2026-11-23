.class public Lcom/join/mgps/adapter/v4$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/v4$b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field final synthetic g:Lcom/join/mgps/adapter/v4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/v4;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/v4$a;->g:Lcom/join/mgps/adapter/v4;

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
    iput-object p1, p0, Lcom/join/mgps/adapter/v4$a;->e:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/join/mgps/adapter/v4$a;->f:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/adapter/v4$b;I)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/v4$a;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/join/mgps/dto/AppBean;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/v4$a;->c(Lcom/join/mgps/adapter/v4$b;Lcom/join/mgps/dto/AppBean;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/v4$b;
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
    const p2, 0x7f0d03ae

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
    new-instance p2, Lcom/join/mgps/adapter/v4$b;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/adapter/v4$a;->g:Lcom/join/mgps/adapter/v4;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/adapter/v4$b;-><init>(Lcom/join/mgps/adapter/v4;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0865

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    iput-object v0, p2, Lcom/join/mgps/adapter/v4$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    const v0, 0x7f0a010f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p2, Lcom/join/mgps/adapter/v4$b;->e:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a054e

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 54
    .line 55
    iput-object v0, p2, Lcom/join/mgps/adapter/v4$b;->f:Lcom/join/mgps/customview/DownloadNormalView;

    .line 56
    .line 57
    const v0, 0x7f0a141b

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/LinearLayout;

    .line 65
    .line 66
    iput-object p1, p2, Lcom/join/mgps/adapter/v4$b;->g:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/adapter/v4$a;->g:Lcom/join/mgps/adapter/v4;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/join/mgps/adapter/v4;->a(Lcom/join/mgps/adapter/v4;)Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    return-object p2
.end method

.method public c(Lcom/join/mgps/adapter/v4$b;Lcom/join/mgps/dto/AppBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "gameInfoV2_2Bean"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/v4$b;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/join/mgps/adapter/v4$b;->e:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lcom/join/mgps/adapter/v4$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$b;->f:Lcom/join/mgps/customview/DownloadNormalView;

    .line 25
    .line 26
    new-instance v0, Lm6/c;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/adapter/v4$a;->f:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v0, v1, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v4$a;->e:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/v4$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/v4$a;->a(Lcom/join/mgps/adapter/v4$b;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/v4$a;->b(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/v4$b;

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
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v4$a;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/v4$a;->e:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
