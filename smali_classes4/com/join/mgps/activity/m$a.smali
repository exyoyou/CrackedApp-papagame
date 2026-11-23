.class Lcom/join/mgps/activity/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/m;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/m;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/m;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/m$a;->b:Lcom/join/mgps/activity/m;

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
    iget-object v0, p0, Lcom/join/mgps/activity/m$a;->b:Lcom/join/mgps/activity/m;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/m;->O(Lcom/join/mgps/activity/m;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/m$a;->b:Lcom/join/mgps/activity/m;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/m;->P(Lcom/join/mgps/activity/m;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/m$a;->b:Lcom/join/mgps/activity/m;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/activity/m;->Q(Lcom/join/mgps/activity/m;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/m$a;->b:Lcom/join/mgps/activity/m;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/join/mgps/activity/m;->R(Lcom/join/mgps/activity/m;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/m;->T(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
