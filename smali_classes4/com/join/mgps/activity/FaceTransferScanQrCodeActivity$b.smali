.class Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;->b:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;->b:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 6
    .line 7
    check-cast p2, Lcom/join/mgps/service/SocketClientService$a;

    .line 8
    .line 9
    iput-object p2, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mBinder:Lcom/join/mgps/service/SocketClientService$a;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/service/SocketClientService$a;->newSocket()V

    .line 12
    .line 13
    .line 14
    :cond_0
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
