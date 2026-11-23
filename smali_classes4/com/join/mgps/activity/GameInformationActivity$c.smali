.class Lcom/join/mgps/activity/GameInformationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->showMain(Lcom/join/mgps/dto/GameInformationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public intentCommentList()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->access$100(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$c$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationActivity$c$a;-><init>(Lcom/join/mgps/activity/GameInformationActivity$c;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "videoUrl",
            "imageUrl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->access$100(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$c$b;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/GameInformationActivity$c$b;-><init>(Lcom/join/mgps/activity/GameInformationActivity$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public startIntent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->access$100(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$c$c;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity$c$c;-><init>(Lcom/join/mgps/activity/GameInformationActivity$c;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
