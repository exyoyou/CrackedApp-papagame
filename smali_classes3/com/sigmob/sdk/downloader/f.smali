.class public Lcom/sigmob/sdk/downloader/f;
.super Lcom/sigmob/sdk/downloader/core/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/f$b;,
        Lcom/sigmob/sdk/downloader/f$c;,
        Lcom/sigmob/sdk/downloader/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/downloader/core/a;",
        "Ljava/lang/Comparable<",
        "Lcom/sigmob/sdk/downloader/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0x3


# instance fields
.field private final A:Ljava/io/File;

.field private final B:Ljava/io/File;

.field private C:Ljava/io/File;

.field private D:Ljava/lang/String;

.field private E:Ljava/io/File;

.field private F:I

.field private final b:I

.field private volatile c:J

.field private final d:Ljava/lang/String;

.field private final e:Landroid/net/Uri;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:Ljava/lang/Integer;

.field private final p:Ljava/lang/Boolean;

.field private final q:Z

.field private final r:Z

.field private final s:I

.field private volatile t:Lcom/sigmob/sdk/downloader/c;

.field private volatile u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Object;

.field private final w:Z

.field private final x:Ljava/util/concurrent/atomic/AtomicLong;

.field private final y:Z

.field private final z:Lcom/sigmob/sdk/downloader/core/download/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;IIIIIZILjava/util/Map;Ljava/lang/String;ZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "uri",
            "priority",
            "readBufferSize",
            "flushBufferSize",
            "syncBufferSize",
            "syncBufferIntervalMills",
            "autoCallbackToUIThread",
            "minIntervalMillisCallbackProcess",
            "headerMapFields",
            "filename",
            "passIfAlreadyCompleted",
            "wifiRequired",
            "filenameFromResponse",
            "connectionCount",
            "isPreAllocateLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "IIIIIZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p11

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/a;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    move-object v2, p2

    iput-object v2, v0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    move v3, p3

    iput v3, v0, Lcom/sigmob/sdk/downloader/f;->j:I

    move v3, p4

    iput v3, v0, Lcom/sigmob/sdk/downloader/f;->k:I

    move v3, p5

    iput v3, v0, Lcom/sigmob/sdk/downloader/f;->l:I

    move v3, p6

    iput v3, v0, Lcom/sigmob/sdk/downloader/f;->m:I

    move v3, p7

    iput v3, v0, Lcom/sigmob/sdk/downloader/f;->n:I

    move v3, p8

    iput-boolean v3, v0, Lcom/sigmob/sdk/downloader/f;->r:Z

    move v3, p9

    iput v3, v0, Lcom/sigmob/sdk/downloader/f;->s:I

    move-object v3, p10

    iput-object v3, v0, Lcom/sigmob/sdk/downloader/f;->h:Ljava/util/Map;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v3, v0, Lcom/sigmob/sdk/downloader/f;->x:Ljava/util/concurrent/atomic/AtomicLong;

    move/from16 v3, p12

    iput-boolean v3, v0, Lcom/sigmob/sdk/downloader/f;->q:Z

    move/from16 v3, p13

    iput-boolean v3, v0, Lcom/sigmob/sdk/downloader/f;->w:Z

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/sigmob/sdk/downloader/f;->o:Ljava/lang/Integer;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/sigmob/sdk/downloader/f;->p:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p14, :cond_6

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If you want filename from response please make sure you provide path is directory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static/range {p11 .. p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discard filename["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] because you set filenameFromResponse=true"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadTask"

    invoke-static {v2, v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {p11 .. p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If you don\'t want filename from response please make sure you have already provided valid filename or not directory path "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    invoke-static/range {p11 .. p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, v0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    goto :goto_3

    :cond_5
    :goto_2
    iput-object v3, v0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    :goto_3
    move-object/from16 v2, p14

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_7
    :goto_4
    iput-object v3, v0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    goto :goto_6

    :cond_8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static/range {p11 .. p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri already provided filename!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static/range {p11 .. p11}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_b
    :goto_5
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    goto :goto_4

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sigmob/sdk/downloader/f;->y:Z

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sigmob/sdk/downloader/f;->y:Z

    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    :goto_7
    invoke-static {v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v1, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>()V

    iput-object v1, v0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    iput-object v1, v0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    goto :goto_8

    :cond_d
    new-instance v2, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {v2, v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    iput-object v2, v0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    :goto_8
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(Lcom/sigmob/sdk/downloader/f;)I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/downloader/f;->b:I

    return-void
.end method

.method public static a([Lcom/sigmob/sdk/downloader/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tasks"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a([Lcom/sigmob/sdk/downloader/core/a;)V

    return-void
.end method

.method public static a([Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tasks",
            "listener"
        }
    .end annotation

    .line 11
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iput-object p1, v2, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a([Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public static c(I)Lcom/sigmob/sdk/downloader/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/f$b;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/f$b;-><init>(I)V

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/sdk/downloader/f;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/downloader/f;)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u64cd\u4f5c\u592a\u9891\u7e41"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public C()Z
    .locals 2

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->F:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sigmob/sdk/downloader/f;->F:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;)V

    const/4 v0, 0x1

    return v0
.end method

.method public D()V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public E()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u64cd\u4f5c\u592a\u9891\u7e41"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/f;->c:J

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/a;)Z

    return-void
.end method

.method public F()Lcom/sigmob/sdk/downloader/c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    return-object v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->j:I

    return v0
.end method

.method public H()Lcom/sigmob/sdk/downloader/f$a;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/downloader/f;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;)Lcom/sigmob/sdk/downloader/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anotherUrl",
            "anotherUri"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/f$a;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/downloader/f$a;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget p1, p0, Lcom/sigmob/sdk/downloader/f;->j:I

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/f$a;->c(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->k:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->d(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->l:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->e(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->m:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->f(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->n:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->g(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->r:Z

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->b(Z)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->s:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->b(I)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->h:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/util/Map;)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->q:Z

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f$a;->c(Z)Lcom/sigmob/sdk/downloader/f$a;

    move-result-object p1

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    invoke-static {p2}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/downloader/f$a;->a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f$a;

    :cond_0
    return-object p1
.end method

.method public declared-synchronized a(ILjava/lang/Object;)Lcom/sigmob/sdk/downloader/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastCallbackProcessTimestamp"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    return-void
.end method

.method a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldTask"
        }
    .end annotation

    .line 7
    iget-object v0, p1, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectUrl"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->D:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->y:Z

    return v0
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->G()I

    move-result p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->G()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->h:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    return v0
.end method

.method public c(Lcom/sigmob/sdk/downloader/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f;->t:Lcom/sigmob/sdk/downloader/c;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->b(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    check-cast p1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/f;->b(Lcom/sigmob/sdk/downloader/f;)I

    move-result p1

    return p1
.end method

.method public d(I)Lcom/sigmob/sdk/downloader/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/f$b;

    invoke-direct {v0, p1, p0}, Lcom/sigmob/sdk/downloader/f$b;-><init>(ILcom/sigmob/sdk/downloader/f;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->q:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/sigmob/sdk/downloader/f;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sigmob/sdk/downloader/f;

    iget v0, p1, Lcom/sigmob/sdk/downloader/f;->b:I

    iget v2, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/a;->a(Lcom/sigmob/sdk/downloader/core/a;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->w:Z

    return v0
.end method

.method public g()Lcom/sigmob/sdk/downloader/core/download/g$a;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->D:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->A:Ljava/io/File;

    return-object v0
.end method

.method public l()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    return-object v0
.end method

.method public m()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->E:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/f;->E:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->E:Ljava/io/File;

    return-object v0
.end method

.method public n()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->C:Ljava/io/File;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->k:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->l:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->m:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->n:I

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/f;->r:Z

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/f;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->B:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f;->z:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public v()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v0

    return v0
.end method

.method public x()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/downloader/f;->b:I

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->i:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-object v0
.end method

.method z()J
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method
