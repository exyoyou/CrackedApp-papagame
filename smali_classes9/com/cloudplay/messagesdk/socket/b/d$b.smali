.class Lcom/cloudplay/messagesdk/socket/b/d$b;
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
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$b;->a:Lcom/cloudplay/messagesdk/socket/b/d;

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
    .locals 6

    .line 1
    const-string v0, "WebSocketConnection"

    .line 2
    .line 3
    const-string v1, "mAutoPinger run()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$b;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$b;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v0, v1, v2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;J)J

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$b;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->sendPing()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$b;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->x(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$b;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->r(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$b;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->b()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    int-to-long v3, v3

    .line 54
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 61
    .line 62
    .line 63
    return-void
.end method
