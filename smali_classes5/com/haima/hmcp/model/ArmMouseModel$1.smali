.class Lcom/haima/hmcp/model/ArmMouseModel$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/ArmMouseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/ArmMouseModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/ArmMouseModel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel$1;->this$0:Lcom/haima/hmcp/model/ArmMouseModel;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel$1;->this$0:Lcom/haima/hmcp/model/ArmMouseModel;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/model/ArmMouseModel;->access$200(Lcom/haima/hmcp/model/ArmMouseModel;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0x32

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel$1;->this$0:Lcom/haima/hmcp/model/ArmMouseModel;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/haima/hmcp/model/ArmMouseModel;->access$100(Lcom/haima/hmcp/model/ArmMouseModel;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel$1;->this$0:Lcom/haima/hmcp/model/ArmMouseModel;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/haima/hmcp/model/ArmMouseModel;->access$000(Lcom/haima/hmcp/model/ArmMouseModel;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
