.class public Lcom/byazt/ts/uj$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0x35c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ts/uj;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ts/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ts/uj$15;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "CSJ_VIDEO_MEDIA"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ts/uj$15;->c:Lcom/byazt/ts/uj;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/byazt/ts/uj;->isPaused()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/ts/uj$15;->c:Lcom/byazt/ts/uj;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ts/uj$15;->c:Lcom/byazt/ts/uj;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Lcom/byazt/ts/ve;->n()V

    .line 26
    .line 27
    .line 28
    const-string v1, "resume play exec start "

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/ts/uj$15;->c:Lcom/byazt/ts/uj;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/byazt/ts/uj;->da(Lcom/byazt/ts/uj;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/byazt/fk/sp$c;

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    iget-object v3, p0, Lcom/byazt/ts/uj$15;->c:Lcom/byazt/ts/uj;

    .line 66
    .line 67
    invoke-interface {v2, v3}, Lcom/byazt/fk/sp$c;->onResume(Lcom/byazt/fk/sp;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/byazt/ts/uj$15;->c:Lcom/byazt/ts/uj;

    .line 72
    .line 73
    const/16 v2, 0xce

    .line 74
    .line 75
    invoke-static {v1, v2}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    const/4 v2, 0x2

    .line 81
    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    const-string v4, "play: catch exception "

    .line 85
    .line 86
    aput-object v4, v2, v3

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aput-object v1, v2, v3

    .line 94
    .line 95
    invoke-static {v0, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method
