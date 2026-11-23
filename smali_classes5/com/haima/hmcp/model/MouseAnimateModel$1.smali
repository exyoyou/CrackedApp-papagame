.class Lcom/haima/hmcp/model/MouseAnimateModel$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/MouseAnimateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/MouseAnimateModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/MouseAnimateModel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/MouseAnimateModel$1;->this$0:Lcom/haima/hmcp/model/MouseAnimateModel;

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
    .locals 0
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/model/MouseAnimateModel$1;->this$0:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/model/MouseAnimateModel;->access$000(Lcom/haima/hmcp/model/MouseAnimateModel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
