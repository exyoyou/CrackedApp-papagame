.class Lcn/fly/tcp/b$1;
.super Lcn/fly/tools/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/b;->a(Lcn/fly/mcl/BusinessCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/mcl/BusinessCallBack;

.field final synthetic b:Lcn/fly/tcp/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/b;Lcn/fly/mcl/BusinessCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/b$1;->b:Lcn/fly/tcp/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tcp/b$1;->a:Lcn/fly/mcl/BusinessCallBack;

    .line 4
    .line 5
    invoke-direct {p0}, Lcn/fly/tools/utils/i;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/b$1;->b:Lcn/fly/tcp/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/tcp/b;->a(Lcn/fly/tcp/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {v0, v1}, Lcn/fly/tcp/b;->a(Lcn/fly/tcp/b;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcn/fly/tcp/b$1;->b:Lcn/fly/tcp/b;

    .line 21
    .line 22
    const/16 v1, 0x1388

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcn/fly/tcp/b;->a(Lcn/fly/tcp/b;IZ)Lcn/fly/mcl/TcpStatus;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x17

    .line 38
    .line 39
    invoke-static {v1}, Lcn/fly/mcl/TcpStatus;->obtain(I)Lcn/fly/mcl/TcpStatus;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "Exception: "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Lcn/fly/mcl/TcpStatus;->setDetailedMsg(Ljava/lang/String;)Lcn/fly/mcl/TcpStatus;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_1
    iget-object v1, p0, Lcn/fly/tcp/b$1;->b:Lcn/fly/tcp/b;

    .line 69
    .line 70
    iget-object v2, p0, Lcn/fly/tcp/b$1;->a:Lcn/fly/mcl/BusinessCallBack;

    .line 71
    .line 72
    invoke-static {v1, v2, v0}, Lcn/fly/tcp/b;->a(Lcn/fly/tcp/b;Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
