.class Lcom/join/mgps/activity/EndGameLaunchActivity$d;
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
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$d;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$d;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$d;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x50

    .line 17
    .line 18
    if-gt v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$d;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$108(Lcom/join/mgps/activity/EndGameLaunchActivity;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$d;->b:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->access$500(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-wide/16 v1, 0x96

    .line 32
    .line 33
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
