.class public Lorg/jboss/netty/channel/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/x$b;,
        Lorg/jboss/netty/channel/x$a;
    }
.end annotation


# static fields
.field static final f:Lorg/jboss/netty/channel/p;


# instance fields
.field private volatile a:Lorg/jboss/netty/channel/e;

.field private volatile b:Lorg/jboss/netty/channel/p;

.field private volatile c:Lorg/jboss/netty/channel/x$a;

.field private volatile d:Lorg/jboss/netty/channel/x$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/x$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jboss/netty/channel/x$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/channel/x;->f:Lorg/jboss/netty/channel/p;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method private B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 27
    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 38
    .line 39
    iget-object v1, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 40
    .line 41
    iput-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 42
    .line 43
    iput-object v0, v1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 44
    .line 45
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->q(Lorg/jboss/netty/channel/m;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-object p1
.end method

.method private C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->l(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 9
    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->i(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v7, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 39
    .line 40
    iget-object v8, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 41
    .line 42
    new-instance v9, Lorg/jboss/netty/channel/x$a;

    .line 43
    .line 44
    move-object v1, v9

    .line 45
    move-object v2, p0

    .line 46
    move-object v3, v7

    .line 47
    move-object v4, v8

    .line 48
    move-object v5, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v9}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 57
    .line 58
    .line 59
    iput-object v9, v7, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 60
    .line 61
    iput-object v9, v8, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-object p3, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object p3, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {p3, p2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    const/4 p3, 0x0

    .line 81
    const/4 v0, 0x0

    .line 82
    :try_start_0
    invoke-static {p1}, Lorg/jboss/netty/channel/x;->q(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    move-object v1, v0

    .line 86
    const/4 v2, 0x1

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    const/4 v2, 0x0

    .line 90
    :goto_0
    :try_start_1
    invoke-direct {p0, v9}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_1
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    const/4 p2, 0x0

    .line 96
    :goto_1
    if-nez v2, :cond_5

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    new-instance p2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    .line 102
    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v0, "Both "

    .line 109
    .line 110
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ".afterRemove() and "

    .line 129
    .line 130
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, ".afterAdd() failed; see logs."

    .line 149
    .line 150
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p2

    .line 161
    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    .line 162
    .line 163
    if-eqz p2, :cond_6

    .line 164
    .line 165
    :goto_3
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_6
    throw v0

    .line 171
    :cond_7
    throw v1
.end method

.method static synthetic n(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->u(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic o(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->v(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private p(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/h0;->afterAdd(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    check-cast p1, Lorg/jboss/netty/channel/x$a;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    :goto_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ".afterAdd() has thrown an exception; removed."

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    new-instance p1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ".afterAdd() has thrown an exception; also failed to remove."

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p1, v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method private static q(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/h0;->afterRemove(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ".afterRemove() has thrown an exception."

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0, p0}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method private static r(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/h0;->beforeAdd(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ".beforeAdd() has thrown an exception; not adding."

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0, p0}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method private static s(Lorg/jboss/netty/channel/m;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/jboss/netty/channel/h0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/jboss/netty/channel/h0;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/h0;->beforeRemove(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ".beforeRemove() has thrown an exception; not removing."

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0, p0}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw v1
.end method

.method private t(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Duplicate handler name: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private u(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    return-object p1
.end method

.method private v(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    return-object p1
.end method

.method private w(Ljava/lang/Class;)Lorg/jboss/netty/channel/x$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/x$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jboss/netty/channel/x$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jboss/netty/channel/x$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method private y(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/x$a;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jboss/netty/channel/x$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method private z(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 7

    .line 1
    new-instance v6, Lorg/jboss/netty/channel/x$a;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p0

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v6}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 13
    .line 14
    .line 15
    iput-object v6, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 16
    .line 17
    iput-object v6, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 18
    .line 19
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v6}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method protected A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/channel/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    move-object p2, v0

    .line 22
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    .line 23
    .line 24
    invoke-interface {v0, p0, p1, p2}, Lorg/jboss/netty/channel/p;->a(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-void
.end method

.method D(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/channel/p0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/jboss/netty/channel/g;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/g;->handleDownstream(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "cannot send an upstream event to downstream"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method E(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jboss/netty/channel/r;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/r;->handleUpstream(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public a(Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/x;->v(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/x;->E(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lorg/jboss/netty/channel/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/x;->u(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->f()Lorg/jboss/netty/channel/p;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/p;->b(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/x;->A(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/x;->D(Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/h;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public declared-synchronized c(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->y(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/x$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->i(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v6, Lorg/jboss/netty/channel/x$a;

    .line 18
    .line 19
    iget-object v3, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 20
    .line 21
    move-object v0, v6

    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p1

    .line 24
    move-object v4, p2

    .line 25
    move-object v5, p3

    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v6}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 30
    .line 31
    .line 32
    iget-object p3, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 33
    .line 34
    iput-object v6, p3, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 35
    .line 36
    iput-object v6, p1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 37
    .line 38
    iget-object p1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v6}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method

.method public declared-synchronized e(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->y(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/x$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/x;->C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/x;->f()Lorg/jboss/netty/channel/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/p;->c(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f()Lorg/jboss/netty/channel/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/jboss/netty/channel/x;->f:Lorg/jboss/netty/channel/p;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public declared-synchronized g(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/x;->C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/x;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/m;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 5
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getChannel()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->a:Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/m;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    monitor-exit p0

    return-object v1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 14
    :cond_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 15
    monitor-exit p0

    return-object v0

    .line 16
    :cond_2
    :try_start_2
    iget-object v0, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    .line 17
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 18
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handlerType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/m;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jboss/netty/channel/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/m;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p1, :cond_2

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_2
    :try_start_2
    iget-object v0, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    .line 9
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public declared-synchronized getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public getNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 16
    .line 17
    :cond_1
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public declared-synchronized i(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/x;->z(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v6, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 18
    .line 19
    new-instance v7, Lorg/jboss/netty/channel/x$a;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move-object v0, v7

    .line 23
    move-object v1, p0

    .line 24
    move-object v2, v6

    .line 25
    move-object v4, p1

    .line 26
    move-object v5, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v7}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 31
    .line 32
    .line 33
    iput-object v7, v6, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 34
    .line 35
    iput-object v7, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 36
    .line 37
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {p2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v7}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public declared-synchronized j(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/x;->l(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v6, Lorg/jboss/netty/channel/x$a;

    .line 18
    .line 19
    iget-object v2, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 20
    .line 21
    move-object v0, v6

    .line 22
    move-object v1, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object v4, p2

    .line 25
    move-object v5, p3

    .line 26
    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v6}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 30
    .line 31
    .line 32
    iget-object p3, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 33
    .line 34
    iput-object v6, p3, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 35
    .line 36
    iput-object v6, p1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 37
    .line 38
    iget-object p1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v6}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method

.method public k(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/p;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->a:Lorg/jboss/netty/channel/e;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lorg/jboss/netty/channel/x;->a:Lorg/jboss/netty/channel/e;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/jboss/netty/channel/x;->b:Lorg/jboss/netty/channel/p;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p2, "attached already"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string p2, "sink"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 35
    .line 36
    const-string p2, "channel"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public declared-synchronized l(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/x;->z(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->t(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v6, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 18
    .line 19
    new-instance v7, Lorg/jboss/netty/channel/x$a;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v0, v7

    .line 23
    move-object v1, p0

    .line 24
    move-object v3, v6

    .line 25
    move-object v4, p1

    .line 26
    move-object v5, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/x$a;-><init>(Lorg/jboss/netty/channel/x;Lorg/jboss/netty/channel/x$a;Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v7}, Lorg/jboss/netty/channel/x;->r(Lorg/jboss/netty/channel/m;)V

    .line 31
    .line 32
    .line 33
    iput-object v7, v6, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 34
    .line 35
    iput-object v7, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 36
    .line 37
    iget-object p2, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {p2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v7}, Lorg/jboss/netty/channel/x;->p(Lorg/jboss/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public declared-synchronized m(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->w(Ljava/lang/Class;)Lorg/jboss/netty/channel/x$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/channel/x;->C(Lorg/jboss/netty/channel/x$a;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->w(Ljava/lang/Class;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->x(Ljava/lang/String;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/x;->B(Lorg/jboss/netty/channel/x$a;)Lorg/jboss/netty/channel/x$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iput-object v2, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 23
    .line 24
    iput-object v2, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 33
    .line 34
    iput-object v2, v1, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 35
    .line 36
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 37
    .line 38
    iput-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 39
    .line 40
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->q(Lorg/jboss/netty/channel/m;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    .line 57
    return-object v0

    .line 58
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0

    .line 72
    throw v0
.end method

.method public declared-synchronized removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iput-object v2, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 23
    .line 24
    iput-object v2, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 33
    .line 34
    iput-object v2, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 35
    .line 36
    iget-object v1, v0, Lorg/jboss/netty/channel/x$a;->b:Lorg/jboss/netty/channel/x$a;

    .line 37
    .line 38
    iput-object v1, p0, Lorg/jboss/netty/channel/x;->d:Lorg/jboss/netty/channel/x$a;

    .line 39
    .line 40
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/channel/x;->s(Lorg/jboss/netty/channel/m;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    .line 57
    return-object v0

    .line 58
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0

    .line 72
    throw v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->e:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 16
    .line 17
    :cond_1
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x7b

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/jboss/netty/channel/x;->c:Lorg/jboss/netty/channel/x$a;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    :goto_0
    const/16 v2, 0x28

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " = "

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/jboss/netty/channel/x$a;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x29

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, v1, Lorg/jboss/netty/channel/x$a;->a:Lorg/jboss/netty/channel/x$a;

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const-string v2, ", "

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    :goto_1
    const/16 v1, 0x7d

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
