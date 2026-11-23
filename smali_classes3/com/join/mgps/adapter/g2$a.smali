.class Lcom/join/mgps/adapter/g2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/g2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/adapter/g2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/g2;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$holder",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/g2$a;->d:Lcom/join/mgps/adapter/g2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/g2$a;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/g2$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/adapter/g2$a;->d:Lcom/join/mgps/adapter/g2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/g2;->h:Lcom/join/mgps/adapter/g2$b;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/g2$a;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/adapter/g2$a;->c:I

    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/g2$b;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
