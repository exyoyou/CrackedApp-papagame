.class Lcom/bda/controller/Controller$b;
.super Lcom/bda/controller/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bda/controller/Controller$b;->this$0:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bda/controller/e$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLog(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bda/controller/Controller$b;->this$0:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bda/controller/Controller;->mMonitor:Lcom/bda/controller/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/bda/controller/c;->onLog(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
