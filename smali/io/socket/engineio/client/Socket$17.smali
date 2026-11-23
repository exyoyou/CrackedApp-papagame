.class Lio/socket/engineio/client/Socket$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->send(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;

.field final synthetic val$fn:Ljava/lang/Runnable;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/Socket$17;->this$0:Lio/socket/engineio/client/Socket;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/engineio/client/Socket$17;->val$msg:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lio/socket/engineio/client/Socket$17;->val$fn:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/socket/engineio/client/Socket$17;->this$0:Lio/socket/engineio/client/Socket;

    .line 2
    .line 3
    iget-object v1, p0, Lio/socket/engineio/client/Socket$17;->val$msg:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/socket/engineio/client/Socket$17;->val$fn:Ljava/lang/Runnable;

    .line 6
    .line 7
    const-string v3, "message"

    .line 8
    .line 9
    invoke-static {v0, v3, v1, v2}, Lio/socket/engineio/client/Socket;->access$1800(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
