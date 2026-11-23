.class Lcom/join/mgps/base/BaseQuickAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->bindViewClickListener(Lcom/join/mgps/base/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/base/b;

.field final synthetic c:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;Lcom/join/mgps/base/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$baseViewHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$e;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter$e;->b:Lcom/join/mgps/base/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$e;->b:Lcom/join/mgps/base/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$e;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$e;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClick(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
