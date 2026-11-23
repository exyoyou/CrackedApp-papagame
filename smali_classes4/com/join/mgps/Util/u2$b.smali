.class Lcom/join/mgps/Util/u2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/task/listener/IUploadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/u2;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/Util/u2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/u2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cosPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/u2$b;->b:Lcom/join/mgps/Util/u2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/u2$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cosRequest",
            "cosResult"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iget v0, p2, Lcom/tencent/cos/model/COSResult;->code:I

    .line 10
    .line 11
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    iget-object p2, p2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/Util/u2$b;->b:Lcom/join/mgps/Util/u2;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/join/mgps/Util/u2;->b(Lcom/join/mgps/Util/u2;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cosRequest",
            "cosResult"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iget v0, p2, Lcom/tencent/cos/model/COSResult;->code:I

    .line 10
    .line 11
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    iget-object p2, p2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/Util/u2$b;->b:Lcom/join/mgps/Util/u2;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/join/mgps/Util/u2;->b(Lcom/join/mgps/Util/u2;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onProgress(Lcom/tencent/cos/model/COSRequest;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cosRequest",
            "l",
            "l1"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cosRequest",
            "cosResult"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    iput p2, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/Util/u2$b;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/Util/u2$b;->b:Lcom/join/mgps/Util/u2;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/join/mgps/Util/u2;->b(Lcom/join/mgps/Util/u2;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
