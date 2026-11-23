.class Lcom/join/mgps/activity/BuildQRCodeActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/BuildQRCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/BuildQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/BuildQRCodeActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity$a;->b:Lcom/join/mgps/activity/BuildQRCodeActivity;

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
    invoke-static {}, Lcom/join/mgps/activity/BuildQRCodeActivity;->access$000()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/join/mgps/activity/BuildQRCodeActivity$a;->b:Lcom/join/mgps/activity/BuildQRCodeActivity;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Lcom/join/mgps/activity/BuildQRCodeActivity;->serviceBound:Z

    .line 18
    .line 19
    instance-of v0, p2, Lcom/join/mgps/service/SocketServerService$a;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    check-cast p2, Lcom/join/mgps/service/SocketServerService$a;

    .line 24
    .line 25
    iput-object p2, p1, Lcom/join/mgps/activity/BuildQRCodeActivity;->mBinder:Lcom/join/mgps/service/SocketServerService$a;

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
    invoke-static {}, Lcom/join/mgps/activity/BuildQRCodeActivity;->access$000()Ljava/lang/String;

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
