.class Lcom/join/mgps/adapter/x1$g3;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g3"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/x1$g3$c;
    }
.end annotation


# instance fields
.field d:Landroidx/recyclerview/widget/RecyclerView;

.field e:Lcom/join/mgps/adapter/x1$g3$c;

.field final synthetic f:Lcom/join/mgps/adapter/x1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$g3;->f:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a145c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/join/mgps/adapter/x1$g3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    new-instance p2, Lcom/join/mgps/adapter/x1$g3$a;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {p2, p0, v0, v1, p1}, Lcom/join/mgps/adapter/x1$g3$a;-><init>(Lcom/join/mgps/adapter/x1$g3;Landroid/content/Context;ILcom/join/mgps/adapter/x1;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$g3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/adapter/x1$g3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    new-instance v0, Lcom/join/mgps/adapter/x1$g3$b;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/x1$g3$b;-><init>(Lcom/join/mgps/adapter/x1$g3;Lcom/join/mgps/adapter/x1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/join/mgps/adapter/x1$g3$c;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/x1$g3$c;-><init>(Lcom/join/mgps/adapter/x1$g3;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$g3;->e:Lcom/join/mgps/adapter/x1$g3$c;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/join/mgps/adapter/x1$g3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
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
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$g3;->e:Lcom/join/mgps/adapter/x1$g3$c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
