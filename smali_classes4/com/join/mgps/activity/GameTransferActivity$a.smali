.class Lcom/join/mgps/activity/GameTransferActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameTransferActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameTransferActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->b:Lcom/join/mgps/activity/GameTransferActivity;

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
    .locals 0
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
    instance-of p1, p2, Lcom/join/mgps/service/SocketClientService$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->b:Lcom/join/mgps/activity/GameTransferActivity;

    .line 6
    .line 7
    check-cast p2, Lcom/join/mgps/service/SocketClientService$a;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/service/SocketClientService$a;->getSocket()Ljava/net/Socket;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p1, Lcom/join/mgps/activity/GameTransferActivity;->mSocket:Ljava/net/Socket;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of p1, p2, Lcom/join/mgps/service/SocketServerService$a;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->b:Lcom/join/mgps/activity/GameTransferActivity;

    .line 21
    .line 22
    check-cast p2, Lcom/join/mgps/service/SocketServerService$a;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/service/SocketServerService$a;->getSocket()Ljava/net/Socket;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p1, Lcom/join/mgps/activity/GameTransferActivity;->mSocket:Ljava/net/Socket;

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$a;->b:Lcom/join/mgps/activity/GameTransferActivity;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/activity/GameTransferActivity;->initServerAndClient()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    return-void
.end method
