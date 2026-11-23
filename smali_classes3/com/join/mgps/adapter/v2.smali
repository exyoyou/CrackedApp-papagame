.class public Lcom/join/mgps/adapter/v2;
.super Lcom/join/mgps/adapter/o6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/adapter/o6<",
        "Lcom/join/mgps/dto/GameTransferBean;",
        "Lcom/join/mgps/customview/GameTransferHistoryListItem;",
        ">;"
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "v2"


# instance fields
.field h:Landroid/content/Context;
    .annotation build Lorg/androidannotations/annotations/RootContext;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/o6;-><init>()V

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/v2;->l(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferHistoryListItem;

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
            "Lcom/join/mgps/customview/GameTransferHistoryListItem;",
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onBindViewHolder: position"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/adapter/o6$a;->a()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/join/mgps/customview/GameTransferHistoryListItem;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/adapter/o6;->e:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lcom/join/mgps/dto/GameTransferBean;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->b(Lcom/join/mgps/dto/GameTransferBean;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method protected l(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferHistoryListItem;
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
    iget-object p1, p0, Lcom/join/mgps/adapter/v2;->h:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/GameTransferHistoryListItem_;->e(Landroid/content/Context;)Lcom/join/mgps/customview/GameTransferHistoryListItem;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/v2;->k(Lcom/join/mgps/adapter/o6$a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
