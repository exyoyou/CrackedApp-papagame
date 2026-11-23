.class Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FaceTransferHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferHomePageActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "----onServiceConnected---"

    .line 6
    .line 7
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    instance-of p1, p2, Lcom/join/mgps/service/SocketServerService$a;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$c;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p1, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->serviceBoundSrv:Z

    .line 22
    .line 23
    check-cast p2, Lcom/join/mgps/service/SocketServerService$a;

    .line 24
    .line 25
    iput-object p2, p1, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mBinderSrv:Lcom/join/mgps/service/SocketServerService$a;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/service/SocketServerService$a;->newServerSocket()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "----onServiceDisconnected---"

    .line 10
    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
