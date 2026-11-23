.class Lcom/bda/controller/Controller$a;
.super Lcom/bda/controller/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bda/controller/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/BaseEvent;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/bda/controller/Controller$c;

    .line 15
    .line 16
    invoke-direct {v1, v0, p1}, Lcom/bda/controller/Controller$c;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/KeyEvent;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/bda/controller/Controller$c;->run()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/BaseEvent;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/bda/controller/Controller$d;

    .line 15
    .line 16
    invoke-direct {v1, v0, p1}, Lcom/bda/controller/Controller$d;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/MotionEvent;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/bda/controller/Controller$d;->run()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/BaseEvent;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/bda/controller/Controller;->mListener:Lcom/bda/controller/b;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/bda/controller/Controller$f;

    .line 15
    .line 16
    invoke-direct {v1, v0, p1}, Lcom/bda/controller/Controller$f;-><init>(Lcom/bda/controller/Controller;Lcom/bda/controller/StateEvent;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bda/controller/Controller$a;->this$0:Lcom/bda/controller/Controller;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/bda/controller/Controller;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/bda/controller/Controller$f;->run()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
