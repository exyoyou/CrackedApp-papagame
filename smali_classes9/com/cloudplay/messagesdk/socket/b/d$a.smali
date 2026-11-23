.class Lcom/cloudplay/messagesdk/socket/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/socket/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/socket/b/d;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

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
    const-string v0, "WebSocketConnection"

    .line 2
    .line 3
    const-string v1, "mHandShakeRunner run()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$a;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/b;

    .line 15
    .line 16
    const-string v2, "mHandShakeRunner"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/b/g/b;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
