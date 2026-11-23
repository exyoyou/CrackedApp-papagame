.class Lcom/join/mgps/activity/GameMainActivity4$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity4;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity4;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$e;->b:Lcom/join/mgps/activity/GameMainActivity4;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameMainActivity4$e$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4$e;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/mgps/activity/GameMainActivity4;->access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/GameMainActivity4$e$a;-><init>(Lcom/join/mgps/activity/GameMainActivity4$e;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4$e;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/join/mgps/activity/GameMainActivity4;->access$208(Lcom/join/mgps/activity/GameMainActivity4;)I

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity4$e;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/activity/GameMainActivity4;->access$200(Lcom/join/mgps/activity/GameMainActivity4;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$e;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    new-instance v1, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity4$e;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->handler:Landroid/os/Handler;

    .line 42
    .line 43
    const-wide/16 v1, 0xbb8

    .line 44
    .line 45
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
