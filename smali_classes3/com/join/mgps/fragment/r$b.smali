.class Lcom/join/mgps/fragment/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/r;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/r$b;->b:Lcom/join/mgps/fragment/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r$b;->b:Lcom/join/mgps/fragment/r;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/r;->M(Lcom/join/mgps/fragment/r;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/r$b;->b:Lcom/join/mgps/fragment/r;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/fragment/r;->N(Lcom/join/mgps/fragment/r;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/r$b;->b:Lcom/join/mgps/fragment/r;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/fragment/r;->Q()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
