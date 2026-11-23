.class public Lcom/join/mgps/socket/fight/arena/ArenaService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/fight/arena/ArenaService$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EService;
.end annotation


# static fields
.field private static final s:Ljava/lang/String; = "ArenaService"


# instance fields
.field private final b:Ljava/lang/Object;

.field private volatile c:Z

.field private d:Lapp/mgsim/arena/AreaInfo;

.field private e:Lapp/mgsim/arena/UDPHelper;

.field private volatile f:I

.field private g:Ljava/util/concurrent/atomic/AtomicLong;

.field private h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lapp/mgsim/arena/ArenaRequest;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field j:Lcom/join/mgps/rpc/l;

.field k:Lcom/join/mgps/rpc/l;

.field private l:Lapp/mgsim/arena/ArenaSocketThread;

.field private m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lapp/mgsim/arena/SocketListener$NotifyObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lapp/mgsim/arena/SocketListener;

.field private o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/ArenaResponse;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/papa91/battle/protocol/BattleArea;

.field private q:Lapp/mgsim/arena/ArenaRequest;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Z

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:I

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/socket/fight/arena/ArenaService$a;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService$a;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->n:Lapp/mgsim/arena/SocketListener;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 38
    .line 39
    return-void
.end method

.method private B(Lapp/mgsim/arena/ArenaResponse;Lapp/mgsim/arena/ArenaRequest;Lcom/papa91/battle/protocol/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arenaResponse",
            "request",
            "response"
        }
    .end annotation

    .line 1
    iput-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    iget-object p2, p2, Lapp/mgsim/arena/ArenaRequest;->request_type:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/papa91/battle/protocol/Response;->getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->RESULT_SUCCESS:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 12
    .line 13
    const-string v1, "cmd_login"

    .line 14
    .line 15
    const-string v2, "----responseByType ---- type:"

    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "---success"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    iput p2, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 46
    .line 47
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 48
    .line 49
    if-ne v0, v1, :cond_0

    .line 50
    .line 51
    iput-boolean p2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Z

    .line 52
    .line 53
    :cond_0
    invoke-static {p1, p3}, Lcom/join/mgps/socket/fight/arena/c;->l(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->v(Lapp/mgsim/arena/ArenaResponse;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, "---failure"

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p3}, Lcom/join/mgps/socket/fight/arena/c;->k(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p2, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 91
    .line 92
    if-ne p2, v1, :cond_2

    .line 93
    .line 94
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 99
    .line 100
    const/4 p3, 0x6

    .line 101
    invoke-static {p3, p1}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->v(Lapp/mgsim/arena/ArenaResponse;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method

.method private F(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "updateAreaOnlinePeopleCounts bj:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getBj()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "---sh:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getSh()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "---gz:"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getGz()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:Lapp/mgsim/arena/UDPHelper;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/UDPHelper;->updateMaps(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private G(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pingValue"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:I

    .line 2
    .line 3
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaSocketThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/socket/fight/arena/ArenaService;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->j(Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/ArenaRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/ArenaRequest;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic f(Lcom/join/mgps/socket/fight/arena/ArenaService;Lapp/mgsim/arena/AreaInfo;)Lapp/mgsim/arena/AreaInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/AreaInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/join/mgps/socket/fight/arena/ArenaService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lcom/join/mgps/socket/fight/arena/ArenaService;)Lapp/mgsim/arena/UDPHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:Lapp/mgsim/arena/UDPHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method private j(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    if-gtz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit v0

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 17
    .line 18
    const-string p2, "\u68c0\u6d4b\u5230\u4f60\u8fd8\u6ca1\u6709\u767b\u9646\uff0c\u8bf7\u767b\u9646\uff01"

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    invoke-static {v1, p2}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method private l(Lapp/mgsim/arena/ArenaRequest;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    const-wide/16 v1, 0x2

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p1, Lapp/mgsim/arena/ArenaRequest;->requestId:J

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "generateRequestId--request info "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lapp/mgsim/arena/ArenaRequest;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    iget-wide v1, p1, Lapp/mgsim/arena/ArenaRequest;->requestId:J

    .line 49
    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-wide v0, p1, Lapp/mgsim/arena/ArenaRequest;->requestId:J

    .line 58
    .line 59
    return-wide v0
.end method

.method private p()I
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->m()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lapp/mgsim/arena/AreaInfo;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    long-to-int v3, v2

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "getPingValue pingTime by area:"

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "--- ping time :"

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lapp/mgsim/arena/AreaInfo;->getPingTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    long-to-int v1, v0

    .line 69
    return v1

    .line 70
    :cond_0
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "getPingValue Exception:"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:I

    .line 99
    .line 100
    return v0
.end method

.method private u(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    const-string v0, "\u4f60\u7684\u624b\u673a\u767b\u9646\u5df2\u7ecf\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646!"

    .line 2
    .line 3
    const-string v1, "\u83b7\u53d6\u5bf9\u6218\u5927\u5385\u670d\u52a1\u5668\u5730\u5740\u5931\u8d25\uff01"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->q:Lapp/mgsim/arena/ArenaRequest;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->i:Lcom/join/mgps/Util/b;

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->i:Lcom/join/mgps/Util/b;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-direct {p0, v3, v4}, Lcom/join/mgps/socket/fight/arena/ArenaService;->j(Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v5, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lcom/join/mgps/rpc/l;

    .line 36
    .line 37
    invoke-interface {v5, v4, v3}, Lcom/join/mgps/rpc/l;->a0(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 54
    .line 55
    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getLobbyServer()Lapp/mgsim/arena/AreaInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/AreaInfo;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:Lapp/mgsim/arena/UDPHelper;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 68
    .line 69
    invoke-virtual {v3}, Lapp/mgsim/arena/ArenaLobbyServer;->getPing()[Lapp/mgsim/arena/AreaInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v4, v3}, Lapp/mgsim/arena/UDPHelper;->initUDPAndStart([Lapp/mgsim/arena/AreaInfo;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/AreaInfo;

    .line 77
    .line 78
    invoke-virtual {v3}, Lapp/mgsim/arena/AreaInfo;->getArea()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Lcom/join/mgps/socket/fight/arena/c;->c(I)Lcom/papa91/battle/protocol/BattleArea;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iput-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->p:Lcom/papa91/battle/protocol/BattleArea;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 89
    .line 90
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getHost()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v0}, Lapp/mgsim/arena/AreaInfo;->getPort()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {v3, v4, v0}, Lapp/mgsim/arena/ArenaSocketThread;->setLobbyServer(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Ljava/lang/Thread;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 104
    .line 105
    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    const/16 v4, 0x2bd

    .line 118
    .line 119
    if-ne v3, v4, :cond_2

    .line 120
    .line 121
    const-string v3, "handleLogin user need retry login"

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 127
    .line 128
    invoke-static {v2, v0}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v3, v4}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->a(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_2
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 141
    .line 142
    if-gt v0, v2, :cond_3

    .line 143
    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 153
    .line 154
    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v3}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 163
    .line 164
    if-gt v0, v2, :cond_5

    .line 165
    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 167
    .line 168
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 169
    .line 170
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 175
    .line 176
    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v0, v3}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v4, "handleLogin exception: "

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v3, "handleLogin retryCount: "

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget v3, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 232
    .line 233
    if-gt v0, v2, :cond_6

    .line 234
    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 236
    .line 237
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 238
    .line 239
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 244
    .line 245
    invoke-static {v1}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 250
    .line 251
    .line 252
    :goto_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method public C(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->n:Lapp/mgsim/arena/SocketListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lapp/mgsim/arena/SocketListener;->executeRequest(Lapp/mgsim/arena/ArenaRequest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D(Lcom/papa91/battle/protocol/BattleArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battleArea"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->p:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    return-void
.end method

.method public E(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method i()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "---cancelSubscribe----"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lapp/mgsim/arena/ArenaRequestFactory;->cancelSubscribeGameRoom()Lapp/mgsim/arena/ArenaRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->C(Lapp/mgsim/arena/ArenaRequest;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method k(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaRequest;->request_type:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "dispatchRequest-->type :"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    const-string v2, "cmd_login"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->q(Lapp/mgsim/arena/ArenaRequest;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 46
    .line 47
    const-string v0, "\u672a\u767b\u9646\uff0c\u9700\u8981\u91cd\u65b0\u767b\u9646\uff01"

    .line 48
    .line 49
    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 58
    :cond_1
    const-string v2, "cmd_create_game_room"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->i:Lcom/join/mgps/Util/b;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 77
    .line 78
    iget-wide v3, p1, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    iget v8, p1, Lapp/mgsim/arena/ArenaRequest;->coins:I

    .line 89
    .line 90
    iget-boolean v9, p1, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 91
    .line 92
    iget-boolean v10, p1, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    .line 93
    .line 94
    iget-boolean v11, p1, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-static {v12}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    iget-boolean v13, p1, Lapp/mgsim/arena/ArenaRequest;->isFromLive:Z

    .line 105
    .line 106
    invoke-static/range {v2 .. v13}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createRoom(IJJIIZZZZZ)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 111
    .line 112
    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 115
    :cond_2
    const-string v2, "cmd_subscribe_game_roomlist"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    iget v0, p1, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    if-ne v0, v2, :cond_3

    .line 127
    .line 128
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->ELITE:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 132
    .line 133
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 134
    .line 135
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v4

    .line 141
    invoke-static {v3, v0, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->subscribeGameRoom(ILcom/papa91/battle/protocol/Params$RoomType;J)Ljava/nio/ByteBuffer;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v2, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 146
    .line 147
    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 150
    :cond_4
    const-string v2, "cmd_set_room_challenge_coins_altr"

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_5

    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 159
    .line 160
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 161
    .line 162
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->coins:I

    .line 163
    .line 164
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setChallengeCoins(IIJ)Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 173
    .line 174
    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 177
    :cond_5
    const-string v2, "cmd_set_room_password_altr"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_6

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 186
    .line 187
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 188
    .line 189
    iget-object v3, p1, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    .line 190
    .line 191
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setRoomPassword(ILjava/lang/String;J)Ljava/nio/ByteBuffer;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 200
    .line 201
    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 204
    :cond_6
    const-string v2, "cmd_set_room_server_play_mode"

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_7

    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 213
    .line 214
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->playMode:I

    .line 215
    .line 216
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 217
    .line 218
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v4

    .line 222
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setRoomServerPlayMode(IIJ)Ljava/nio/ByteBuffer;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :cond_7
    const-string v2, "cmd_set_room_peripheral_join_altr"

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_8

    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 240
    .line 241
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 242
    .line 243
    iget-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->allowPeripheralJoin:Z

    .line 244
    .line 245
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 246
    .line 247
    .line 248
    move-result-wide v4

    .line 249
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setAllowPeripheralJoin(IZJ)Ljava/nio/ByteBuffer;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 254
    .line 255
    .line 256
    monitor-exit v1

    .line 257
    return-void

    .line 258
    :cond_8
    const-string v2, "cmd_set_room_pc_join_altr"

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v2, :cond_9

    .line 265
    .line 266
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 267
    .line 268
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 269
    .line 270
    iget-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->allowPCJoin:Z

    .line 271
    .line 272
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setAllowPcJoin(IZJ)Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 281
    .line 282
    .line 283
    monitor-exit v1

    .line 284
    return-void

    .line 285
    :cond_9
    const-string v2, "cmd_set_room_spectator_join_altr"

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_a

    .line 292
    .line 293
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 294
    .line 295
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 296
    .line 297
    iget-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->allowSpectatorJoin:Z

    .line 298
    .line 299
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 300
    .line 301
    .line 302
    move-result-wide v4

    .line 303
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->setAllowSpectatorJoin(IZJ)Ljava/nio/ByteBuffer;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 308
    .line 309
    .line 310
    monitor-exit v1

    .line 311
    return-void

    .line 312
    :cond_a
    const-string v2, "cmd_join_room"

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_b

    .line 319
    .line 320
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 321
    .line 322
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 323
    .line 324
    iget-object v3, p1, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-static {v4}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 339
    .line 340
    .line 341
    move-result-wide v6

    .line 342
    invoke-static/range {v2 .. v7}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->joinRoom(ILjava/lang/String;ZIJ)Ljava/nio/ByteBuffer;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 347
    .line 348
    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 351
    :cond_b
    const-string v2, "cmd_set_room_close_p1_position"

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_c

    .line 358
    .line 359
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 360
    .line 361
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 362
    .line 363
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 364
    .line 365
    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 366
    .line 367
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 368
    .line 369
    .line 370
    move-result-wide v5

    .line 371
    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 376
    .line 377
    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 380
    :cond_c
    const-string v2, "cmd_set_room_close_p2_position"

    .line 381
    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_d

    .line 387
    .line 388
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 389
    .line 390
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 391
    .line 392
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 393
    .line 394
    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 395
    .line 396
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 397
    .line 398
    .line 399
    move-result-wide v5

    .line 400
    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 405
    .line 406
    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 409
    :cond_d
    const-string v2, "cmd_set_room_close_p3_position"

    .line 410
    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_e

    .line 416
    .line 417
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 418
    .line 419
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 420
    .line 421
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 422
    .line 423
    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 424
    .line 425
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 426
    .line 427
    .line 428
    move-result-wide v5

    .line 429
    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 434
    .line 435
    .line 436
    monitor-exit v1

    .line 437
    return-void

    .line 438
    :cond_e
    const-string v2, "cmd_set_room_close_p4_position"

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-eqz v2, :cond_f

    .line 445
    .line 446
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 447
    .line 448
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 449
    .line 450
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 451
    .line 452
    iget-boolean v4, p1, Lapp/mgsim/arena/ArenaRequest;->isClosePosition:Z

    .line 453
    .line 454
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 455
    .line 456
    .line 457
    move-result-wide v5

    .line 458
    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->closeRoomPosition(IIZJ)Ljava/nio/ByteBuffer;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 463
    .line 464
    .line 465
    monitor-exit v1

    .line 466
    return-void

    .line 467
    :cond_f
    const-string v2, "cmd_leave_room"

    .line 468
    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-eqz v2, :cond_10

    .line 474
    .line 475
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 476
    .line 477
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 478
    .line 479
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 480
    .line 481
    .line 482
    move-result-wide v3

    .line 483
    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->leaveRoom(IJ)Ljava/nio/ByteBuffer;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 488
    .line 489
    .line 490
    monitor-exit v1

    .line 491
    return-void

    .line 492
    :cond_10
    const-string v2, "cmd_kick_out_room_position"

    .line 493
    .line 494
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_11

    .line 499
    .line 500
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 501
    .line 502
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 503
    .line 504
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 505
    .line 506
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 507
    .line 508
    .line 509
    move-result-wide v4

    .line 510
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->kickOutRoomPosition(IIJ)Ljava/nio/ByteBuffer;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 515
    .line 516
    .line 517
    monitor-exit v1

    .line 518
    return-void

    .line 519
    :cond_11
    const-string v2, "cmd_quick_join_room"

    .line 520
    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_12

    .line 526
    .line 527
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 528
    .line 529
    iget-wide v2, p1, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 530
    .line 531
    iget v4, p1, Lapp/mgsim/arena/ArenaRequest;->collectionId:I

    .line 532
    .line 533
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    invoke-static {v6}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 546
    .line 547
    .line 548
    move-result-wide v7

    .line 549
    invoke-static/range {v2 .. v8}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->fastJoinRoom(JIIZJ)Ljava/nio/ByteBuffer;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 554
    .line 555
    .line 556
    monitor-exit v1

    .line 557
    return-void

    .line 558
    :cond_12
    const-string v2, "cmd_search_room_by_id"

    .line 559
    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    if-eqz v2, :cond_13

    .line 565
    .line 566
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 567
    .line 568
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 569
    .line 570
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 571
    .line 572
    .line 573
    move-result-wide v3

    .line 574
    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->searchRoomByID(IJ)Ljava/nio/ByteBuffer;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 579
    .line 580
    .line 581
    monitor-exit v1

    .line 582
    return-void

    .line 583
    :cond_13
    const-string v2, "cmd_lobby_start_game"

    .line 584
    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-eqz v2, :cond_14

    .line 590
    .line 591
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 592
    .line 593
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 594
    .line 595
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 596
    .line 597
    .line 598
    move-result-wide v3

    .line 599
    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->lobbyStartGame(IJ)Ljava/nio/ByteBuffer;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 604
    .line 605
    .line 606
    monitor-exit v1

    .line 607
    return-void

    .line 608
    :cond_14
    const-string v2, "cmd_player_ready_game"

    .line 609
    .line 610
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    if-eqz v2, :cond_15

    .line 615
    .line 616
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 617
    .line 618
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 619
    .line 620
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 621
    .line 622
    .line 623
    move-result-wide v3

    .line 624
    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->playerReadyGame(IJ)Ljava/nio/ByteBuffer;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 629
    .line 630
    .line 631
    monitor-exit v1

    .line 632
    return-void

    .line 633
    :cond_15
    const-string v2, "cmd_cancel_subscribe_game_room"

    .line 634
    .line 635
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    if-eqz v2, :cond_16

    .line 640
    .line 641
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 642
    .line 643
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 644
    .line 645
    .line 646
    move-result-wide v2

    .line 647
    invoke-static {v2, v3}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->cancelSubscribeGameRoom(J)Ljava/nio/ByteBuffer;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 652
    .line 653
    .line 654
    monitor-exit v1

    .line 655
    return-void

    .line 656
    :cond_16
    const-string v2, "cmd_share_join_room"

    .line 657
    .line 658
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_17

    .line 663
    .line 664
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 665
    .line 666
    iget-wide v2, p1, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    .line 667
    .line 668
    iget v4, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 669
    .line 670
    iget-wide v5, p1, Lapp/mgsim/arena/ArenaRequest;->fightId:J

    .line 671
    .line 672
    iget-object v7, p1, Lapp/mgsim/arena/ArenaRequest;->password:Ljava/lang/String;

    .line 673
    .line 674
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    .line 675
    .line 676
    .line 677
    move-result v8

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 679
    .line 680
    .line 681
    move-result-object v9

    .line 682
    invoke-static {v9}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    .line 683
    .line 684
    .line 685
    move-result v9

    .line 686
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 687
    .line 688
    .line 689
    move-result-wide v10

    .line 690
    invoke-static/range {v2 .. v11}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->shareJoinRoom(JIJLjava/lang/String;IZJ)Ljava/nio/ByteBuffer;

    .line 691
    .line 692
    .line 693
    move-result-object p1

    .line 694
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 695
    .line 696
    .line 697
    monitor-exit v1

    .line 698
    return-void

    .line 699
    :cond_17
    const-string v2, "cmd_spectator_sit"

    .line 700
    .line 701
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    if-eqz v2, :cond_18

    .line 706
    .line 707
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 708
    .line 709
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 710
    .line 711
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 712
    .line 713
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 718
    .line 719
    .line 720
    move-result-wide v5

    .line 721
    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->spectatorSit(IIIJ)Ljava/nio/ByteBuffer;

    .line 722
    .line 723
    .line 724
    move-result-object p1

    .line 725
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 726
    .line 727
    .line 728
    monitor-exit v1

    .line 729
    return-void

    .line 730
    :cond_18
    const-string v2, "cmd_get_kick_out_room_position_info"

    .line 731
    .line 732
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v2

    .line 736
    if-eqz v2, :cond_19

    .line 737
    .line 738
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 739
    .line 740
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 741
    .line 742
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->position:I

    .line 743
    .line 744
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->p()I

    .line 745
    .line 746
    .line 747
    move-result v4

    .line 748
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 749
    .line 750
    .line 751
    move-result-wide v5

    .line 752
    invoke-static {v2, v3, v4, v5, v6}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->getKickPlayerInfo(IIIJ)Ljava/nio/ByteBuffer;

    .line 753
    .line 754
    .line 755
    move-result-object p1

    .line 756
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 757
    .line 758
    .line 759
    monitor-exit v1

    .line 760
    return-void

    .line 761
    :cond_19
    const-string v2, "cmd_get_frameforward_server"

    .line 762
    .line 763
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    if-eqz v2, :cond_1a

    .line 768
    .line 769
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 770
    .line 771
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 772
    .line 773
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 774
    .line 775
    .line 776
    move-result-wide v3

    .line 777
    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->getFrameForwardServer(IJ)Ljava/nio/ByteBuffer;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 782
    .line 783
    .line 784
    monitor-exit v1

    .line 785
    return-void

    .line 786
    :cond_1a
    const-string v2, "cmd_join_battle_area"

    .line 787
    .line 788
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v2

    .line 792
    if-eqz v2, :cond_1b

    .line 793
    .line 794
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 795
    .line 796
    iget-object v2, p1, Lapp/mgsim/arena/ArenaRequest;->battleArea:Lcom/papa91/battle/protocol/BattleArea;

    .line 797
    .line 798
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 799
    .line 800
    .line 801
    move-result-wide v3

    .line 802
    invoke-static {v2, v3, v4}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->joinBattleArea(Lcom/papa91/battle/protocol/BattleArea;J)Ljava/nio/ByteBuffer;

    .line 803
    .line 804
    .line 805
    move-result-object p1

    .line 806
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 807
    .line 808
    .line 809
    goto :goto_1

    .line 810
    :cond_1b
    const-string v2, "cmd_send_score_board"

    .line 811
    .line 812
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v2

    .line 816
    if-eqz v2, :cond_1c

    .line 817
    .line 818
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 819
    .line 820
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 821
    .line 822
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->uid:I

    .line 823
    .line 824
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 825
    .line 826
    .line 827
    move-result-wide v4

    .line 828
    iget-object p1, p1, Lapp/mgsim/arena/ArenaRequest;->battleScoreBoard:Ljava/lang/String;

    .line 829
    .line 830
    invoke-static {v2, v3, v4, v5, p1}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->battleScoreBoardReq(IIJLjava/lang/String;)Ljava/nio/ByteBuffer;

    .line 831
    .line 832
    .line 833
    move-result-object p1

    .line 834
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 835
    .line 836
    .line 837
    goto :goto_1

    .line 838
    :cond_1c
    const-string v2, "cmd_send_rom_loaded"

    .line 839
    .line 840
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v2

    .line 844
    if-eqz v2, :cond_1d

    .line 845
    .line 846
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 847
    .line 848
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 849
    .line 850
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->uid:I

    .line 851
    .line 852
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 853
    .line 854
    .line 855
    move-result-wide v4

    .line 856
    iget-object p1, p1, Lapp/mgsim/arena/ArenaRequest;->battleScoreBoard:Ljava/lang/String;

    .line 857
    .line 858
    invoke-static {v2, v3, v4, v5, p1}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createRomLoadedReq(IIJLjava/lang/String;)Ljava/nio/ByteBuffer;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 863
    .line 864
    .line 865
    goto :goto_1

    .line 866
    :cond_1d
    const-string v2, "cmd_send_re_join_room"

    .line 867
    .line 868
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-eqz v0, :cond_1e

    .line 873
    .line 874
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 875
    .line 876
    iget v2, p1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    .line 877
    .line 878
    iget v3, p1, Lapp/mgsim/arena/ArenaRequest;->uid:I

    .line 879
    .line 880
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->l(Lapp/mgsim/arena/ArenaRequest;)J

    .line 881
    .line 882
    .line 883
    move-result-wide v4

    .line 884
    invoke-static {v2, v3, v4, v5}, Lapp/mgsim/arena/ByteBufferBuilderFactory;->createRejoinRoomReq(IIJ)Ljava/nio/ByteBuffer;

    .line 885
    .line 886
    .line 887
    move-result-object p1

    .line 888
    invoke-virtual {v0, p1}, Lapp/mgsim/arena/ArenaSocketThread;->sendDataToServer(Ljava/nio/ByteBuffer;)V

    .line 889
    .line 890
    .line 891
    :cond_1e
    :goto_1
    monitor-exit v1

    .line 892
    return-void

    .line 893
    :catchall_0
    move-exception p1

    .line 894
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    throw p1
.end method

.method public m()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:Lapp/mgsim/arena/UDPHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lapp/mgsim/arena/UDPHelper;->getAreaMaps()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public n()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->p:Lcom/papa91/battle/protocol/BattleArea;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(I)Lapp/mgsim/arena/ArenaResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lapp/mgsim/arena/ArenaResponse;

    .line 12
    .line 13
    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    const-string p1, "---service onBind----"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/join/mgps/socket/fight/arena/ArenaService$b;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/join/mgps/socket/fight/arena/ArenaService$b;-><init>(Lcom/join/mgps/socket/fight/arena/ArenaService;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->j:Lcom/join/mgps/rpc/l;

    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->k:Lcom/join/mgps/rpc/l;

    .line 15
    .line 16
    const-string v0, "---service onCreate----"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lapp/mgsim/arena/ArenaSocketThread;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->n:Lapp/mgsim/arena/SocketListener;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lapp/mgsim/arena/ArenaSocketThread;-><init>(Lapp/mgsim/arena/SocketListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    .line 32
    const-wide/16 v1, 0x2

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    new-instance v0, Lapp/mgsim/arena/UDPHelper;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lapp/mgsim/arena/UDPHelper;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->e:Lapp/mgsim/arena/UDPHelper;

    .line 55
    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const-string v0, "---service onDestroy----"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 7
    .line 8
    iget-object v0, v0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Lapp/mgsim/arena/CheckThread;->stop()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    .line 1
    const-string p2, "---service onStartCommand----"

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "---service onStartCommand----action-->"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "com.join.mgps.socket.fight.arena.leave_room"

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const-string p2, "gameId"

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->t(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v0, "com.join.mgps.socket.fight.arena.cancel_subscribe"

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->i()V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    const-string v0, "---service onUnbind----"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method q(Lapp/mgsim/arena/ArenaRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->r:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->u(Lapp/mgsim/arena/ArenaRequest;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method r(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    check-cast p1, Lcom/papa91/battle/protocol/Response;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "handleServerResponse  requestId :"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lapp/mgsim/arena/ArenaResponse;

    .line 31
    .line 32
    invoke-direct {v3}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    .line 33
    .line 34
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    cmp-long v7, v1, v4

    .line 39
    .line 40
    if-nez v7, :cond_6

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    iput v1, v3, Lapp/mgsim/arena/ArenaResponse;->messageType:I

    .line 44
    .line 45
    iput v6, v3, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getType()Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "handleServerResponse server push message type : "

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p0, v4}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->PONG:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 72
    .line 73
    if-ne v2, v4, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Pong;->getTimestamp()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    sub-long/2addr v1, v3

    .line 94
    long-to-int p1, v1

    .line 95
    if-ltz p1, :cond_0

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "ping value :"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->f:I

    .line 118
    .line 119
    :cond_0
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :cond_1
    sget-object v4, Lcom/papa91/battle/protocol/Response$ProtoType;->ACCOUNT_KICK_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 122
    .line 123
    if-ne v2, v4, :cond_2

    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 126
    .line 127
    const-string v2, "\u68c0\u6d4b\u5230\u4f60\u7684\u8d26\u6237\u5728\u53e6\u5916\u4e00\u53f0\u624b\u673a\u767b\u9646!"

    .line 128
    .line 129
    invoke-static {v1, v2}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p1, v1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 134
    .line 135
    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :cond_2
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->UPDATE_AREA_ONLINE_PEOPLE_BROADCAST:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 139
    .line 140
    if-ne v2, v1, :cond_3

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, v3, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 147
    .line 148
    const-string v1, "push_update_area_online_people_broadcast"

    .line 149
    .line 150
    iput-object v1, v3, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {p0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->F(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    invoke-static {v3, p1}, Lcom/join/mgps/socket/fight/arena/c;->j(Lapp/mgsim/arena/ArenaResponse;Lcom/papa91/battle/protocol/Response;)Lapp/mgsim/arena/ArenaResponse;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    :goto_0
    iget-object v1, v3, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 165
    .line 166
    const-string v2, "push_dissolve_room"

    .line 167
    .line 168
    if-eq v1, v2, :cond_4

    .line 169
    .line 170
    const-string v2, "push_update_room"

    .line 171
    .line 172
    if-eq v1, v2, :cond_4

    .line 173
    .line 174
    const-string v2, "push_kick_room"

    .line 175
    .line 176
    if-ne v1, v2, :cond_5

    .line 177
    .line 178
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_5
    invoke-virtual {p0, v3}, Lcom/join/mgps/socket/fight/arena/ArenaService;->v(Lapp/mgsim/arena/ArenaResponse;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_6
    iget-object v4, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    .line 201
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Lapp/mgsim/arena/ArenaRequest;

    .line 210
    .line 211
    if-nez v4, :cond_7

    .line 212
    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v3, "handleServerResponse get request is null by request id :"

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 235
    :cond_7
    iput v6, v3, Lapp/mgsim/arena/ArenaResponse;->messageType:I

    .line 236
    .line 237
    invoke-direct {p0, v3, v4, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->B(Lapp/mgsim/arena/ArenaResponse;Lapp/mgsim/arena/ArenaRequest;Lcom/papa91/battle/protocol/Response;)V

    .line 238
    .line 239
    .line 240
    :goto_1
    monitor-exit v0

    .line 241
    return-void

    .line 242
    :catchall_0
    move-exception p1

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    throw p1
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->d:Lapp/mgsim/arena/AreaInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method t(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "leaved room"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lapp/mgsim/arena/ArenaRequestFactory;->leaveRoom(I)Lapp/mgsim/arena/ArenaRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->C(Lapp/mgsim/arena/ArenaRequest;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    int-to-long v2, p1

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/wufan/friend/chat/c;->i(IJ)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method v(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/c;->j(Lapp/mgsim/arena/ArenaResponse;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 33
    .line 34
    invoke-interface {v2, p1}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "notifyObservers exception:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method w(Lapp/mgsim/arena/SocketError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socketError"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 21
    .line 22
    invoke-interface {v2, p1}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onError(Lapp/mgsim/arena/SocketError;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method x()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    const-string v0, "----receiver on onUID Changed---"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->y(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->l:Lapp/mgsim/arena/ArenaSocketThread;

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    const-string v2, "\u5207\u6362\u8d26\u6237\uff0c\u9700\u8981\u91cd\u65b0\u767b\u9646"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lapp/mgsim/arena/SocketUtils;->createSocketError(ILjava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method y(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    const-string v0, "ArenaService"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService;->m:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method
