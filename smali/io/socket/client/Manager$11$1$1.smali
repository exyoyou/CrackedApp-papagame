.class Lio/socket/client/Manager$11$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/client/Manager$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/client/Manager$11$1;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$11$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "reconnect attempt error"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    .line 13
    .line 14
    iget-object v0, v0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 15
    .line 16
    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lio/socket/client/Manager;->access$2202(Lio/socket/client/Manager;Z)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    .line 23
    .line 24
    iget-object v0, v0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 25
    .line 26
    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 27
    .line 28
    invoke-static {v0}, Lio/socket/client/Manager;->access$2300(Lio/socket/client/Manager;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    .line 32
    .line 33
    iget-object v0, v0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 34
    .line 35
    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p1, v2, v1

    .line 41
    .line 42
    const-string p1, "reconnect_error"

    .line 43
    .line 44
    invoke-static {v0, p1, v2}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "reconnect success"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    .line 58
    .line 59
    iget-object p1, p1, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    .line 60
    .line 61
    iget-object p1, p1, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    .line 62
    .line 63
    invoke-static {p1}, Lio/socket/client/Manager;->access$2400(Lio/socket/client/Manager;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method
