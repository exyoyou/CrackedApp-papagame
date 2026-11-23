.class public Lcom/join/mgps/adapter/x2;
.super Lcom/join/mgps/adapter/o6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/adapter/o6<",
        "Lcom/join/mgps/dto/GameTransferBean;",
        "Lcom/join/mgps/customview/GameTransferListItem;",
        ">;"
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "x2"


# instance fields
.field h:Landroid/content/Context;
    .annotation build Lorg/androidannotations/annotations/RootContext;
    .end annotation
.end field

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/o6;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/x2;->i:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected bridge synthetic e(Landroid/view/ViewGroup;I)Landroid/view/View;
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x2;->l(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferListItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lcom/join/mgps/adapter/o6$a;I)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/adapter/o6$a<",
            "Lcom/join/mgps/customview/GameTransferListItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/o6$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/adapter/o6$a;->a()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/customview/GameTransferListItem;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/o6;->e:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/join/mgps/adapter/x2;->i:Z

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, v1}, Lcom/join/mgps/customview/GameTransferListItem;->b(ILandroid/util/SparseArray;Z)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "onBindViewHolder: "

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method protected l(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferListItem;
    .locals 0
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
    iget-object p1, p0, Lcom/join/mgps/adapter/x2;->h:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/GameTransferListItem_;->d(Landroid/content/Context;)Lcom/join/mgps/customview/GameTransferListItem;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public m(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sending"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/x2;->i:Z

    .line 2
    .line 3
    return-void
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
    check-cast p1, Lcom/join/mgps/adapter/o6$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/x2;->k(Lcom/join/mgps/adapter/o6$a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
