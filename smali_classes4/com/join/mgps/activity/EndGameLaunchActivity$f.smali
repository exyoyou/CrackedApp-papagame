.class Lcom/join/mgps/activity/EndGameLaunchActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/EndGameLaunchActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/EndGameLaunchActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$f;->a:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$f;->a:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    const-string v0, "\u4e0b\u8f7d\u5b58\u6863\u5931\u8d25"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->showTost(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$f;->a:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->startEndGame()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "progress",
            "speed"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity$f;->a:Lcom/join/mgps/activity/EndGameLaunchActivity;

    .line 2
    .line 3
    mul-int/lit8 p2, p2, 0x14

    .line 4
    .line 5
    div-int/lit8 p2, p2, 0x64

    .line 6
    .line 7
    add-int/lit8 p2, p2, 0x50

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "actualSize"
        }
    .end annotation

    return-void
.end method
