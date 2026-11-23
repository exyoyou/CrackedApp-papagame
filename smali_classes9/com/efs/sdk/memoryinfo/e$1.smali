.class final Lcom/efs/sdk/memoryinfo/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/memoryinfo/e;-><init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic D:Landroid/content/Context;

.field final synthetic E:Lcom/efs/sdk/memoryinfo/e;


# direct methods
.method constructor <init>(Lcom/efs/sdk/memoryinfo/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->D:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "umid"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    new-instance p1, Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "um_umid_header"

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/efs/sdk/memoryinfo/e;->a(Lcom/efs/sdk/memoryinfo/e;)Lcom/efs/sdk/base/EfsReporter;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    const-class p1, Lcom/efs/sdk/memoryinfo/e;

    .line 30
    .line 31
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/efs/sdk/memoryinfo/e;->b(Lcom/efs/sdk/memoryinfo/e;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/efs/sdk/memoryinfo/e;->c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    .line 61
    .line 62
    invoke-static {v0, p2}, Lcom/efs/sdk/memoryinfo/e;->a(Lcom/efs/sdk/memoryinfo/e;Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p2, "send cache:"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/efs/sdk/memoryinfo/e;->c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    sget-boolean p1, Lcom/efs/sdk/memoryinfo/a;->DEBUG:Z

    .line 87
    .line 88
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->E:Lcom/efs/sdk/memoryinfo/e;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/efs/sdk/memoryinfo/e;->c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/efs/sdk/memoryinfo/e$1;->D:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string p2, "umid"

    .line 104
    .line 105
    invoke-virtual {p1, p2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->unregistImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p2

    .line 110
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :cond_1
    :goto_1
    return-void

    .line 113
    :catchall_1
    move-exception p1

    .line 114
    const-string p2, "umid "

    .line 115
    .line 116
    invoke-static {p2, p1}, Lcom/efs/sdk/memoryinfo/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
