.class Lcom/join/mgps/customview/ScrollViewContainer$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ScrollViewContainer$d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/Timer;

.field private c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

.field final synthetic d:Lcom/join/mgps/customview/ScrollViewContainer;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ScrollViewContainer;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->d:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance p1, Ljava/util/Timer;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->b:Ljava/util/Timer;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "period"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 10
    .line 11
    :cond_0
    new-instance v2, Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->a:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/customview/ScrollViewContainer$d$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer$d;Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->b:Ljava/util/Timer;

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    move-wide v5, p1

    .line 25
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
