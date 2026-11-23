.class Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FaceTransferHomePageActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
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
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 6
    .line 7
    const-string v0, "android.permission.CAMERA"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/BaseFragmentActivity;->checkPermiss(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 16
    .line 17
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/BaseFragmentActivity;->checkPermiss(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    new-instance p1, Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 28
    .line 29
    const-class v1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 30
    .line 31
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->b:Lcom/join/mgps/activity/FaceTransferHomePageActivity;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/g0;->Z(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FaceTransferHomePageActivity$b;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
