.class public Lcom/byazt/fdg/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fdg/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x410,
        0x42
    }
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final tt:Ljava/io/FileDescriptor;

.field public final uj:J

.field public final ve:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/byazt/fdg/t;->c:J

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/fdg/t;->tt:Ljava/io/FileDescriptor;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/byazt/fdg/t;->ve:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/byazt/fdg/t;->uj:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/fdg/t;->uj:J

    return-wide v0
.end method

.method public c(Lcom/byazt/fdg/da;JI)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    iget-wide v2, v1, Lcom/byazt/fdg/t;->ve:J

    add-long v2, v2, p2

    .line 3
    sget-wide v4, Lcom/byazt/fdg/t;->c:J

    div-long v6, v2, v4

    mul-long v15, v6, v4

    sub-long/2addr v2, v15

    long-to-int v3, v2

    add-int v0, p4, v3

    int-to-long v4, v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/byazt/uq/i;->da()Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/16 v17, 0x0

    if-eqz v0, :cond_0

    .line 5
    :try_start_1
    const-class v0, Landroid/system/OsConstants;

    const-string v8, "MAP_POPULATE"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6
    invoke-static {v0, v2}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v8, 0x0

    .line 9
    sget v12, Landroid/system/OsConstants;->PROT_READ:I

    sget v10, Landroid/system/OsConstants;->MAP_SHARED:I

    or-int v13, v10, v0

    iget-object v14, v1, Lcom/byazt/fdg/t;->tt:Ljava/io/FileDescriptor;

    move-wide v10, v4

    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    invoke-static {}, Lcom/byazt/uq/i;->t()Z

    move-result v0
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v10, "java.nio.DirectByteBuffer"

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v0, :cond_2

    .line 11
    :try_start_4
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v10, 0x5

    new-array v13, v10, [Ljava/lang/Class;

    .line 12
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v17

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v12

    const-class v14, Ljava/io/FileDescriptor;

    aput-object v14, v13, v11

    const-class v14, Ljava/lang/Runnable;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x4

    aput-object v14, v13, v16

    .line 13
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    if-nez v14, :cond_1

    .line 14
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    :cond_1
    if-eqz v14, :cond_3

    .line 15
    invoke-virtual {v14, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v0, v10, [Ljava/lang/Object;

    .line 16
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v17

    int-to-long v6, v3

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v12

    iget-object v3, v1, Lcom/byazt/fdg/t;->tt:Ljava/io/FileDescriptor;

    aput-object v3, v0, v11

    aput-object v2, v0, v15

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 17
    :try_start_5
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 22
    :cond_2
    :try_start_6
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v6, v11, [Ljava/lang/Class;

    .line 23
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v17

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v12

    .line 24
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v6, v11, [Ljava/lang/Object;

    int-to-long v10, v3

    add-long/2addr v10, v8

    .line 26
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v17

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v12

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_7
    move-exception v0

    .line 27
    :try_start_7
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_8
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_9
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_a
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_b
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    move-object/from16 v3, p1

    .line 32
    invoke-interface {v3, v2}, Lcom/byazt/fdg/da;->c(Ljava/nio/ByteBuffer;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-eqz v0, :cond_4

    .line 33
    :try_start_8
    invoke-static {v8, v9, v4, v5}, Landroid/system/Os;->munmap(JJ)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_c

    :catch_c
    :cond_4
    return-void

    :catch_d
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    goto :goto_5

    :catch_e
    move-exception v0

    const-wide/16 v8, 0x0

    .line 34
    :goto_4
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Failed to mmap "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    :goto_5
    cmp-long v6, v8, v2

    if-eqz v6, :cond_5

    .line 35
    :try_start_a
    invoke-static {v8, v9, v4, v5}, Landroid/system/Os;->munmap(JJ)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_f

    .line 36
    :catch_f
    :cond_5
    throw v0
.end method
