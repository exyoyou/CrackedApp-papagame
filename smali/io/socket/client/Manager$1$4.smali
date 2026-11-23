.class Lio/socket/client/Manager$1$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Manager$1;

.field final synthetic val$openSub:Lio/socket/client/On$Handle;

.field final synthetic val$self:Lio/socket/client/Manager;

.field final synthetic val$socket:Lio/socket/engineio/client/Socket;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lio/socket/client/Manager$1;JLio/socket/client/On$Handle;Lio/socket/engineio/client/Socket;Lio/socket/client/Manager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Manager$1$4;->this$1:Lio/socket/client/Manager$1;

    .line 2
    .line 3
    iput-wide p2, p0, Lio/socket/client/Manager$1$4;->val$timeout:J

    .line 4
    .line 5
    iput-object p4, p0, Lio/socket/client/Manager$1$4;->val$openSub:Lio/socket/client/On$Handle;

    .line 6
    .line 7
    iput-object p5, p0, Lio/socket/client/Manager$1$4;->val$socket:Lio/socket/engineio/client/Socket;

    .line 8
    .line 9
    iput-object p6, p0, Lio/socket/client/Manager$1$4;->val$self:Lio/socket/client/Manager;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    new-instance v0, Lio/socket/client/Manager$1$4$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/socket/client/Manager$1$4$1;-><init>(Lio/socket/client/Manager$1$4;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
