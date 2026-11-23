.class Lio/socket/engineio/client/Socket$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->probe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;

.field final synthetic val$onTransportClose:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onTransportOpen:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onclose:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onerror:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$onupgrade:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;

.field final synthetic val$transport:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/Socket$13;->this$0:Lio/socket/engineio/client/Socket;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 4
    .line 5
    iput-object p3, p0, Lio/socket/engineio/client/Socket$13;->val$onTransportOpen:Lio/socket/emitter/Emitter$Listener;

    .line 6
    .line 7
    iput-object p4, p0, Lio/socket/engineio/client/Socket$13;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    .line 8
    .line 9
    iput-object p5, p0, Lio/socket/engineio/client/Socket$13;->val$onTransportClose:Lio/socket/emitter/Emitter$Listener;

    .line 10
    .line 11
    iput-object p6, p0, Lio/socket/engineio/client/Socket$13;->val$self:Lio/socket/engineio/client/Socket;

    .line 12
    .line 13
    iput-object p7, p0, Lio/socket/engineio/client/Socket$13;->val$onclose:Lio/socket/emitter/Emitter$Listener;

    .line 14
    .line 15
    iput-object p8, p0, Lio/socket/engineio/client/Socket$13;->val$onupgrade:Lio/socket/emitter/Emitter$Listener;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    const-string v2, "open"

    .line 7
    .line 8
    iget-object v3, p0, Lio/socket/engineio/client/Socket$13;->val$onTransportOpen:Lio/socket/emitter/Emitter$Listener;

    .line 9
    .line 10
    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 14
    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    const-string v2, "error"

    .line 18
    .line 19
    iget-object v3, p0, Lio/socket/engineio/client/Socket$13;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/socket/engineio/client/Socket$13;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 25
    .line 26
    aget-object v0, v0, v1

    .line 27
    .line 28
    iget-object v1, p0, Lio/socket/engineio/client/Socket$13;->val$onTransportClose:Lio/socket/emitter/Emitter$Listener;

    .line 29
    .line 30
    const-string v2, "close"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/socket/engineio/client/Socket$13;->val$self:Lio/socket/engineio/client/Socket;

    .line 36
    .line 37
    iget-object v1, p0, Lio/socket/engineio/client/Socket$13;->val$onclose:Lio/socket/emitter/Emitter$Listener;

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/socket/engineio/client/Socket$13;->val$self:Lio/socket/engineio/client/Socket;

    .line 43
    .line 44
    const-string v1, "upgrading"

    .line 45
    .line 46
    iget-object v2, p0, Lio/socket/engineio/client/Socket$13;->val$onupgrade:Lio/socket/emitter/Emitter$Listener;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 49
    .line 50
    .line 51
    return-void
.end method
