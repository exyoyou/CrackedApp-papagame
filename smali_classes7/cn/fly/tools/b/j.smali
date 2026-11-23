.class public Lcn/fly/tools/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tools/b/j$c;,
        Lcn/fly/tools/b/j$b;,
        Lcn/fly/tools/b/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcn/fly/tools/b/j$a;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile f:I

.field private volatile g:Landroid/net/LocalServerSocket;

.field private volatile h:Ljava/lang/Thread;

.field private volatile i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcn/fly/tools/b/j;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcn/fly/tools/b/j$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcn/fly/tools/b/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput v1, p0, Lcn/fly/tools/b/j;->f:I

    .line 13
    .line 14
    sget-object v0, Lcn/fly/commons/ac;->e:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    iput-object v0, p0, Lcn/fly/tools/b/j;->i:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    iput-object p1, p0, Lcn/fly/tools/b/j;->b:Ljava/lang/String;

    .line 19
    .line 20
    iput p2, p0, Lcn/fly/tools/b/j;->c:I

    .line 21
    .line 22
    iput-object p3, p0, Lcn/fly/tools/b/j;->d:Lcn/fly/tools/b/j$a;

    .line 23
    .line 24
    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 0

    .line 48
    instance-of p1, p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a([B)Lcn/fly/tools/b/j$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const v1, 0x46495043

    if-ne p1, v1, :cond_4

    .line 89
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 90
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    if-ne p1, v1, :cond_2

    .line 91
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v2, 0x400

    if-gt v1, v2, :cond_1

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 94
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lcn/fly/tools/b/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcn/fly/tools/b/j$b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcn/fly/tools/b/j$1;)V

    return-object v0

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ipc param count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid ipc message type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported ipc version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid ipc magic"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/net/LocalSocket;)Lcn/fly/tools/b/j$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->f(Landroid/net/LocalSocket;)[B

    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->b([B)Lcn/fly/tools/b/j$c;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcn/fly/tools/b/j$c;->b(Lcn/fly/tools/b/j$c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lcn/fly/tools/b/j$c;->c(Lcn/fly/tools/b/j$c;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "ipc failed"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/fly/tools/b/j$c;->c(Lcn/fly/tools/b/j$c;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p1
.end method

.method private a(Lcn/fly/tools/b/j$b;)Lcn/fly/tools/b/j$c;
    .locals 4

    .line 40
    iget-object v0, p0, Lcn/fly/tools/b/j;->d:Lcn/fly/tools/b/j$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcn/fly/tools/b/j$b;->a(Lcn/fly/tools/b/j$b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcn/fly/tools/b/j$b;->b(Lcn/fly/tools/b/j$b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcn/fly/tools/b/j$a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    new-instance v0, Lcn/fly/tools/b/j$c;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p1, v2, v2}, Lcn/fly/tools/b/j$c;-><init>(ZLjava/lang/Object;Ljava/lang/String;Lcn/fly/tools/b/j$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_2
    new-instance p1, Lcn/fly/tools/b/j$c;

    invoke-direct {p1, v1, v2, v0, v2}, Lcn/fly/tools/b/j$c;-><init>(ZLjava/lang/Object;Ljava/lang/String;Lcn/fly/tools/b/j$1;)V

    return-object p1

    .line 47
    :cond_3
    :goto_0
    new-instance p1, Lcn/fly/tools/b/j$c;

    const-string v0, "handler unavailable"

    invoke-direct {p1, v1, v2, v0, v2}, Lcn/fly/tools/b/j$c;-><init>(ZLjava/lang/Object;Ljava/lang/String;Lcn/fly/tools/b/j$1;)V

    return-object p1
.end method

.method private a([BLjava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 184
    array-length v1, p1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 186
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 187
    :cond_1
    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$b;

    invoke-direct {v1, p2, p1}, Lcn/fly/tools/utils/FlyPersistence$b;-><init>(Ljava/lang/Class;[B)V

    invoke-virtual {v1, v0}, Lcn/fly/tools/utils/FlyPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private a(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_1

    .line 112
    new-array v0, v0, [B

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 114
    new-instance p1, Ljava/lang/String;

    sget-object v1, Lcn/fly/tools/b/j;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipc string too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/net/LocalSocket;Lcn/fly/tools/b/j$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v2, 0x46495043

    .line 65
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x1

    .line 66
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x2

    .line 67
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    if-nez p2, :cond_0

    .line 68
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    const-string p2, "null response"

    .line 69
    invoke-direct {p0, v1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 71
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j;->a(Landroid/net/LocalSocket;[B)V

    return-void

    .line 72
    :cond_0
    invoke-static {p2}, Lcn/fly/tools/b/j$c;->b(Lcn/fly/tools/b/j$c;)Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 73
    invoke-static {p2}, Lcn/fly/tools/b/j$c;->b(Lcn/fly/tools/b/j$c;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    :try_start_0
    invoke-static {p2}, Lcn/fly/tools/b/j$c;->a(Lcn/fly/tools/b/j$c;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 76
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 78
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 79
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 80
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 81
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string p2, "ipc encode failed"

    :cond_2
    invoke-direct {p0, v1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {p2}, Lcn/fly/tools/b/j$c;->c(Lcn/fly/tools/b/j$c;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 84
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j;->a(Landroid/net/LocalSocket;[B)V

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v5

    .line 86
    invoke-static {p1}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method private a(Landroid/net/LocalSocket;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocket;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v2, 0x46495043

    .line 51
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 54
    invoke-direct {p0, v1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 55
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 57
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 58
    invoke-direct {p0, v1, v3}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcn/fly/tools/b/j;->a(Landroid/net/LocalSocket;[B)V

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v0, p1, p2

    .line 62
    invoke-static {p1}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method private a(Landroid/net/LocalSocket;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 100
    array-length v0, p2

    const/high16 v1, 0x500000

    if-gt v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 103
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 104
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ipc payload too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payload == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcn/fly/tools/b/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/b/j;->f()V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/b/j;Landroid/net/LocalSocket;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->b(Landroid/net/LocalSocket;)V

    return-void
.end method

.method private a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 119
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    .line 120
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 122
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void

    .line 123
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 124
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 125
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    .line 126
    :cond_2
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    .line 127
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 128
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void

    .line 129
    :cond_3
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    .line 130
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-void

    .line 132
    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 134
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void

    .line 135
    :cond_5
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v0, 0x6

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 137
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_6
    instance-of v1, p2, [B

    if-eqz v1, :cond_7

    const/4 v0, 0x7

    .line 139
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    check-cast p2, [B

    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;[B)V

    return-void

    .line 141
    :cond_7
    instance-of v1, p2, Landroid/os/Parcelable;

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    .line 142
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 143
    check-cast p2, Landroid/os/Parcelable;

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p2}, Lcn/fly/tools/b/j;->a(Landroid/os/Parcelable;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;[B)V

    return-void

    .line 146
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 148
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 149
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x9

    .line 150
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 151
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 152
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 153
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    .line 154
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 155
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_1

    .line 156
    :cond_9
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 157
    check-cast v4, Landroid/os/Parcelable;

    invoke-direct {p0, v4}, Lcn/fly/tools/b/j;->a(Landroid/os/Parcelable;)[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;[B)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    return-void

    .line 158
    :cond_b
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_d

    const/16 v0, 0xa

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 160
    invoke-direct {p0, p2}, Lcn/fly/tools/b/j;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 161
    check-cast p2, Ljava/util/List;

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 164
    invoke-direct {p0, p1, v0}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    return-void

    .line 165
    :cond_d
    instance-of v1, p2, Ljava/util/Map;

    const/16 v3, 0xc

    if-eqz v1, :cond_12

    .line 166
    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    .line 167
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 168
    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_e

    const/4 v2, 0x0

    :cond_f
    if-eqz v2, :cond_11

    const/16 v0, 0xb

    .line 169
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 170
    invoke-direct {p0, p2}, Lcn/fly/tools/b/j;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 171
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 173
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 174
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    goto :goto_3

    :cond_10
    return-void

    .line 175
    :cond_11
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v1

    const-string v2, "IPC writeValue: Map with non-String keys, using Java serialization"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 176
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 177
    invoke-direct {p0, p2}, Lcn/fly/tools/b/j;->c(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;[B)V

    return-void

    .line 178
    :cond_12
    instance-of v1, p2, Ljava/io/Serializable;

    if-eqz v1, :cond_13

    .line 179
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IPC writeValue: unsupported type, using Java serialization, type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 180
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 181
    invoke-direct {p0, p2}, Lcn/fly/tools/b/j;->c(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/fly/tools/b/j;->a(Ljava/io/DataOutputStream;[B)V

    return-void

    .line 182
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported value for ipc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    .line 108
    :cond_0
    sget-object v0, Lcn/fly/tools/b/j;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 109
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private a(Ljava/io/DataOutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    .line 117
    :cond_0
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private a(Landroid/os/Parcelable;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 183
    :cond_0
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$b;

    invoke-direct {v0, p1}, Lcn/fly/tools/utils/FlyPersistence$b;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lcn/fly/tools/utils/FlyPersistence$b;->b()[B

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Object;)I
    .locals 1

    .line 16
    instance-of v0, p1, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 17
    :cond_0
    instance-of p1, p1, Ljava/util/TreeMap;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private b([B)Lcn/fly/tools/b/j$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const v1, 0x46495043

    if-ne p1, v1, :cond_3

    .line 20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 22
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 23
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    new-instance v0, Lcn/fly/tools/b/j$c;

    invoke-direct {v0, v1, p1, v2, v2}, Lcn/fly/tools/b/j$c;-><init>(ZLjava/lang/Object;Ljava/lang/String;Lcn/fly/tools/b/j$1;)V

    return-object v0

    .line 25
    :cond_0
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v0, Lcn/fly/tools/b/j$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, p1, v2}, Lcn/fly/tools/b/j$c;-><init>(ZLjava/lang/Object;Ljava/lang/String;Lcn/fly/tools/b/j$1;)V

    return-object v0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid ipc message type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported ipc version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid ipc magic"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroid/net/LocalSocket;)V
    .locals 4

    .line 3
    :try_start_0
    iget v0, p0, Lcn/fly/tools/b/j;->c:I

    invoke-virtual {p1, v0}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 4
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->c(Landroid/net/LocalSocket;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->f(Landroid/net/LocalSocket;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->a([B)Lcn/fly/tools/b/j$b;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->a(Lcn/fly/tools/b/j$b;)Lcn/fly/tools/b/j$c;

    move-result-object v0

    .line 9
    invoke-direct {p0, p1, v0}, Lcn/fly/tools/b/j;->a(Landroid/net/LocalSocket;Lcn/fly/tools/b/j$c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPC handleSession: invalid request, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 11
    new-instance v0, Lcn/fly/tools/b/j$c;

    const-string v1, "invalid ipc request"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcn/fly/tools/b/j$c;-><init>(ZLjava/lang/Object;Ljava/lang/String;Lcn/fly/tools/b/j$1;)V

    invoke-direct {p0, p1, v0}, Lcn/fly/tools/b/j;->a(Landroid/net/LocalSocket;Lcn/fly/tools/b/j$c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    return-void

    :catchall_1
    move-exception v0

    .line 13
    :try_start_4
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPC handleSession: error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    :goto_0
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    .line 15
    throw v0
.end method

.method private b(Ljava/io/DataInputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/high16 v1, 0x500000

    if-gt v0, v1, :cond_1

    .line 31
    new-array v0, v0, [B

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-object v0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipc bytes too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ipc value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->b(Ljava/io/DataInputStream;)[B

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->c([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 10
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-ltz v3, :cond_3

    if-gt v3, v2, :cond_3

    if-ne v0, v1, :cond_0

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 12
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-ge v4, v3, :cond_2

    .line 14
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid map size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 18
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-ltz v3, :cond_6

    if-gt v3, v2, :cond_6

    if-ne v0, v1, :cond_4

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    .line 20
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v4, v3, :cond_5

    .line 21
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v0

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid list size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :pswitch_3
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_a

    const/16 v2, 0x400

    if-gt v1, v2, :cond_a

    .line 25
    const-class v2, Landroid/os/Parcelable;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :catchall_0
    :goto_2
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    if-ge v4, v1, :cond_9

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    if-nez v5, :cond_8

    .line 28
    invoke-static {v2, v4, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4

    .line 29
    :cond_8
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->b(Ljava/io/DataInputStream;)[B

    move-result-object v5

    .line 30
    invoke-direct {p0, v5, v0}, Lcn/fly/tools/b/j;->a([BLjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 31
    invoke-static {v2, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    return-object v2

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid array size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :pswitch_4
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->b(Ljava/io/DataInputStream;)[B

    move-result-object p1

    .line 35
    invoke-direct {p0, p1, v0}, Lcn/fly/tools/b/j;->a([BLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_5
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->b(Ljava/io/DataInputStream;)[B

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_6
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 40
    :pswitch_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 42
    :pswitch_b
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_c
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private c([B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 50
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 52
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v1, v3, p1

    .line 54
    invoke-static {v3}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    aput-object v1, v3, p1

    invoke-static {v3}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 55
    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private c(Landroid/net/LocalSocket;)Z
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcn/fly/tools/b/j;->d(Landroid/net/LocalSocket;)I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    return-object p1

    .line 43
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 44
    :try_start_0
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v5, v3, v0

    aput-object v1, v3, v2

    .line 48
    invoke-static {v3}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v0

    aput-object v1, v3, v2

    invoke-static {v3}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 49
    throw p1
.end method

.method private d(Landroid/net/LocalSocket;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "android.net.LocalSocket"

    .line 9
    invoke-static {v1}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "getPeerCredentials"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, v1, v3}, Lcn/fly/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v1, "android.net.Credentials"

    .line 11
    invoke-static {v1}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "getUid"

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v1, v2}, Lcn/fly/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return v0
.end method

.method private declared-synchronized d()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcn/fly/tools/b/j;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcn/fly/tools/b/j;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    .line 3
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcn/fly/tools/b/j;->e()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 4
    monitor-exit p0

    return v3

    .line 5
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcn/fly/tools/b/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iput v3, p0, Lcn/fly/tools/b/j;->f:I

    .line 7
    invoke-virtual {p0}, Lcn/fly/tools/b/j;->a()V

    .line 8
    iget v0, p0, Lcn/fly/tools/b/j;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Landroid/net/LocalSocket;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private e()Z
    .locals 4

    .line 1
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcn/fly/tools/b/j;->b:Ljava/lang/String;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Lcn/fly/tools/b/j;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/b/j;->g:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcn/fly/tools/b/j;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_1
    new-instance v3, Lcn/fly/tools/b/j$2;

    invoke-direct {v3, p0, v0}, Lcn/fly/tools/b/j$2;-><init>(Lcn/fly/tools/b/j;Landroid/net/LocalSocket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IPC acceptLoop: failed to submit task, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 7
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    .line 8
    throw v2

    .line 9
    :cond_1
    :goto_1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    const-string v3, "IPC acceptLoop: executor unavailable, closing connection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 10
    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->e(Landroid/net/LocalSocket;)V

    .line 11
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :try_start_3
    iget v0, p0, Lcn/fly/tools/b/j;->f:I

    if-ne v0, v1, :cond_2

    .line 13
    invoke-direct {p0}, Lcn/fly/tools/b/j;->g()V

    .line 14
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 15
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IPC acceptLoop: fatal error, stopping server runtime, error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 16
    monitor-enter p0

    .line 17
    :try_start_5
    iget v0, p0, Lcn/fly/tools/b/j;->f:I

    if-ne v0, v1, :cond_3

    .line 18
    invoke-direct {p0}, Lcn/fly/tools/b/j;->g()V

    .line 19
    :cond_3
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_4
    return-void
.end method

.method private f(Landroid/net/LocalSocket;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-ltz p1, :cond_0

    const/high16 v1, 0x500000

    if-gt p1, v1, :cond_0

    .line 22
    new-array p1, p1, [B

    .line 23
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid packet len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/b/j;->g:Landroid/net/LocalServerSocket;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcn/fly/tools/b/j;->g:Landroid/net/LocalServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    :cond_0
    :try_start_2
    iput-object v1, p0, Lcn/fly/tools/b/j;->h:Ljava/lang/Thread;

    .line 13
    .line 14
    iget-object v0, p0, Lcn/fly/tools/b/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    iput v1, p0, Lcn/fly/tools/b/j;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_1
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcn/fly/tools/b/j;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 16
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 17
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcn/fly/tools/b/j;->b:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 18
    iget v3, p0, Lcn/fly/tools/b/j;->c:I

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 19
    invoke-direct {p0, v2}, Lcn/fly/tools/b/j;->c(Landroid/net/LocalSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-direct {p0, v2, p1, p2}, Lcn/fly/tools/b/j;->a(Landroid/net/LocalSocket;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 21
    invoke-direct {p0, v2}, Lcn/fly/tools/b/j;->a(Landroid/net/LocalSocket;)Lcn/fly/tools/b/j$c;

    move-result-object v3

    .line 22
    invoke-static {v3}, Lcn/fly/tools/b/j$c;->a(Lcn/fly/tools/b/j$c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1

    .line 24
    :cond_0
    :try_start_2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IPC security violation: untrusted peer, uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcn/fly/tools/b/j;->d(Landroid/net/LocalSocket;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 25
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "untrusted ipc peer"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    .line 26
    :try_start_3
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IPC exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 27
    :try_start_4
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 28
    :catchall_4
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IPC request failed after all retries, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 30
    invoke-direct {p0}, Lcn/fly/tools/b/j;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/fly/tools/b/j;->f:I

    if-ne v0, v2, :cond_4

    .line 31
    new-instance v0, Lcn/fly/tools/b/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcn/fly/tools/b/j$b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcn/fly/tools/b/j$1;)V

    invoke-direct {p0, v0}, Lcn/fly/tools/b/j;->a(Lcn/fly/tools/b/j$b;)Lcn/fly/tools/b/j$c;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcn/fly/tools/b/j$c;->b(Lcn/fly/tools/b/j$c;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 33
    new-instance p2, Ljava/lang/Throwable;

    invoke-static {p1}, Lcn/fly/tools/b/j$c;->c(Lcn/fly/tools/b/j$c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "ipc failed"

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcn/fly/tools/b/j$c;->c(Lcn/fly/tools/b/j$c;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p2

    .line 34
    :cond_3
    invoke-static {p1}, Lcn/fly/tools/b/j$c;->a(Lcn/fly/tools/b/j$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ipc request failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/b/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    :try_start_1
    new-instance v2, Landroid/net/LocalServerSocket;

    iget-object v3, p0, Lcn/fly/tools/b/j;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/fly/tools/b/j;->g:Landroid/net/LocalServerSocket;

    .line 6
    iput v1, p0, Lcn/fly/tools/b/j;->f:I

    .line 7
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    const-string v3, "IPC try started as SERVER"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 8
    new-instance v2, Lcn/fly/tools/b/j$1;

    const-string v3, "DH-IPC"

    invoke-direct {v2, p0, v3}, Lcn/fly/tools/b/j$1;-><init>(Lcn/fly/tools/b/j;Ljava/lang/String;)V

    iput-object v2, p0, Lcn/fly/tools/b/j;->h:Ljava/lang/Thread;

    .line 9
    iget-object v2, p0, Lcn/fly/tools/b/j;->h:Ljava/lang/Thread;

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 10
    iget-object v2, p0, Lcn/fly/tools/b/j;->h:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :catchall_0
    :try_start_2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    const-string v3, "IPC started as CLIENT"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcn/fly/tools/b/j;->f:I

    .line 13
    :goto_0
    iget-object v0, p0, Lcn/fly/tools/b/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/fly/tools/b/j;->a()V

    .line 2
    iget v0, p0, Lcn/fly/tools/b/j;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/fly/tools/b/j;->a()V

    .line 2
    iget v0, p0, Lcn/fly/tools/b/j;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
