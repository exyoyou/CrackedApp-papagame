.class Lcom/join/mgps/fragment/v2$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v2;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/v2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v2$a;->b:Lcom/join/mgps/fragment/v2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2$a;->b:Lcom/join/mgps/fragment/v2;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/fragment/v2;->Z(Lcom/join/mgps/fragment/v2;)Lcom/join/mgps/adapter/v0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/v2$a;->b:Lcom/join/mgps/fragment/v2;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/join/mgps/fragment/v2;->j:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/fragment/v2;->Z(Lcom/join/mgps/fragment/v2;)Lcom/join/mgps/adapter/v0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->getItemCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/v2$a;->b:Lcom/join/mgps/fragment/v2;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/fragment/v2;->j:Landroid/view/View;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2$a;->b:Lcom/join/mgps/fragment/v2;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/fragment/v2;->j:Landroid/view/View;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
