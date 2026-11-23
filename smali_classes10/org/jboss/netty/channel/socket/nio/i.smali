.class Lorg/jboss/netty/channel/socket/nio/i;
.super Led/c;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/s;


# static fields
.field private static final i:Lorg/jboss/netty/channel/k0;


# instance fields
.field private volatile d:I

.field private volatile e:I

.field private volatile f:Lorg/jboss/netty/channel/j0;

.field private volatile g:Lorg/jboss/netty/channel/k0;

.field private volatile h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jboss/netty/channel/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/channel/socket/nio/i;->i:Lorg/jboss/netty/channel/k0;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Led/c;-><init>(Ljava/net/Socket;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x10000

    .line 5
    .line 6
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->d:I

    .line 7
    .line 8
    const p1, 0x8000

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:I

    .line 12
    .line 13
    sget-object p1, Lorg/jboss/netty/channel/socket/nio/i;->i:Lorg/jboss/netty/channel/k0;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/k0;

    .line 16
    .line 17
    const/16 p1, 0x10

    .line 18
    .line 19
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->h:I

    .line 20
    .line 21
    return-void
.end method

.method private j(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->d:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "writeBufferHighWaterMark: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method private k(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "writeBufferLowWaterMark: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method


# virtual methods
.method public b()Lorg/jboss/netty/channel/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/k0;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lorg/jboss/netty/channel/j0;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Lorg/jboss/netty/channel/j0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->b()Lorg/jboss/netty/channel/k0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lorg/jboss/netty/channel/k0;->a()Lorg/jboss/netty/channel/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Lorg/jboss/netty/channel/j0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Failed to create a new "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-class v3, Lorg/jboss/netty/channel/j0;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x2e

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_0
    :goto_0
    return-object v0
.end method

.method public e(Lorg/jboss/netty/channel/j0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->f:Lorg/jboss/netty/channel/j0;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "predictor"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public f(Lorg/jboss/netty/channel/k0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->g:Lorg/jboss/netty/channel/k0;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "predictorFactory"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Led/c;->g(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "writeBufferHighWaterMark"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->j(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "writeBufferLowWaterMark"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->k(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string v0, "writeSpinCount"

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {p2}, Lorg/jboss/netty/util/internal/b;->b(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->setWriteSpinCount(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "receiveBufferSizePredictorFactory"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    check-cast p2, Lorg/jboss/netty/channel/k0;

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/nio/i;->f(Lorg/jboss/netty/channel/k0;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const-string v0, "receiveBufferSizePredictor"

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    check-cast p2, Lorg/jboss/netty/channel/j0;

    .line 80
    .line 81
    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/nio/i;->e(Lorg/jboss/netty/channel/j0;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return v1

    .line 85
    :cond_5
    const/4 p1, 0x0

    .line 86
    return p1
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/i;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/v;->setOptions(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferLowWaterMark()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    ushr-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->k(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setWriteBufferHighWaterMark(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferLowWaterMark()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->j(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferLowWaterMark()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "): "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public setWriteBufferLowWaterMark(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/i;->k(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/i;->getWriteBufferHighWaterMark()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "): "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public setWriteSpinCount(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/i;->h:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "writeSpinCount must be a positive integer."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
