.class Lio/socket/client/Manager$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Manager$11;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$11;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

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
    iget-object v0, p0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 2
    .line 3
    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 4
    .line 5
    invoke-static {v0}, Lio/socket/client/Manager;->access$300(Lio/socket/client/Manager;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "attempting reconnect"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 22
    .line 23
    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 24
    .line 25
    invoke-static {v0}, Lio/socket/client/Manager;->access$2100(Lio/socket/client/Manager;)Lio/socket/backo/Backoff;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/socket/backo/Backoff;->getAttempts()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 34
    .line 35
    iget-object v1, v1, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v3, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x0

    .line 45
    aput-object v4, v3, v5

    .line 46
    .line 47
    const-string v4, "reconnect_attempt"

    .line 48
    .line 49
    invoke-static {v1, v4, v3}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 53
    .line 54
    iget-object v1, v1, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 55
    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    aput-object v0, v2, v5

    .line 63
    .line 64
    const-string v0, "reconnecting"

    .line 65
    .line 66
    invoke-static {v1, v0, v2}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 70
    .line 71
    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 72
    .line 73
    invoke-static {v0}, Lio/socket/client/Manager;->access$300(Lio/socket/client/Manager;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 81
    .line 82
    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 83
    .line 84
    new-instance v1, Lio/socket/client/Manager$11$1$1;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lio/socket/client/Manager$11$1$1;-><init>(Lio/socket/client/Manager$11$1;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lio/socket/client/Manager;->open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;

    .line 90
    .line 91
    .line 92
    return-void
.end method
