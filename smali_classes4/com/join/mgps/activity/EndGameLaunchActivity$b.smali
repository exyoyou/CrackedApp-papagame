.class Lcom/join/mgps/activity/EndGameLaunchActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/EndGameLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/EndGameLaunchActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/EndGameLaunchActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x50

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$102(Lcom/join/mgps/activity/EndGameLaunchActivity;I)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0x64

    .line 32
    .line 33
    if-ge v0, v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$108(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$200(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 49
    .line 50
    new-instance v1, Landroid/os/Handler;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$302(Lcom/join/mgps/activity/EndGameLaunchActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$400(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-wide/16 v1, 0x64

    .line 65
    .line 66
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->onPlayVideo()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
