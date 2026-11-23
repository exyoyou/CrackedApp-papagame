.class public Lcom/xinzhu/overmind/server/am/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/String; = "c"


# instance fields
.field private final a:Landroid/app/ActivityManager;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/am/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xinzhu/overmind/server/am/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    .line 17
    .line 18
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "activity"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/ActivityManager;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->a:Landroid/app/ActivityManager;

    .line 31
    .line 32
    return-void
.end method

.method private C(ILjava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    move-object/from16 v5, p2

    .line 12
    .line 13
    move/from16 v6, p3

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/xinzhu/overmind/server/am/c;->r(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    move-object/from16 v1, p0

    .line 24
    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    move-object/from16 v3, p4

    .line 28
    .line 29
    move-object/from16 v4, p5

    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/am/c;->F(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/xinzhu/overmind/server/am/b;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    if-eqz p13, :cond_0

    .line 36
    .line 37
    const/high16 v0, 0x8000000

    .line 38
    .line 39
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/high16 v0, 0x80000

    .line 43
    .line 44
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const/high16 v0, 0x10000000

    .line 48
    .line 49
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_0
    move/from16 v0, p10

    .line 53
    .line 54
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 58
    .line 59
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->K()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/xinzhu/haunted/android/app/r$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    move-object/from16 v7, p0

    .line 75
    .line 76
    move-object/from16 v10, p6

    .line 77
    .line 78
    move-object/from16 v11, p7

    .line 79
    .line 80
    move-object/from16 v12, p8

    .line 81
    .line 82
    move/from16 v13, p9

    .line 83
    .line 84
    move/from16 v14, p11

    .line 85
    .line 86
    move-object/from16 v15, p12

    .line 87
    .line 88
    invoke-direct/range {v7 .. v15}, Lcom/xinzhu/overmind/server/am/c;->z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    return v0
.end method

.method private D(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILjava/lang/String;ILcom/xinzhu/overmind/server/am/b;Landroid/content/pm/ActivityInfo;I)I
    .locals 17

    .line 1
    move-object/from16 v0, p11

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p12

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    move/from16 v5, p8

    .line 12
    .line 13
    move-object/from16 v6, p9

    .line 14
    .line 15
    move/from16 v7, p10

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/server/am/c;->r(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 22
    .line 23
    iput-object v1, v6, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 26
    .line 27
    iput-object v1, v6, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    move-object/from16 v2, p0

    .line 34
    .line 35
    move/from16 v3, p8

    .line 36
    .line 37
    move-object/from16 v4, p1

    .line 38
    .line 39
    move-object/from16 v5, p12

    .line 40
    .line 41
    invoke-direct/range {v2 .. v7}, Lcom/xinzhu/overmind/server/am/c;->F(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/xinzhu/overmind/server/am/b;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    move/from16 v1, p13

    .line 46
    .line 47
    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 51
    .line 52
    iget-object v9, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;

    .line 53
    .line 54
    move-object/from16 v8, p0

    .line 55
    .line 56
    move-object/from16 v11, p2

    .line 57
    .line 58
    move-object/from16 v12, p3

    .line 59
    .line 60
    move-object/from16 v13, p4

    .line 61
    .line 62
    move/from16 v14, p5

    .line 63
    .line 64
    move/from16 v15, p6

    .line 65
    .line 66
    move-object/from16 v16, p7

    .line 67
    .line 68
    invoke-direct/range {v8 .. v16}, Lcom/xinzhu/overmind/server/am/c;->z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    return v0
.end method

.method private F(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/xinzhu/overmind/server/am/b;I)Landroid/content/Intent;
    .locals 13

    .line 1
    move-object/from16 v5, p3

    .line 2
    .line 3
    new-instance v4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;

    .line 4
    .line 5
    move v3, p1

    .line 6
    move-object v1, p2

    .line 7
    move-object/from16 v0, p4

    .line 8
    .line 9
    invoke-direct {v4, p1, v5, p2, v0}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v10, -0x1

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    move v9, p1

    .line 30
    invoke-virtual/range {v6 .. v12}, Lcom/xinzhu/overmind/server/h;->q(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget v2, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->vpid:I

    .line 37
    .line 38
    iget-boolean v6, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->runWithPlugin:Z

    .line 39
    .line 40
    move-object v0, p0

    .line 41
    move-object v1, p2

    .line 42
    move v3, p1

    .line 43
    move-object/from16 v5, p3

    .line 44
    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/xinzhu/overmind/server/am/c;->n(Landroid/content/Intent;IILcom/xinzhu/overmind/client/stub/record/StubActivityRecord;Landroid/content/pm/ActivityInfo;Z)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "Unable to create process, name:"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method private G()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/Overmind;->getRecentTasksContainPlugin(II)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 32
    .line 33
    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/xinzhu/overmind/server/am/h;

    .line 44
    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private b(Lcom/xinzhu/overmind/server/am/b;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/xinzhu/overmind/client/c;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/xinzhu/overmind/server/am/h;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/xinzhu/overmind/server/am/b;

    .line 40
    .line 41
    iget-boolean v2, v1, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    :try_start_0
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/xinzhu/overmind/server/ProcessRecord;->client:Lcom/xinzhu/overmind/client/c;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 50
    .line 51
    invoke-interface {v2, v1}, Lcom/xinzhu/overmind/client/c;->finishActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method

.method private d(ILandroid/content/ComponentName;)Lcom/xinzhu/overmind/server/am/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 23
    .line 24
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    .line 25
    .line 26
    if-ne p1, v3, :cond_0

    .line 27
    .line 28
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    .line 45
    .line 46
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 47
    .line 48
    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    move-object v1, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object v1
.end method

.method private e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 25
    .line 26
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    .line 27
    .line 28
    if-ne p1, v3, :cond_0

    .line 29
    .line 30
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    .line 47
    .line 48
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 49
    .line 50
    if-ne v4, p2, :cond_1

    .line 51
    .line 52
    move-object v0, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object v0
.end method

.method private f(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    .line 43
    .line 44
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 45
    .line 46
    if-ne v4, p1, :cond_1

    .line 47
    .line 48
    move-object v0, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method

.method private h(ILjava/lang/String;)Lcom/xinzhu/overmind/server/am/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 25
    .line 26
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    .line 27
    .line 28
    if-ne p1, v3, :cond_0

    .line 29
    .line 30
    iget-object v3, v2, Lcom/xinzhu/overmind/server/am/h;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-object v2

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    const/4 p1, 0x0

    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method private i(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 25
    .line 26
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->b:I

    .line 27
    .line 28
    if-ne p1, v3, :cond_0

    .line 29
    .line 30
    iget-object v3, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/xinzhu/overmind/server/am/b;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 49
    .line 50
    if-ne v4, p2, :cond_1

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-object v2

    .line 54
    :cond_2
    monitor-exit v0

    .line 55
    const/4 p1, 0x0

    .line 56
    return-object p1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method private n(Landroid/content/Intent;IILcom/xinzhu/overmind/client/stub/record/StubActivityRecord;Landroid/content/pm/ActivityInfo;Z)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p5, p3}, Lcom/xinzhu/overmind/server/am/c;->p(Landroid/content/pm/ActivityInfo;I)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    invoke-direct {p0, p5}, Lcom/xinzhu/overmind/server/am/c;->q(Landroid/content/pm/ActivityInfo;)Z

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    if-eqz p6, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p6

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p6

    .line 25
    :goto_0
    if-eqz p3, :cond_2

    .line 26
    .line 27
    if-nez p5, :cond_1

    .line 28
    .line 29
    new-instance p3, Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/xinzhu/overmind/client/g;->i(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p3, Landroid/content/ComponentName;

    .line 43
    .line 44
    invoke-static {p2}, Lcom/xinzhu/overmind/client/g;->j(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-nez p5, :cond_3

    .line 56
    .line 57
    new-instance p3, Landroid/content/ComponentName;

    .line 58
    .line 59
    invoke-static {p2}, Lcom/xinzhu/overmind/client/g;->e(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance p3, Landroid/content/ComponentName;

    .line 71
    .line 72
    invoke-static {p2}, Lcom/xinzhu/overmind/client/g;->f(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p3, p6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p2, p4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 83
    .line 84
    iget-object p3, p4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    .line 85
    .line 86
    iget p4, p4, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mUserId:I

    .line 87
    .line 88
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method private o()Lcom/xinzhu/overmind/server/am/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/xinzhu/overmind/server/am/h;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v1
.end method

.method private p(Landroid/content/pm/ActivityInfo;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v1, v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getAppResources(Ljava/lang/String;I)Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    invoke-static {}, Lq9/a$e;->R()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget p1, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 23
    .line 24
    invoke-virtual {p2, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lq9/a$e;->X()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {}, Lq9/a$e;->X()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lq9/a$e;->Z()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-static {}, Lq9/a$e;->W()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 76
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lcom/xinzhu/overmind/server/am/c;->d:Ljava/lang/String;

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v1, "ifActivityFloating "

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return v2

    .line 102
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 103
    .line 104
    const-string p2, "ifActivityFloating get Resources failed"

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    return v0
.end method

.method private q(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    :goto_1
    return p1
.end method

.method private x(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/haunted/android/app/f;->c()Lcom/xinzhu/haunted/android/app/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/o;->c(Landroid/os/IBinder;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/android/app/n;

    .line 17
    .line 18
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/n;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/n;->i(Landroid/os/IBinder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method private y(Landroid/os/IBinder;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/haunted/android/app/f;->c()Lcom/xinzhu/haunted/android/app/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/o;->d(Landroid/os/IBinder;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    new-instance v0, Lcom/xinzhu/haunted/android/app/n;

    .line 17
    .line 18
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/n;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/xinzhu/haunted/android/app/n;->j(Landroid/os/IBinder;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method private z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 12

    .line 1
    :try_start_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/n;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/n;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v10, 0x0

    .line 15
    move-object v2, p1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move-object/from16 v6, p4

    .line 19
    .line 20
    move-object/from16 v7, p5

    .line 21
    .line 22
    move/from16 v8, p6

    .line 23
    .line 24
    move/from16 v9, p7

    .line 25
    .line 26
    move-object/from16 v11, p8

    .line 27
    .line 28
    invoke-virtual/range {v1 .. v11}, Lcom/xinzhu/haunted/android/app/n;->startActivity(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/Object;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method


# virtual methods
.method public A(ILjava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 17

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    array-length v3, v1

    .line 11
    if-ne v2, v3, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    array-length v4, v0

    .line 16
    if-ge v3, v4, :cond_0

    .line 17
    .line 18
    aget-object v9, v0, v3

    .line 19
    .line 20
    aget-object v10, v1, v3

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, -0x1

    .line 24
    const/4 v14, 0x0

    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    move-object/from16 v5, p0

    .line 28
    .line 29
    move/from16 v6, p1

    .line 30
    .line 31
    move-object/from16 v7, p2

    .line 32
    .line 33
    move/from16 v8, p3

    .line 34
    .line 35
    move-object/from16 v11, p6

    .line 36
    .line 37
    move-object/from16 v15, p7

    .line 38
    .line 39
    invoke-virtual/range {v5 .. v16}, Lcom/xinzhu/overmind/server/am/c;->E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;Z)I

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return v2

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v1, "intents are length different than resolvedTypes"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string v1, "resolvedTypes is null"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 63
    .line 64
    const-string v1, "intents is null"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public B(Landroid/content/Intent;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    .line 9
    .line 10
    check-cast v1, Lcom/xinzhu/overmind/server/am/b;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return v2

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget v2, v1, Lcom/xinzhu/overmind/server/am/b;->userId:I

    .line 30
    .line 31
    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    .line 32
    .line 33
    invoke-direct {p0, v2, v3}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v3, v2, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 40
    .line 41
    iget-object v4, v1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 42
    .line 43
    if-eq v3, v4, :cond_2

    .line 44
    .line 45
    :cond_1
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_2
    iget-object v1, v2, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 52
    .line 53
    iget-object v4, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->appThread:Landroid/os/IInterface;

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    iget-object v7, v2, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, -0x1

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x0

    .line 62
    move-object v3, p0

    .line 63
    move-object v5, p1

    .line 64
    invoke-direct/range {v3 .. v11}, Lcom/xinzhu/overmind/server/am/c;->z(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    monitor-exit v0

    .line 69
    return p1

    .line 70
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    const/4 p1, 0x0

    .line 79
    return p1

    .line 80
    :cond_4
    monitor-exit v0

    .line 81
    return v2

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p1
.end method

.method public E(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;Z)I
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v0, p1

    move-object/from16 v5, p4

    .line 1
    iget-object v1, v15, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v7, p5

    invoke-virtual {v1, v5, v2, v7, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 5
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_0

    goto/16 :goto_17

    .line 6
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivityLocked : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v1, p6

    .line 8
    invoke-direct {v15, v0, v1}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v4, :cond_2

    .line 9
    iget-object v8, v4, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 10
    :goto_0
    invoke-static {v13}, Lcom/xinzhu/overmind/utils/v;->f(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x20000000

    .line 11
    invoke-virtual {v15, v5, v10}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v10, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v10, 0x1

    :goto_2
    const/high16 v11, 0x10000000

    .line 12
    invoke-virtual {v15, v5, v11}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v11

    const/high16 v12, 0x4000000

    .line 13
    invoke-virtual {v15, v5, v12}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v12

    const v14, 0x8000

    .line 14
    invoke-virtual {v15, v5, v14}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v14

    const/high16 v6, 0x2000000

    .line 15
    invoke-virtual {v15, v5, v6}, Lcom/xinzhu/overmind/server/am/c;->a(Landroid/content/Intent;I)Z

    move-result v6

    .line 16
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const v18, 0x2812000

    and-int v17, v17, v18

    .line 17
    iget v3, v13, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    const/high16 v3, 0x800000

    or-int v3, v17, v3

    move/from16 v17, v3

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v4, :cond_6

    .line 18
    iget-object v1, v4, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    if-eqz v1, :cond_6

    .line 19
    invoke-direct {v15, v0, v1}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_7

    .line 21
    sget-object v3, Lcom/xinzhu/overmind/server/am/c;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to forward result from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v19, v1

    .line 22
    iget v1, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v1, :cond_9

    if-eq v1, v2, :cond_9

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_8

    const/4 v1, 0x0

    goto :goto_4

    .line 23
    :cond_8
    invoke-direct {v15, v0, v9}, Lcom/xinzhu/overmind/server/am/c;->h(ILjava/lang/String;)Lcom/xinzhu/overmind/server/am/h;

    move-result-object v1

    goto :goto_4

    .line 24
    :cond_9
    invoke-direct {v15, v0, v9}, Lcom/xinzhu/overmind/server/am/c;->h(ILjava/lang/String;)Lcom/xinzhu/overmind/server/am/h;

    move-result-object v1

    if-nez v1, :cond_a

    if-nez v11, :cond_a

    move-object v1, v8

    :cond_a
    :goto_4
    if-eqz v1, :cond_21

    .line 25
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->c()Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v6, v8

    const/4 v7, 0x1

    goto/16 :goto_14

    .line 26
    :cond_b
    iget-object v6, v15, Lcom/xinzhu/overmind/server/am/c;->a:Landroid/app/ActivityManager;

    iget v9, v1, Lcom/xinzhu/overmind/server/am/h;->a:I

    const/4 v3, 0x0

    invoke-virtual {v6, v9, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    if-nez v12, :cond_d

    if-nez v10, :cond_d

    if-eqz v14, :cond_c

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_e

    .line 27
    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    .line 28
    invoke-static {v3, v5}, Lsa/t;->a(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    .line 29
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v6

    if-ne v3, v6, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_f

    const/4 v3, 0x0

    return v3

    .line 30
    :cond_f
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v9

    .line 31
    invoke-static {v13}, Lsa/t;->e(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v15, v0, v3}, Lcom/xinzhu/overmind/server/am/c;->d(ILandroid/content/ComponentName;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v3

    if-eqz v12, :cond_13

    if-eqz v3, :cond_13

    .line 32
    iget-object v6, v3, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v6, v6, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    monitor-enter v6

    .line 33
    :try_start_1
    iget-object v4, v3, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v4, v4, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_8
    if-ltz v4, :cond_12

    .line 34
    iget-object v2, v3, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xinzhu/overmind/server/am/b;

    if-eq v2, v3, :cond_10

    const/4 v7, 0x1

    .line 35
    iput-boolean v7, v2, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    const-string v8, "makerFinish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v7, p5

    move-object/from16 v8, v20

    const/4 v2, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v20, v8

    if-eqz v10, :cond_11

    move-object/from16 v16, v3

    goto :goto_a

    :cond_11
    const/4 v2, 0x1

    .line 37
    iput-boolean v2, v3, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    goto :goto_9

    :cond_12
    move-object/from16 v20, v8

    :goto_9
    const/16 v16, 0x0

    .line 38
    :goto_a
    monitor-exit v6

    move-object/from16 v6, v16

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_13
    move-object/from16 v20, v8

    const/4 v6, 0x0

    :goto_b
    if-eqz v10, :cond_17

    if-nez v12, :cond_17

    .line 39
    iget-object v2, v9, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    invoke-static {v2, v5}, Lsa/t;->a(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v6, v9

    goto :goto_d

    .line 40
    :cond_14
    iget-object v2, v15, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    monitor-enter v2

    .line 41
    :try_start_2
    iget-object v3, v15, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_15
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xinzhu/overmind/server/am/b;

    .line 42
    iget-boolean v8, v7, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    if-nez v8, :cond_15

    iget-object v7, v7, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v4, 0x1

    goto :goto_c

    .line 43
    :cond_16
    monitor-exit v2

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_17
    :goto_d
    const/4 v4, 0x0

    .line 44
    :goto_e
    iget v2, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    if-nez v12, :cond_1a

    .line 45
    iget-object v2, v9, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    invoke-static {v2, v5}, Lsa/t;->a(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v6, v9

    goto :goto_10

    .line 46
    :cond_18
    invoke-static {v13}, Lsa/t;->e(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v15, v0, v2}, Lcom/xinzhu/overmind/server/am/c;->d(ILandroid/content/ComponentName;)Lcom/xinzhu/overmind/server/am/b;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 47
    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    monitor-enter v3

    .line 48
    :try_start_3
    iget-object v6, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_f
    if-ltz v6, :cond_19

    .line 49
    iget-object v8, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xinzhu/overmind/server/am/b;

    if-eq v8, v2, :cond_19

    .line 50
    iput-boolean v7, v8, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto :goto_f

    .line 51
    :cond_19
    monitor-exit v3

    move-object v6, v2

    goto :goto_10

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 52
    :cond_1a
    :goto_10
    iget v2, v13, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    move-object v6, v9

    :cond_1b
    if-eqz v14, :cond_1c

    if-eqz v11, :cond_1c

    .line 53
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/am/b;

    const/4 v7, 0x1

    .line 54
    iput-boolean v7, v3, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    goto :goto_11

    .line 55
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/xinzhu/overmind/server/am/c;->c(I)V

    if-eqz v6, :cond_1d

    .line 56
    invoke-direct {v15, v6, v5}, Lcom/xinzhu/overmind/server/am/c;->b(Lcom/xinzhu/overmind/server/am/b;Landroid/content/Intent;)V

    const/4 v2, 0x0

    return v2

    :cond_1d
    const/4 v2, 0x0

    if-eqz v4, :cond_1e

    return v2

    :cond_1e
    if-nez v19, :cond_1f

    .line 57
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 58
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    move-object/from16 v19, v1

    goto :goto_12

    :cond_1f
    if-eqz v20, :cond_20

    .line 59
    invoke-virtual/range {v20 .. v20}, Lcom/xinzhu/overmind/server/am/h;->b()Lcom/xinzhu/overmind/server/am/b;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 60
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    move-object v4, v1

    goto :goto_13

    :cond_20
    :goto_12
    move-object/from16 v4, v19

    :goto_13
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object v12, v9

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v14, v17

    .line 61
    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/am/c;->D(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILjava/lang/String;ILcom/xinzhu/overmind/server/am/b;Landroid/content/pm/ActivityInfo;I)I

    move-result v0

    return v0

    :cond_21
    const/4 v7, 0x1

    move-object v6, v8

    :goto_14
    if-ne v1, v6, :cond_23

    if-nez v1, :cond_23

    if-eqz p11, :cond_22

    goto :goto_15

    :cond_22
    const/4 v14, 0x0

    goto :goto_16

    :cond_23
    :goto_15
    const/4 v14, 0x1

    :goto_16
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p5

    move-object/from16 v8, v19

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, v17

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 62
    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/am/c;->C(ILjava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)I

    move-result v0

    return v0

    :cond_24
    :goto_17
    const/4 v0, 0x0

    return v0

    :catchall_3
    move-exception v0

    .line 63
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method public a(Landroid/content/Intent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    and-int/2addr p1, p2

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public g(I)Lcom/xinzhu/overmind/server/am/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xinzhu/overmind/server/am/h;

    .line 25
    .line 26
    iget v3, v2, Lcom/xinzhu/overmind/server/am/h;->a:I

    .line 27
    .line 28
    if-ne v3, p1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public j(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :cond_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public k(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :cond_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->info:Landroid/content/pm/ActivityInfo;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public l(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->f(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromPackage:Ljava/lang/String;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->x(Landroid/os/IBinder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public m(Landroid/os/IBinder;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->f(Landroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p1, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromUid:I

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->y(Landroid/os/IBinder;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method r(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/xinzhu/overmind/server/am/b;->create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit p2

    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method

.method public s(Lcom/xinzhu/overmind/server/ProcessRecord;ILandroid/os/IBinder;Lcom/xinzhu/overmind/server/am/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->c:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v1, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/xinzhu/overmind/server/am/h;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/xinzhu/overmind/server/am/h;

    .line 31
    .line 32
    iget v2, p4, Lcom/xinzhu/overmind/server/am/b;->userId:I

    .line 33
    .line 34
    iget-object v3, p4, Lcom/xinzhu/overmind/server/am/b;->info:Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/v;->f(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v0, p2, v2, v3}, Lcom/xinzhu/overmind/server/am/h;-><init>(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p4, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    .line 44
    .line 45
    iput-object v2, v0, Lcom/xinzhu/overmind/server/am/h;->d:Landroid/content/Intent;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iput-object p3, p4, Lcom/xinzhu/overmind/server/am/b;->token:Landroid/os/IBinder;

    .line 57
    .line 58
    iput-object p1, p4, Lcom/xinzhu/overmind/server/am/b;->processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 59
    .line 60
    iput-object v0, p4, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 61
    .line 62
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/am/h;->a(Lcom/xinzhu/overmind/server/am/b;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string p2, "onActivityCreated : "

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p2, p4, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    iget p1, p4, Lcom/xinzhu/overmind/server/am/b;->userId:I

    .line 86
    .line 87
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->c(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p1

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    throw p1
.end method

.method public t(ILandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p1, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "onActivityDestroyed : "

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p2, p1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/h;->d(Lcom/xinzhu/overmind/server/am/b;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public u(ILandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/am/c;->G()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "onActivityResumed : "

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p2, p1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/h;->d(Lcom/xinzhu/overmind/server/am/b;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p1, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/server/am/h;->a(Lcom/xinzhu/overmind/server/am/b;)V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public v(ILandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "onFinishActivity : "

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public w(ILandroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/am/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/am/c;->e(ILandroid/os/IBinder;)Lcom/xinzhu/overmind/server/am/b;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p2, Lcom/xinzhu/overmind/server/am/b;->task:Lcom/xinzhu/overmind/server/am/h;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/h;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/xinzhu/overmind/server/am/b;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    iput-boolean v3, v2, Lcom/xinzhu/overmind/server/am/b;->finished:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/am/c;->c(I)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "onFinishActivityAffinity token : "

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object p2, p2, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p1
.end method
