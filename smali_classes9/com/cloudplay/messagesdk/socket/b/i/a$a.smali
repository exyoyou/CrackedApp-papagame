.class Lcom/cloudplay/messagesdk/socket/b/i/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/socket/b/i/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/socket/b/i/a;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/socket/b/i/a;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/i/a$a;->a:Lcom/cloudplay/messagesdk/socket/b/i/a;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a$a;->a:Lcom/cloudplay/messagesdk/socket/b/i/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/i/a;->a(Lcom/cloudplay/messagesdk/socket/b/i/a;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/i/a$a;->a:Lcom/cloudplay/messagesdk/socket/b/i/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/i/a;->a(Lcom/cloudplay/messagesdk/socket/b/i/a;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;->onMessage(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
