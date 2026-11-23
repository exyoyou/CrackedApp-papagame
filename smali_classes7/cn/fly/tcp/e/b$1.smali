.class Lcn/fly/tcp/e/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/e/b;->a(ILcn/fly/mcl/BusinessMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/mcl/BusinessMessageListener;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcn/fly/tcp/e/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/e/b;Lcn/fly/mcl/BusinessMessageListener;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/e/b$1;->f:Lcn/fly/tcp/e/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tcp/e/b$1;->a:Lcn/fly/mcl/BusinessMessageListener;

    .line 4
    .line 5
    iput p3, p0, Lcn/fly/tcp/e/b$1;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcn/fly/tcp/e/b$1;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcn/fly/tcp/e/b$1;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcn/fly/tcp/e/b$1;->e:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcn/fly/tcp/e/b$1;->a:Lcn/fly/mcl/BusinessMessageListener;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "TP tcpPu5hServ addBMListener: callback to messageReceived. bisType: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcn/fly/tcp/e/b$1;->b:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", workId: "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcn/fly/tcp/e/b$1;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", msg: "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcn/fly/tcp/e/b$1;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcn/fly/tcp/e/b$1;->a:Lcn/fly/mcl/BusinessMessageListener;

    .line 52
    .line 53
    instance-of v0, p1, Lcn/fly/mcl/BusinessMessageCallback;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    check-cast p1, Lcn/fly/mcl/BusinessMessageCallback;

    .line 58
    .line 59
    iget v0, p0, Lcn/fly/tcp/e/b$1;->e:I

    .line 60
    .line 61
    iget v1, p0, Lcn/fly/tcp/e/b$1;->b:I

    .line 62
    .line 63
    iget-object v2, p0, Lcn/fly/tcp/e/b$1;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p0, Lcn/fly/tcp/e/b$1;->d:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/fly/mcl/BusinessMessageCallback;->messageReceived(IILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget v0, p0, Lcn/fly/tcp/e/b$1;->b:I

    .line 72
    .line 73
    iget-object v1, p0, Lcn/fly/tcp/e/b$1;->c:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v2, p0, Lcn/fly/tcp/e/b$1;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p1, v0, v1, v2}, Lcn/fly/mcl/BusinessMessageListener;->messageReceived(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 90
    return p1
.end method
