.class public Lcom/wufan/friend/chat/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile n:Lcom/wufan/friend/chat/c;


# instance fields
.field private a:Landroid/content/Context;

.field b:Lcom/wufan/friend/chat/rpc/b;

.field c:Landroid/os/Handler;

.field private d:Z

.field private e:I

.field private f:Lcom/join/mgps/dto/FriendAccountInfo;

.field private g:Lcom/join/mgps/socket/fight/arena/b;

.field h:Lcom/join/mgps/dto/FriendBean;

.field i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/join/mgps/dto/FriendInviteBean;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field final k:I

.field private l:Lcom/join/mgps/socket/fight/arena/b$b;

.field public final m:Lapp/mgsim/arena/SocketListener$NotifyObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->c:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/wufan/friend/chat/c;->e:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    .line 27
    .line 28
    const/16 v0, 0x3a98

    .line 29
    .line 30
    iput v0, p0, Lcom/wufan/friend/chat/c;->k:I

    .line 31
    .line 32
    new-instance v0, Lcom/wufan/friend/chat/c$b;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/wufan/friend/chat/c$b;-><init>(Lcom/wufan/friend/chat/c;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->l:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 38
    .line 39
    new-instance v0, Lcom/wufan/friend/chat/c$c;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/wufan/friend/chat/c$c;-><init>(Lcom/wufan/friend/chat/c;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->m:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->C()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private synthetic I(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lcom/join/mgps/event/w;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic J(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lq5/f;->s()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, v0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    move-wide v5, p3

    .line 51
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, ""

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0, v1}, Lcom/wufan/friend/chat/c;->Y(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    move-object v3, p1

    .line 68
    move-object v4, p2

    .line 69
    move/from16 v7, p5

    .line 70
    .line 71
    move/from16 v8, p6

    .line 72
    .line 73
    invoke-virtual/range {v2 .. v10}, Lcom/wufan/friend/chat/rpc/b;->h(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JIIZLjava/util/List;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private X()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u91cd\u8bd5"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method

.method public static synthetic a(Lcom/wufan/friend/chat/c;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/wufan/friend/chat/c;->J(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V

    return-void
.end method

.method public static synthetic b(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/c;->I(Lcom/join/mgps/dto/FriendBean;)V

    return-void
.end method

.method static synthetic c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/wufan/friend/chat/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/c;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u()Lcom/wufan/friend/chat/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/c;->n:Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/wufan/friend/chat/c;

    .line 6
    .line 7
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/c;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/wufan/friend/chat/c;->n:Lcom/wufan/friend/chat/c;

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/wufan/friend/chat/c;->n:Lcom/wufan/friend/chat/c;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/c;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->m()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/rpc/h;->K:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/rpc/h;->L:I

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/wufan/friend/chat/rpc/b;->o(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->d()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    new-instance v2, Lcom/wufan/friend/chat/rpc/b;

    .line 23
    .line 24
    invoke-direct {v2, v0, v1}, Lcom/wufan/friend/chat/rpc/b;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->isBanned()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public E(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/join/mgps/dto/FriendBean;

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getTimestamp()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    sub-long/2addr v3, v5

    .line 36
    const-wide/16 v5, 0x3a98

    .line 37
    .line 38
    cmp-long v7, v3, v5

    .line 39
    .line 40
    if-lez v7, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, ""

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :cond_3
    return v1
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/wufan/friend/chat/c;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public G(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    const-string v0, "[0-9]*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method H(ILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roomId",
            "pwd",
            "elite"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, p1, p2, p3}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 42
    .line 43
    iget-object p2, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/wufan/friend/chat/c;->L(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public L(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/wufan/friend/chat/rpc/b;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public M()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/wufan/friend/chat/c;->d:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/wufan/friend/chat/c;->e:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/dto/FriendBean;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getRoomPasswd()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomPwd(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getLobbyRoomId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->isEliteField()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setSource(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/event/w;

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    invoke-direct {v1, v2}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getFromAccountId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Lcom/join/mgps/event/w;->m(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->N()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/event/w;

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    invoke-direct {v1, v2}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getFromAccountId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Lcom/join/mgps/event/w;->m(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->N()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public R(Lcom/join/mgps/dto/FriendInviteBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x5

    .line 14
    const/4 v2, 0x0

    .line 15
    if-lt v0, v1, :cond_5

    .line 16
    .line 17
    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    move-object v2, p1

    .line 32
    check-cast v2, Lcom/join/mgps/dto/FriendInviteBean;

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->J(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-static {}, Lcom/join/android/app/common/utils/q;->x()Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    instance-of p1, p1, Lcom/join/mgps/activity/FriendInviteActivity;

    .line 51
    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_0
    return-void

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-lez p1, :cond_6

    .line 82
    .line 83
    iget-object p1, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    move-object v2, p1

    .line 90
    check-cast v2, Lcom/join/mgps/dto/FriendInviteBean;

    .line 91
    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->J(Landroid/content/Context;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    invoke-static {}, Lcom/join/android/app/common/utils/q;->x()Landroid/app/Activity;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    instance-of p1, p1, Lcom/join/mgps/activity/FriendInviteActivity;

    .line 109
    .line 110
    if-nez p1, :cond_9

    .line 111
    .line 112
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_9
    :goto_1
    return-void
.end method

.method public S(Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 2
    .line 3
    return-void
.end method

.method public T(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logged"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/c;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public U(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    sget-object p1, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    sget-object p1, Lcom/wufan/friend/chat/protocol/OnlineState;->INVISIBLE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/OnlineState;->OFFLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/rpc/b;->s(Lcom/wufan/friend/chat/protocol/OnlineState;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public V(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opponet"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    return-void
.end method

.method public W(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/c;->e:I

    .line 2
    .line 3
    return-void
.end method

.method Y(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x7

    .line 31
    if-lt v1, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x6

    .line 42
    aget-char p1, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    const/16 v1, 0x31

    .line 45
    .line 46
    if-ne p1, v1, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    :cond_0
    return v0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return v0
.end method

.method public Z()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->m:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/join/mgps/dto/FriendBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/FriendBean;->setTimestamp(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->j:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/join/mgps/event/w;

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->c:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v1, Lcom/wufan/friend/chat/b;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/wufan/friend/chat/b;-><init>(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x3a98

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->l:Lcom/join/mgps/socket/fight/arena/b$b;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/friend/chat/c;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->e()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->d()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/q;->x()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 28
    .line 29
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/rpc/b;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "roomId"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    sget-object p1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->JOIN:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_2

    .line 13
    .line 14
    sget-object p1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;->LEAVE:Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/wufan/friend/chat/rpc/b;->b(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method public j(Lapp/mgsim/arena/ArenaResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->w()Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->m:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lapp/mgsim/arena/SocketListener$NotifyObserver;->onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method k(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_5

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->X(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u63d2\u4ef6..."

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v1, p1, v2, v0, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->createRoom(Ljava/lang/String;Ljava/lang/String;IIZ)Lapp/mgsim/arena/ArenaRequest;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->z()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-boolean v3, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 114
    .line 115
    iput-boolean v2, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 116
    .line 117
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->g:Lcom/join/mgps/socket/fight/arena/b;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txt"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "\\$(.*?)\\$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/Util/o;->b()Lcom/join/mgps/Util/o;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/o;->f([B)[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/c;->G(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return p1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    return p1
.end method

.method public m(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    const-string v0, "\u590d\u5236\u53e3\u4ee4$%s$\u6253\u5f00\u609f\u996d\u6e38\u620f\u5385\uff0c\u52a0\u6211\u597d\u53cb\u3010\u4e0b\u8f7d\u5730\u5740https://tuis.5fun.com/?aid=7Fp12l\u3011"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/o;->b()Lcom/join/mgps/Util/o;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "%10d"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v4, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object p1, v4, v5

    .line 18
    .line 19
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/o;->g([B)[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-array v1, v3, [Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 36
    .line 37
    .line 38
    aput-object v2, v1, v5

    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object v0
.end method

.method public n(IILjava/lang/String;ZJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "roomId",
            "roomPwd",
            "elite",
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Lcom/wufan/friend/chat/c;->Y(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    move v1, p1

    .line 28
    move v2, p2

    .line 29
    move-object v3, p3

    .line 30
    move v4, p4

    .line 31
    move-wide v5, p5

    .line 32
    invoke-virtual/range {v0 .. v7}, Lcom/wufan/friend/chat/rpc/b;->f(IILjava/lang/String;ZJZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public o(Lcom/join/mgps/dto/FriendBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/wufan/friend/chat/c$a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/wufan/friend/chat/c$a;-><init>(Lcom/wufan/friend/chat/c;Lcom/join/mgps/dto/FriendBean;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    const-string v3, "FIGHT_LOBBY"

    .line 14
    .line 15
    invoke-static {v0, p1, v2, v3, v1}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public p(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "join"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendBean;->setAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRoomId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRoomPwd()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isElite()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, v0, v1, p1}, Lcom/wufan/friend/chat/c;->H(ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public q(IIJII)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "type",
            "gameId",
            "roomId",
            "uid"
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    move v9, p1

    .line 3
    move/from16 v10, p5

    .line 4
    .line 5
    iget-object v0, v8, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v11, 0x2

    .line 11
    if-nez v9, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->START:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    if-ne v9, v11, :cond_2

    .line 17
    .line 18
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->OVER:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    :goto_0
    move-object v2, v0

    .line 23
    move/from16 v0, p2

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/c;->x(I)Lcom/wufan/friend/chat/protocol/PlayType;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v12, v8, Lcom/wufan/friend/chat/c;->c:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v13, Lcom/wufan/friend/chat/a;

    .line 32
    .line 33
    move-object v0, v13

    .line 34
    move-object v1, p0

    .line 35
    move-wide/from16 v4, p3

    .line 36
    .line 37
    move/from16 v6, p5

    .line 38
    .line 39
    move/from16 v7, p6

    .line 40
    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/wufan/friend/chat/a;-><init>(Lcom/wufan/friend/chat/c;Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    if-ne v9, v11, :cond_3

    .line 48
    .line 49
    if-eqz v10, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    int-to-long v1, v10

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lcom/wufan/friend/chat/c;->i(IJ)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public r()Lcom/join/mgps/dto/FriendAccountInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->f:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lcom/join/mgps/dto/FriendInviteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->i:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/FriendInviteBean;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/wufan/friend/chat/rpc/b;->i()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public v(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/wufan/friend/chat/rpc/b;->j(IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public w()Lcom/join/mgps/dto/FriendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    return-object v0
.end method

.method x(I)Lcom/wufan/friend/chat/protocol/PlayType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0xe

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayType;->NET_BATTLE:Lcom/wufan/friend/chat/protocol/PlayType;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/PlayType;->STAND:Lcom/wufan/friend/chat/protocol/PlayType;

    .line 11
    .line 12
    return-object p1
.end method

.method public y(JLjava/lang/String;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "gameSeries",
            "downloadGameIds",
            "locationTypeValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p3, :cond_1

    .line 7
    .line 8
    const-string p3, ""

    .line 9
    .line 10
    :cond_1
    move-object v3, p3

    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/c;->b:Lcom/wufan/friend/chat/rpc/b;

    .line 12
    .line 13
    move-wide v1, p1

    .line 14
    move-object v4, p4

    .line 15
    move v5, p5

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/wufan/friend/chat/rpc/b;->l(JLjava/lang/String;Ljava/util/List;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method z()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "register_type_public"

    return-object v0
.end method
