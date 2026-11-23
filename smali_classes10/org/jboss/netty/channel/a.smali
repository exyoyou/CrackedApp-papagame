.class public abstract Lorg/jboss/netty/channel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/a$a;
    }
.end annotation


# static fields
.field static final l:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Random;

.field static final synthetic n:Z


# instance fields
.field private final b:Ljava/lang/Integer;

.field private final c:Lorg/jboss/netty/channel/e;

.field private final d:Lorg/jboss/netty/channel/i;

.field private final e:Lorg/jboss/netty/channel/n;

.field private final f:Lorg/jboss/netty/channel/j;

.field private final g:Lorg/jboss/netty/channel/a$a;

.field private volatile h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private volatile k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/channel/a;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Random;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/jboss/netty/channel/a;->m:Ljava/util/Random;

    .line 14
    .line 15
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/jboss/netty/channel/n0;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/n0;-><init>(Lorg/jboss/netty/channel/e;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/j;

    .line 12
    new-instance v0, Lorg/jboss/netty/channel/a$a;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/a$a;-><init>(Lorg/jboss/netty/channel/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->g:Lorg/jboss/netty/channel/a$a;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lorg/jboss/netty/channel/a;->h:I

    .line 14
    iput-object p1, p0, Lorg/jboss/netty/channel/a;->b:Ljava/lang/Integer;

    .line 15
    iput-object p2, p0, Lorg/jboss/netty/channel/a;->c:Lorg/jboss/netty/channel/e;

    .line 16
    iput-object p3, p0, Lorg/jboss/netty/channel/a;->d:Lorg/jboss/netty/channel/i;

    .line 17
    iput-object p4, p0, Lorg/jboss/netty/channel/a;->e:Lorg/jboss/netty/channel/n;

    .line 18
    invoke-interface {p4, p0, p5}, Lorg/jboss/netty/channel/n;->k(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/p;)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/jboss/netty/channel/n0;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/n0;-><init>(Lorg/jboss/netty/channel/e;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/j;

    .line 3
    new-instance v0, Lorg/jboss/netty/channel/a$a;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/a$a;-><init>(Lorg/jboss/netty/channel/a;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/a;->g:Lorg/jboss/netty/channel/a$a;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lorg/jboss/netty/channel/a;->h:I

    .line 5
    iput-object p1, p0, Lorg/jboss/netty/channel/a;->c:Lorg/jboss/netty/channel/e;

    .line 6
    iput-object p2, p0, Lorg/jboss/netty/channel/a;->d:Lorg/jboss/netty/channel/i;

    .line 7
    iput-object p3, p0, Lorg/jboss/netty/channel/a;->e:Lorg/jboss/netty/channel/n;

    .line 8
    invoke-static {p0}, Lorg/jboss/netty/channel/a;->c(Lorg/jboss/netty/channel/e;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/channel/a;->b:Ljava/lang/Integer;

    .line 9
    invoke-interface {p3, p0, p4}, Lorg/jboss/netty/channel/n;->k(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/p;)V

    return-void
.end method

.method private static c(Lorg/jboss/netty/channel/e;)Ljava/lang/Integer;
    .locals 2

    .line 1
    sget-object v0, Lorg/jboss/netty/channel/a;->m:Ljava/util/Random;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    sget-object v1, Lorg/jboss/netty/channel/a;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    .line 13
    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x30

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "00"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "000"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "0000"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_0

    .line 92
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "00000"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_0

    .line 110
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, "000000"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    goto :goto_0

    .line 128
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "0000000"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_0

    .line 146
    :pswitch_7
    const-string v0, "00000000"

    .line 147
    .line 148
    :goto_0
    return-object v0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public I()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->X(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public J(I)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->U(Lorg/jboss/netty/channel/e;I)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public K()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->k:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public L0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/a;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public P(Z)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->L0()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    or-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->J(I)Lorg/jboss/netty/channel/j;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->L0()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    and-int/lit8 p1, p1, -0x2

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->J(I)Lorg/jboss/netty/channel/j;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public Q(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/channel/s;->b0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public S()Lorg/jboss/netty/channel/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->d:Lorg/jboss/netty/channel/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->a(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public close()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->c(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->g:Lorg/jboss/netty/channel/a$a;

    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/a;->e(Lorg/jboss/netty/channel/e;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->e(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/a;->k:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public disconnect()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->g(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e(Lorg/jboss/netty/channel/e;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->getId()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->getId()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected g()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->f:Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParent()Lorg/jboss/netty/channel/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->c:Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->e:Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    return-object v0
.end method

.method protected h()Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/f0;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/f0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected i()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/jboss/netty/channel/a;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/a;->b:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->g:Lorg/jboss/netty/channel/a$a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/jboss/netty/channel/a$a;->o()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->g:Lorg/jboss/netty/channel/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jboss/netty/channel/w;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isReadable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->L0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    return v1
.end method

.method public isWritable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->L0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x4

    .line 6
    .line 7
    if-nez v0, :cond_0

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

.method protected j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jboss/netty/channel/a;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public t0()Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/a;->g:Lorg/jboss/netty/channel/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lorg/jboss/netty/channel/a;->i:Z

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/jboss/netty/channel/a;->j:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/16 v2, 0x80

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const-string v2, "[id: 0x"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lorg/jboss/netty/channel/a;->f()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getLocalAddress()Ljava/net/SocketAddress;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getRemoteAddress()Ljava/net/SocketAddress;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, ", "

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->getParent()Lorg/jboss/netty/channel/e;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v5, " => "

    .line 53
    .line 54
    const-string v6, " :> "

    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move-object v5, v6

    .line 65
    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move-object v5, v6

    .line 79
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    if-eqz v2, :cond_5

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_5
    :goto_2
    const/16 v2, 0x5d

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, p0, Lorg/jboss/netty/channel/a;->j:Ljava/lang/String;

    .line 104
    .line 105
    iput-boolean v0, p0, Lorg/jboss/netty/channel/a;->i:Z

    .line 106
    .line 107
    return-object v1
.end method

.method public write(Ljava/lang/Object;)Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/channel/s;->a0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
