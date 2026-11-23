.class Lio/socket/engineio/client/Socket$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


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

.field final synthetic val$onerror:Lio/socket/emitter/Emitter$Listener;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/Socket$10;->this$0:Lio/socket/engineio/client/Socket;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/engineio/client/Socket$10;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lio/socket/engineio/client/Socket$10;->val$onerror:Lio/socket/emitter/Emitter$Listener;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "transport closed"

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
