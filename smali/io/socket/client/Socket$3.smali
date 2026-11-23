.class Lio/socket/client/Socket$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->open()Lio/socket/client/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/client/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lio/socket/client/Socket;->access$300(Lio/socket/client/Socket;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    .line 11
    .line 12
    invoke-static {v0}, Lio/socket/client/Socket;->access$400(Lio/socket/client/Socket;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    .line 16
    .line 17
    invoke-static {v0}, Lio/socket/client/Socket;->access$500(Lio/socket/client/Socket;)Lio/socket/client/Manager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lio/socket/client/Manager;->open()Lio/socket/client/Manager;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    .line 25
    .line 26
    iget-object v1, p0, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    .line 27
    .line 28
    invoke-static {v1}, Lio/socket/client/Socket;->access$500(Lio/socket/client/Socket;)Lio/socket/client/Manager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    .line 37
    .line 38
    invoke-static {v0}, Lio/socket/client/Socket;->access$000(Lio/socket/client/Socket;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lio/socket/client/Socket$3;->this$0:Lio/socket/client/Socket;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v2, "connecting"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 49
    .line 50
    .line 51
    return-void
.end method
