.class Lcom/join/mgps/fragment/f5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f5;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/f5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f5;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f5$c;->a:Lcom/join/mgps/fragment/f5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5$c;->a:Lcom/join/mgps/fragment/f5;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/f5;->U(Lcom/join/mgps/fragment/f5;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/f5$c;->a:Lcom/join/mgps/fragment/f5;

    .line 11
    .line 12
    iput v1, v0, Lcom/join/mgps/fragment/f5;->q:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v2}, Lcom/join/mgps/fragment/f5;->V(Lcom/join/mgps/fragment/f5;Z)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f5$c;->a:Lcom/join/mgps/fragment/f5;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/fragment/f5;->W(Lcom/join/mgps/fragment/f5;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/f5$c;->a:Lcom/join/mgps/fragment/f5;

    .line 27
    .line 28
    iget v2, v0, Lcom/join/mgps/fragment/f5;->t:I

    .line 29
    .line 30
    add-int/2addr v2, v1

    .line 31
    iput v2, v0, Lcom/join/mgps/fragment/f5;->t:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/join/mgps/fragment/f5;->d0(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5$c;->a:Lcom/join/mgps/fragment/f5;

    .line 38
    .line 39
    iget v2, v0, Lcom/join/mgps/fragment/f5;->q:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    invoke-virtual {v0, v2}, Lcom/join/mgps/fragment/f5;->d0(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f5$c;->a:Lcom/join/mgps/fragment/f5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/f5;->loading()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
