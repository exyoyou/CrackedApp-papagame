.class Lcom/join/mgps/activity/FaceTransferHomePageActivity$d;
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
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$d;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

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
    instance-of p1, p2, Lcom/join/mgps/service/SocketClientService$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$d;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->serviceBound:Z

    .line 9
    .line 10
    check-cast p2, Lcom/join/mgps/service/SocketClientService$a;

    .line 11
    .line 12
    iput-object p2, p1, Lcom/join/mgps/activity/FaceTransferHomePageActivity;->mBinder:Lcom/join/mgps/service/SocketClientService$a;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/service/SocketClientService$a;->newSocket()V

    .line 15
    .line 16
    .line 17
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
