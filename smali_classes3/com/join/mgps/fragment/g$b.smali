.class Lcom/join/mgps/fragment/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/g;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/g;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/g;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/g$b;->b:Lcom/join/mgps/fragment/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g$b;->b:Lcom/join/mgps/fragment/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/g$b;->b:Lcom/join/mgps/fragment/g;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/g$b;->b:Lcom/join/mgps/fragment/g;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/fragment/g;->Q(Lcom/join/mgps/fragment/g;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, -0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/g$b;->b:Lcom/join/mgps/fragment/g;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
