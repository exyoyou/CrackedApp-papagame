.class public Lcn/fly/tools/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Landroid/os/IBinder; = null

.field private static volatile b:I = -0x80000000

.field private static volatile c:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    sget v0, Lcn/fly/tools/b/l;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 142
    sget p0, Lcn/fly/tools/b/l;->b:I

    return p0

    :cond_0
    :try_start_0
    const-string v0, "034efRedekelejedemNdVel\'fjgfj1emEk_egemffhmZed:fiWeOfkHgNidVefe8fk.gKek"

    .line 143
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "004BfmKjOehgg"

    .line 144
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v3

    const-string p0, "026Hgdhkgefhfmgefegdffhifheifk:gjRhmSedPfi.eXfk6gQff,fAfgel"

    .line 147
    invoke-static {p0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 148
    invoke-virtual/range {v3 .. v8}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcn/fly/tools/b/l;->b:I

    .line 149
    sget p0, Lcn/fly/tools/b/l;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 150
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 151
    sget p0, Lcn/fly/tools/b/l;->b:I

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 102
    const-class v0, Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 103
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v6

    const-string v7, "025ef[edekelejedemelgjemfmCg_ekeeejPdgAidUefe fkLgUek"

    invoke-static {v7}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "010-fk6gj$fm$gNekeeej$dg"

    .line 104
    invoke-static {v9}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v4

    new-array v11, v3, [Ljava/lang/Object;

    aput-object p1, v11, v4

    const-class v12, Landroid/os/IBinder;

    const/4 v13, 0x0

    .line 105
    invoke-virtual/range {v6 .. v13}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/os/IBinder;

    if-eqz v9, :cond_0

    .line 106
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v6

    const-string v7, "024efNedekelejedemelgjemfmBighh@feWehhVggXedQfi"

    invoke-static {v7}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 107
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v7, p3

    invoke-direct {v15, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 108
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v7, p4

    invoke-direct {v14, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 109
    :try_start_2
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v7, p5

    invoke-direct {v13, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v7

    const-class v8, Landroid/os/IBinder;

    const-string v5, "012Rgj1ighhTfeelegeg,efEed"

    invoke-static {v5}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x6

    new-array v11, v5, [Ljava/lang/Class;

    aput-object v0, v11, v4

    aput-object v0, v11, v3

    aput-object v0, v11, v1

    const-class v0, [Ljava/lang/String;

    aput-object v0, v11, v2

    const-string v0, "024efQedekelejedemelgjemfm_ighh-fe[ehh_ggRed1fi"

    .line 111
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x4

    aput-object v0, v11, v12

    const-class v0, Landroid/os/ResultReceiver;

    const/16 v16, 0x5

    aput-object v0, v11, v16

    new-array v0, v5, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v0, v1

    aput-object p2, v0, v2

    aput-object v6, v0, v12

    new-instance v5, Landroid/os/ResultReceiver;

    new-instance v6, Landroid/os/Handler;

    .line 113
    invoke-virtual/range {p6 .. p6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v6, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v6}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    aput-object v5, v0, v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v12, v0

    move-object/from16 v16, v13

    move-object v13, v5

    move-object/from16 v17, v14

    move-object v14, v6

    .line 114
    :try_start_4
    invoke-virtual/range {v7 .. v14}, Lcn/fly/tools/a/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v15, v0, v4

    aput-object v17, v0, v3

    aput-object v16, v0, v1

    .line 115
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    return v4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v17, v14

    move-object/from16 v16, v5

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v16

    :goto_0
    move-object v5, v15

    goto :goto_1

    :cond_0
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    aput-object v5, v0, v3

    aput-object v5, v0, v1

    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    const/4 v0, -0x1

    return v0

    :catchall_4
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v16

    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v5, v2, v4

    aput-object v17, v2, v3

    aput-object v16, v2, v1

    invoke-static {v2}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 116
    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 117
    invoke-static {p0}, Lcn/fly/tools/b/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 118
    invoke-static {}, Lcn/fly/tools/b/l;->c()I

    move-result v1

    invoke-static {p0, p1, p2, v1, v0}, Lcn/fly/tools/b/l;->a(Landroid/content/Context;Ljava/lang/String;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;III)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionInt()I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 120
    :cond_0
    sget-object v0, Lcn/fly/tools/b/l;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 121
    invoke-static {p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object v3

    const-string v0, "025efWedekelejedemelgjemfm$g9ekeeejPdg:idFefeMfk?gLek"

    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v0, "010JfkLgjJfmSg3ekeeej]dg"

    .line 122
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    new-array v8, v0, [Ljava/lang/Object;

    const-string v0, "007ked8fiFePfkNg"

    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const-class v9, Landroid/os/IBinder;

    const/4 v10, 0x0

    .line 123
    invoke-virtual/range {v3 .. v10}, Lcn/fly/tools/a/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sput-object v0, Lcn/fly/tools/b/l;->a:Landroid/os/IBinder;

    .line 124
    :cond_1
    sget-object v0, Lcn/fly/tools/b/l;->a:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "034ef>edekelejedem d!elKfjgfj9em9k;egemffhm=ed-fi\'e1fkAg]id2efeHfk<gDek"

    .line 127
    invoke-static {v3}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    sget-object p1, Lcn/fly/tools/b/l;->a:Landroid/os/IBinder;

    invoke-interface {p1, p4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 133
    invoke-static {}, Lcn/fly/tools/b/l;->b()Landroid/os/Parcelable$Creator;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/fly/tools/b/r;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-static {p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 137
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-static {p0}, Lcn/fly/tools/a/f;->a(Landroid/content/Context;)Lcn/fly/tools/a/f;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcn/fly/tools/a/f;->b(Landroid/content/Context;)Z

    .line 140
    throw p1

    :cond_2
    return-object v2
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "M-H-XPL-1"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p1, "005Ueg^g\'ejheeh"

    .line 3
    invoke-static {p1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcn/fly/tools/b/c;->a(Landroid/content/Context;)Lcn/fly/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/fly/tools/b/c;->d()Lcn/fly/tools/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/fly/tools/b/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcn/fly/tools/b/l;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p0, v0}, Lcn/fly/tools/b/l;->a(Landroid/content/Context;Landroid/os/HandlerThread;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, v1, v0}, Lcn/fly/tools/b/l;->a(Landroid/content/Context;ZLandroid/os/HandlerThread;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    move-object v3, p0

    .line 6
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result p0

    if-lt p0, v2, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 10
    :try_start_2
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    :try_start_3
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result p0

    if-lt p0, v2, :cond_4

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    return-object v3

    :catchall_2
    move-exception p0

    .line 14
    :try_start_4
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result p1

    if-lt p1, v2, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 17
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 18
    :goto_3
    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/HandlerThread;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/HandlerThread;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    invoke-static {}, Lcn/fly/commons/e;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".tmp11"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0025ejNf"

    invoke-static {v4}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_0
    const-string v0, "007ked\'fiGeQfk1g"

    .line 28
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/String;

    const-string v0, "004hRejgj6j"

    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v15

    const-string v0, "008ked[fiUe_fkMgZgj"

    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v14

    move-object/from16 v3, p0

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v9}, Lcn/fly/tools/b/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    .line 29
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 32
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v6, "008ked(fiFe@fk@gl"

    .line 35
    invoke-static {v6}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 38
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 39
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    new-array v1, v12, [Ljava/io/Closeable;

    aput-object v5, v1, v15

    aput-object v4, v1, v14

    aput-object v3, v1, v13

    .line 44
    invoke-static {v1}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 46
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 47
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_1

    :cond_4
    new-array v0, v12, [Ljava/io/Closeable;

    aput-object v1, v0, v15

    aput-object v1, v0, v14

    aput-object v1, v0, v13

    .line 48
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 50
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 51
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    :goto_1
    new-array v5, v12, [Ljava/io/Closeable;

    aput-object v1, v5, v15

    aput-object v4, v5, v14

    aput-object v3, v5, v13

    .line 52
    invoke-static {v5}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 54
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 55
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 56
    throw v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;ZLandroid/os/HandlerThread;)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/HandlerThread;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcn/fly/commons/e;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".tmp11"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "002Oej(f"

    invoke-static {v4}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_1
    const-string v0, "0"

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v5, "007ked@fi5e(fk\'g"

    .line 66
    invoke-static {v5}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const-string v4, "016%efehRg.ekfdil,edjFejeeejRjWej)g^gj"

    invoke-static {v4}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v15

    const-string v4, "002ZilZe"

    .line 67
    invoke-static {v4}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v13

    const-string v4, "026efDedekelejedemejVfjgfj^em.edj!ejel3fPemidgefffh"

    invoke-static {v4}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    const-string v4, "006Dililehgj4gSek"

    .line 68
    invoke-static {v4}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v14

    aput-object v0, v6, v3

    move-object/from16 v3, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p2

    .line 69
    invoke-static/range {v3 .. v9}, Lcn/fly/tools/b/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    goto :goto_0

    :cond_2
    const-string v5, "007ked fiNe0fkGg"

    .line 70
    invoke-static {v5}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "0160efehJgFekfdil9edjTejeeejXjTej3g0gj"

    invoke-static {v7}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v15

    const-string v7, "002Lil5e"

    .line 71
    invoke-static {v7}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, "026efKedekelejedemej%fjgfj+emQedjFejelHf9emidgefffh"

    invoke-static {v7}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    const-string v7, "-c"

    aput-object v7, v6, v14

    const-string v7, "032efZedekelejedemej?fjgfj_emTdejgPfkelekfdemgfgeflfhfeglhjhk"

    .line 72
    invoke-static {v7}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v3, "006EililehgjFg)ek"

    invoke-static {v3}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    const/4 v3, 0x6

    aput-object v0, v6, v3

    move-object/from16 v3, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p2

    .line 73
    invoke-static/range {v3 .. v9}, Lcn/fly/tools/b/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/os/HandlerThread;)I

    .line 74
    :goto_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 77
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 78
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v6, "012kedAfiVe^fk>gJfhUeGeg$g3jj"

    .line 80
    invoke-static {v6}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    new-array v1, v14, [Ljava/io/Closeable;

    aput-object v5, v1, v15

    aput-object v4, v1, v13

    aput-object v3, v1, v12

    .line 89
    invoke-static {v1}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 91
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 92
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :cond_5
    new-array v0, v14, [Ljava/io/Closeable;

    aput-object v1, v0, v15

    aput-object v1, v0, v13

    aput-object v1, v0, v12

    .line 93
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 95
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 96
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    :goto_2
    new-array v5, v14, [Ljava/io/Closeable;

    aput-object v1, v5, v15

    aput-object v4, v5, v13

    aput-object v3, v5, v12

    .line 97
    invoke-static {v5}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 99
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 100
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 101
    throw v0

    :cond_6
    :goto_3
    return-object v1
.end method

.method public static a()Z
    .locals 5

    const/4 v0, 0x1

    .line 152
    :try_start_0
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getManufacturerForFly()Ljava/lang/String;

    move-result-object v1

    const-string v2, "006i<ehKe8gh gBej"

    .line 153
    invoke-static {v2}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v2, v0, [I

    .line 155
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/fly/tools/utils/DH;->requester(Landroid/content/Context;)Lcn/fly/tools/utils/DH$RequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcn/fly/tools/utils/DH$RequestBuilder;->getHmOsDetailedVer()Lcn/fly/tools/utils/DH$RequestBuilder;

    move-result-object v3

    new-instance v4, Lcn/fly/tools/b/l$1;

    invoke-direct {v4, v2, v1}, Lcn/fly/tools/b/l$1;-><init>([ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Lcn/fly/tools/utils/DH$RequestBuilder;->request(Lcn/fly/tools/utils/DH$DHResponder;)V

    .line 156
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v1, 0x0

    aget v2, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 157
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private static b()Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, "030ef1edekelejedemVdZel4fjgfj<em\'k(egemhm]edLfi>e?fkUg$ff-f4fgel"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "007Ffehkhjgegdhihk"

    .line 12
    .line 13
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcn/fly/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 22
    .line 23
    return-object v0
.end method

.method private static c()I
    .locals 6

    .line 1
    sget v0, Lcn/fly/tools/b/l;->c:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcn/fly/tools/b/l;->c:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x11

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    :try_start_0
    const-string v0, "021ef>edekelejedemelgjemflgj6gQekglLef6edPhg"

    .line 20
    .line 21
    invoke-static {v0}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "0093fkXgjGflgjKgJekffed"

    .line 30
    .line 31
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x1

    .line 36
    new-array v4, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    aput-object v5, v4, v2

    .line 47
    .line 48
    new-array v3, v3, [Ljava/lang/Class;

    .line 49
    .line 50
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v5, v3, v2

    .line 53
    .line 54
    invoke-static {v0, v1, v4, v3}, Lcn/fly/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sput v0, Lcn/fly/tools/b/l;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    return v0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    return v2
.end method
