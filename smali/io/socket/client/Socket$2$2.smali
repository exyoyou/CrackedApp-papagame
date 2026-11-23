.class Lio/socket/client/Socket$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/client/Socket$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Socket$2;


# direct methods
.method constructor <init>(Lio/socket/client/Socket$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Socket$2$2;->this$1:Lio/socket/client/Socket$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/socket/client/Socket$2$2;->this$1:Lio/socket/client/Socket$2;

    .line 2
    .line 3
    iget-object v0, v0, Lio/socket/client/Socket$2;->this$0:Lio/socket/client/Socket;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object p1, p1, v1

    .line 7
    .line 8
    check-cast p1, Lio/socket/parser/Packet;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lio/socket/client/Socket;->access$100(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
