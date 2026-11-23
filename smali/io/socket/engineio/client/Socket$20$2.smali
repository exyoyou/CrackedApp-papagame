.class Lio/socket/engineio/client/Socket$20$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/Socket$20;

.field final synthetic val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$close:Ljava/lang/Runnable;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$20;Lio/socket/engineio/client/Socket;[Lio/socket/emitter/Emitter$Listener;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/Socket$20$2;->this$1:Lio/socket/engineio/client/Socket$20;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/engineio/client/Socket$20$2;->val$self:Lio/socket/engineio/client/Socket;

    .line 4
    .line 5
    iput-object p3, p0, Lio/socket/engineio/client/Socket$20$2;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    .line 6
    .line 7
    iput-object p4, p0, Lio/socket/engineio/client/Socket$20$2;->val$close:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lio/socket/engineio/client/Socket$20$2;->val$self:Lio/socket/engineio/client/Socket;

    .line 2
    .line 3
    iget-object v0, p0, Lio/socket/engineio/client/Socket$20$2;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    const-string v2, "upgrade"

    .line 9
    .line 10
    invoke-virtual {p1, v2, v0}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/socket/engineio/client/Socket$20$2;->val$self:Lio/socket/engineio/client/Socket;

    .line 14
    .line 15
    iget-object v0, p0, Lio/socket/engineio/client/Socket$20$2;->val$cleanupAndClose:[Lio/socket/emitter/Emitter$Listener;

    .line 16
    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    const-string v1, "upgradeError"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lio/socket/engineio/client/Socket$20$2;->val$close:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
