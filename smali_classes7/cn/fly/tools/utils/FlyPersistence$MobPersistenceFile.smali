.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/utils/FlyPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobPersistenceFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException;,
        Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private d:Ljava/io/File;

.field private volatile e:Ljava/io/RandomAccessFile;

.field private volatile f:J

.field private volatile g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/fly/tools/utils/FlyPersistence$g;",
            "Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/io/File;

.field private final l:Lcn/fly/tools/utils/FlyPersistence$f;

.field private final m:Lcn/fly/tools/utils/FlyPersistence$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/fly/tools/utils/FlyPersistence$f;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iput-object v3, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 26
    .line 27
    move-object/from16 v2, p1

    .line 28
    .line 29
    iput-object v2, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->i:Landroid/content/Context;

    .line 30
    .line 31
    iput-object v1, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v4, Lcn/fly/commons/v;->h:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcn/fly/commons/v;->a(Ljava/lang/String;)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k:Ljava/io/File;

    .line 55
    .line 56
    move-object/from16 v1, p3

    .line 57
    .line 58
    iput-object v1, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->l:Lcn/fly/tools/utils/FlyPersistence$f;

    .line 59
    .line 60
    invoke-static/range {p1 .. p1}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v3, "key_lru_min"

    .line 65
    .line 66
    const-wide/32 v4, 0x4b000

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3, v4, v5}, Lcn/fly/tools/utils/h;->b(Ljava/lang/String;J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    invoke-static/range {p1 .. p1}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v3, "key_lru_max"

    .line 78
    .line 79
    const-wide/32 v4, 0x400000

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v4, v5}, Lcn/fly/tools/utils/h;->b(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    invoke-static/range {p1 .. p1}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v3, "key_lru_re"

    .line 91
    .line 92
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3, v4, v5}, Lcn/fly/tools/utils/h;->b(Ljava/lang/String;D)D

    .line 98
    .line 99
    .line 100
    move-result-wide v12

    .line 101
    invoke-static/range {p1 .. p1}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "key_lru_ie"

    .line 106
    .line 107
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 108
    .line 109
    invoke-virtual {v1, v2, v3, v4}, Lcn/fly/tools/utils/h;->b(Ljava/lang/String;D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v14

    .line 113
    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$h;

    .line 114
    .line 115
    const/16 v7, 0x3c

    .line 116
    .line 117
    const/16 v16, 0x0

    .line 118
    .line 119
    move-object v6, v1

    .line 120
    invoke-direct/range {v6 .. v16}, Lcn/fly/tools/utils/FlyPersistence$h;-><init>(IJJDDLcn/fly/tools/utils/FlyPersistence$1;)V

    .line 121
    .line 122
    .line 123
    iput-object v1, v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m:Lcn/fly/tools/utils/FlyPersistence$h;

    .line 124
    .line 125
    invoke-direct/range {p0 .. p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->n()V

    .line 126
    .line 127
    .line 128
    invoke-direct/range {p0 .. p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;B)V

    .line 60
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private a([B)Lcn/fly/tools/utils/FlyPersistence$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Lcn/fly/tools/utils/FlyPersistence$a<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->l:Lcn/fly/tools/utils/FlyPersistence$f;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/fly/tools/utils/FlyPersistence$f;->a(Lcn/fly/tools/utils/FlyPersistence$f;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 96
    instance-of v0, p1, Lcn/fly/tools/utils/FlyPersistence$KVEntry;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcn/fly/tools/utils/FlyPersistence$KVEntry;

    .line 98
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$a;

    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$KVEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$KVEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/fly/tools/utils/FlyPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 99
    :cond_0
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 100
    check-cast p1, Ljava/util/HashMap;

    .line 101
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$a;->a(Ljava/util/HashMap;)Lcn/fly/tools/utils/FlyPersistence$a;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 102
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "BridgeEntry.fromMap returns null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported cac type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p1, "null"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 3
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/fly/tools/utils/FlyPersistence$i;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/fly/tools/utils/FlyPersistence$i;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k:Ljava/io/File;

    new-instance v2, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;

    invoke-direct {v2, p0, p1, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;-><init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 66
    throw p1
.end method

.method private a(II)V
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_0

    .line 35
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    invoke-direct {v0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;-><init>(I)V

    .line 36
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(JB)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J[BI)V
    .locals 3

    add-int/lit8 v0, p4, 0x7

    :goto_0
    if-lt v0, p4, :cond_0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 67
    aput-byte v1, p3, v0

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 21
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 23
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 24
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 25
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v1

    const-wide/16 v3, 0x11

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 27
    invoke-static {p1, p2, p3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V

    .line 28
    new-instance p2, Lcn/fly/tools/utils/FlyPersistence$g;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    .line 29
    iget-object p3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;Lcn/fly/tools/utils/FlyPersistence$i;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 40
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$a;

    invoke-virtual/range {p2 .. p2}, Lcn/fly/tools/utils/FlyPersistence$i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcn/fly/tools/utils/FlyPersistence$i;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcn/fly/tools/utils/FlyPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->l:Lcn/fly/tools/utils/FlyPersistence$f;

    invoke-virtual {v0}, Lcn/fly/tools/utils/FlyPersistence$a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/fly/tools/utils/FlyPersistence$f;->a(Lcn/fly/tools/utils/FlyPersistence$f;Ljava/lang/Object;)[B

    move-result-object v0

    .line 42
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 43
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    :try_start_1
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    iget-object v7, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 47
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 48
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v6, v6, [Ljava/io/Closeable;

    aput-object v9, v6, v5

    aput-object v8, v6, v4

    .line 49
    invoke-static {v6}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    const/4 v11, 0x0

    .line 50
    invoke-static/range {p2 .. p2}, Lcn/fly/tools/utils/FlyPersistence$i;->b(Lcn/fly/tools/utils/FlyPersistence$i;)[B

    move-result-object v12

    array-length v0, v0

    int-to-long v13, v0

    invoke-static/range {p2 .. p2}, Lcn/fly/tools/utils/FlyPersistence$i;->c(Lcn/fly/tools/utils/FlyPersistence$i;)J

    move-result-wide v15

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(B[BJJ)V

    move-object/from16 v0, p1

    .line 51
    invoke-static {v0, v2, v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)J

    .line 52
    invoke-direct/range {p0 .. p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object v7, v9

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v8, v7

    :goto_0
    new-array v2, v6, [Ljava/io/Closeable;

    aput-object v7, v2, v5

    aput-object v8, v2, v4

    .line 53
    invoke-static {v2}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 54
    throw v0
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(I)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;Lcn/fly/tools/utils/FlyPersistence$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;Lcn/fly/tools/utils/FlyPersistence$i;)V

    return-void
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcn/fly/tools/utils/FlyPersistence$g;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p2, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p2, 0x1

    .line 92
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;Z)Z

    move-result p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rm broken key, scene: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", removed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 94
    iget-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reBld mpf, cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_1

    .line 106
    :try_start_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 107
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m:Lcn/fly/tools/utils/FlyPersistence$h;

    if-eqz p1, :cond_2

    .line 108
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$h;)V

    .line 109
    :cond_2
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 110
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "delete mpf failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_4
    :goto_2
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 112
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d:Ljava/io/File;

    const-string v1, "0021bhde"

    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    const/16 p1, 0x400

    .line 113
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(I)V

    return-void

    .line 114
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "create mpf failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(J)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 18
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    return-object v1
.end method

.method private b(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x11

    add-long/2addr p1, v0

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(J)J

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->i:Landroid/content/Context;

    return-object p0
.end method

.method private b(II)Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(II)V

    .line 9
    invoke-virtual {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(I)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f:J

    .line 11
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 12
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " u "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$g;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$g;)Z

    move-result p0

    return p0
.end method

.method private b(Lcn/fly/tools/utils/FlyPersistence$g;)Z
    .locals 2

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j()Z

    .line 19
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    if-eqz v1, :cond_0

    .line 20
    invoke-direct {p0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    .line 21
    :cond_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m:Lcn/fly/tools/utils/FlyPersistence$h;

    invoke-static {v1, p1}, Lcn/fly/tools/utils/FlyPersistence$h;->b(Lcn/fly/tools/utils/FlyPersistence$h;Lcn/fly/tools/utils/FlyPersistence$g;)V
    :try_end_0
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    .line 23
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, v1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 24
    :try_start_1
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return v0
.end method

.method private c(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x19

    add-long/2addr p1, v0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(J)J

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d:Ljava/io/File;

    return-object p0
.end method

.method private c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)Z
    .locals 7

    const/16 v0, 0x29

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    aput-byte v1, v0, v1

    .line 8
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v2

    const/16 v5, 0x11

    invoke-direct {p0, v2, v3, v0, v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(J[BI)V

    .line 10
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v2

    const/16 v5, 0x19

    invoke-direct {p0, v2, v3, v0, v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(J[BI)V

    .line 11
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->h(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v2

    const/16 v5, 0x21

    invoke-direct {p0, v2, v3, v0, v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(J[BI)V

    .line 12
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 13
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B

    move-result-object p0

    return-object p0
.end method

.method private d(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x21

    add-long/2addr p1, v0

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    .line 9
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 11
    throw p1
.end method

.method static synthetic d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j()Z

    move-result p0

    return p0
.end method

.method private e(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x8

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 13
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide p1

    return-wide p1

    .line 15
    :cond_0
    new-instance v2, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid long offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", fileLength="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    return-object p0
.end method

.method private e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$g;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 10
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f()V

    return-void
.end method

.method private f(J)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0x4

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 14
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 15
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    return p1

    .line 16
    :cond_0
    new-instance v2, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid int offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", fileLength="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method private f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c()J

    move-result-wide v2

    .line 4
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v0, v6

    if-ltz p1, :cond_0

    cmp-long p1, v2, v6

    if-lez p1, :cond_0

    add-long v6, v0, v2

    cmp-long p1, v6, v4

    if-gtz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int p1, v2

    .line 6
    new-array p1, p1, [B

    .line 7
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "invalid mpf index"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    :try_start_0
    invoke-static {}, Lcn/fly/tools/utils/FlyPersistence;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k:Ljava/io/File;

    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;

    invoke-direct {v1, p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;-><init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)V

    invoke-static {v0, v1}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 6
    throw v0
.end method

.method static synthetic g(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->l()V

    return-void
.end method

.method static synthetic h(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Lcn/fly/tools/utils/FlyPersistence$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->l:Lcn/fly/tools/utils/FlyPersistence$f;

    return-object p0
.end method

.method private h()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, " [trim] try "

    .line 2
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x29

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    add-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 6
    invoke-virtual {v7}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c()J

    move-result-wide v7

    long-to-double v7, v7

    add-double/2addr v5, v7

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v0

    long-to-double v7, v2

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_5

    .line 7
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->i()Ljava/util/ArrayList;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 9
    invoke-virtual {v7}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    invoke-direct {p0, v7}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v7}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-nez v10, :cond_3

    .line 12
    invoke-virtual {v7}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c()J

    move-result-wide v7

    :goto_2
    add-long/2addr v5, v7

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v7}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-lez v10, :cond_1

    .line 14
    invoke-direct {p0, v7, v5, v6}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V

    .line 15
    invoke-virtual {v7}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c()J

    move-result-wide v7

    goto :goto_2

    .line 16
    :cond_4
    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [trim] real over  before dataBlockSize "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cur "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic i(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Lcn/fly/tools/utils/FlyPersistence$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m:Lcn/fly/tools/utils/FlyPersistence$h;

    return-object p0
.end method

.method private i()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private j()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 2
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m()J

    move-result-wide v3

    .line 3
    iget-wide v5, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 4
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 5
    :try_start_0
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m:Lcn/fly/tools/utils/FlyPersistence$h;

    invoke-static {v5}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$h;)V

    .line 6
    iput-wide v3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f:J

    .line 7
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 10
    :try_start_1
    new-instance v5, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    invoke-direct {v5, v4}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;-><init>(I)V

    .line 11
    invoke-virtual {p0, v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)B

    move-result v6

    if-ne v6, v0, :cond_0

    .line 12
    iget-object v6, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    .line 14
    iget-object v6, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    new-instance v7, Lcn/fly/tools/utils/FlyPersistence$g;

    invoke-static {v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update lstt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " u "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    aput-boolean v0, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 17
    :try_start_3
    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException;

    const-string v2, "mpf index block broken"

    invoke-direct {v1, v2, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    .line 18
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 19
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 20
    throw v0

    :cond_2
    :goto_2
    aget-boolean v0, v1, v2

    return v0
.end method

.method static synthetic k(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object p0
.end method

.method private k()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c()I

    move-result v0

    add-int/lit16 v1, v0, 0x400

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[exp] old "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, v1

    const-wide/16 v4, 0x29

    mul-long v2, v2, v4

    const-wide/16 v6, 0x400

    add-long/2addr v2, v6

    .line 4
    iget-object v8, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iget-object v9, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v8, v8

    mul-long v8, v8, v4

    add-long/2addr v8, v6

    cmp-long v4, v8, v2

    if-gez v4, :cond_3

    .line 5
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->i()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 6
    invoke-virtual {v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-ltz v8, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b()J

    move-result-wide v6

    invoke-virtual {v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 8
    invoke-virtual {v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->e()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9
    invoke-direct {p0, v5}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v8, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-direct {p0, v5, v8, v9}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V

    :goto_0
    cmp-long v5, v6, v2

    if-ltz v5, :cond_0

    .line 11
    :cond_3
    :goto_1
    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_2
    if-ge v0, v1, :cond_4

    .line 12
    new-instance v3, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    invoke-direct {v3, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;-><init>(I)V

    .line 13
    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "[exp] ovr"

    .line 15
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(I)V

    return-void
.end method

.method private l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f:J

    .line 23
    .line 24
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    .line 32
    .line 33
    iget-wide v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f:J

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private m()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method private n()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;-><init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Z

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcn/fly/commons/c;->a(Lcn/fly/commons/c$b;[Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$e;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/fly/tools/utils/FlyPersistence$g;",
            "Lcn/fly/tools/utils/FlyPersistence$e<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v0, 0x1

    new-array v11, v0, [[B

    new-array v12, v0, [J

    new-array v13, v0, [I

    new-array v14, v0, [Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Throwable;

    .line 68
    iget-object v1, v9, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 69
    :try_start_0
    iget-object v15, v9, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k:Ljava/io/File;

    new-instance v8, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v12

    move-object v7, v11

    move-object v10, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$4;-><init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$g;[I[Ljava/lang/Object;[J[[B[Ljava/lang/Throwable;)V

    invoke-static {v15, v10}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget v2, v13, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    aget-object v0, v14, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 70
    :goto_0
    iget-object v1, v9, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :try_start_1
    aget-object v0, v11, v1

    .line 71
    invoke-direct {v9, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a([B)Lcn/fly/tools/utils/FlyPersistence$a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    invoke-virtual {v0}, Lcn/fly/tools/utils/FlyPersistence$a;->a()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcn/fly/tools/utils/FlyPersistence$e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    new-instance v10, Lcn/fly/tools/utils/FlyPersistence$c;

    aget-wide v2, v12, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aget-object v1, v11, v1

    array-length v1, v1

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object v2, v10

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Lcn/fly/tools/utils/FlyPersistence$c;-><init>(JLjava/lang/Object;JLcn/fly/tools/utils/FlyPersistence$1;)V

    .line 74
    iget-object v1, v9, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m:Lcn/fly/tools/utils/FlyPersistence$h;

    move-object/from16 v3, p1

    invoke-static {v1, v3, v10}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$h;Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 75
    :try_start_3
    iget-object v1, v9, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;

    invoke-direct {v0}, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    const-string v1, "decBridgeEntry"

    .line 77
    invoke-direct {v9, v3, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;

    invoke-direct {v0}, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;-><init>()V

    throw v0

    :cond_1
    move-object/from16 v3, p1

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    aget-object v2, v0, v1

    .line 79
    iget-object v3, v9, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    aget-object v0, v0, v1

    .line 80
    invoke-direct {v9, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :cond_2
    :try_start_5
    aget-object v0, v0, v1

    const-string v1, "readDataBlock"

    .line 81
    invoke-direct {v9, v3, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 82
    :catchall_2
    :cond_3
    :goto_1
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;

    invoke-direct {v0}, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;-><init>()V

    throw v0

    .line 83
    :cond_4
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;

    invoke-direct {v0}, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    .line 84
    iget-object v1, v9, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 85
    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 31
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 33
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JB)V
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 39
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(I)V

    .line 12
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 13
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;B)V

    .line 14
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(J)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;[B)V

    .line 15
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V

    .line 16
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V

    .line 17
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)V

    return-void
.end method

.method public a(Lcn/fly/tools/utils/FlyPersistence$g;Z)Z
    .locals 3

    .line 86
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 87
    :try_start_0
    iget-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k:Ljava/io/File;

    new-instance v2, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$6;

    invoke-direct {v2, p0, v0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$6;-><init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;[ZLcn/fly/tools/utils/FlyPersistence$g;)V

    invoke-static {p2, v2}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z

    move-result p1

    if-nez p1, :cond_1

    aput-boolean v1, v0, v1

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$g;)Z

    move-result p1

    aput-boolean p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    aget-boolean p1, v0, v1

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 90
    throw p1
.end method

.method public b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 15
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 16
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    .line 4
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object v0
.end method

.method public c()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 4
    invoke-direct {p0, v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(J)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k:Ljava/io/File;

    new-instance v2, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;

    invoke-direct {v2, p0, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$3;-><init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;[Z)V

    invoke-static {v1, v2}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    aput-boolean v2, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    aget-boolean v0, v0, v2

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 6
    throw v0
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k:Ljava/io/File;

    new-instance v2, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;

    invoke-direct {v2, p0, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$5;-><init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcn/fly/commons/v;->a(Ljava/io/File;Lcn/fly/commons/u;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 6
    throw v0
.end method

.method public f()V
    .locals 2

    .line 9
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->m:Lcn/fly/tools/utils/FlyPersistence$h;

    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$h;->b(Lcn/fly/tools/utils/FlyPersistence$h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 12
    throw v0
.end method
