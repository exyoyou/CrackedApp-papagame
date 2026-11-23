.class public Lcom/byazt/ia/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x203,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ia/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ia/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ia/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/byazt/uy/uj;->c(Landroid/app/Activity;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-static {p2, p1}, Lcom/byazt/ia/tt;->c(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/byazt/ia/tt;->c(Lcom/byazt/ia/tt;J)J

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/ia/tt;->tt(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/byazt/ia/tt;->c(Lcom/byazt/ia/tt;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/byazt/ia/tt;->uj(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/byazt/ia/tt;->ve(Lcom/byazt/ia/tt;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Lcom/byazt/uy/uj;->c(Landroid/app/Activity;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ia/tt;->tt(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ltz v0, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/byazt/ia/tt;->tt(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ge v0, v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/byazt/ia/tt;->tt(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/byazt/ia/tt;->uj(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/byazt/ia/tt;->x(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/byazt/ia/tt;->i(Lcom/byazt/ia/tt;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, p1}, Lcom/byazt/uy/uj;->c(Landroid/app/Activity;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-static {v0, p1}, Lcom/byazt/ia/tt;->uj(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/byazt/ia/tt;->uj(Lcom/byazt/ia/tt;J)J

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/ia/tt;->a(Lcom/byazt/ia/tt;)I

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/byazt/ia/tt;->sp(Lcom/byazt/ia/tt;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-gtz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {p1, v0}, Lcom/byazt/ia/tt;->c(Lcom/byazt/ia/tt;Z)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, p1}, Lcom/byazt/uy/uj;->c(Landroid/app/Activity;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-static {v0, p1}, Lcom/byazt/ia/tt;->ve(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/byazt/ia/tt;->ve(Lcom/byazt/ia/tt;J)J

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-static {p1, v0}, Lcom/byazt/ia/tt;->c(Lcom/byazt/ia/tt;Z)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/byazt/ia/tt;->n(Lcom/byazt/ia/tt;)I

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, p1}, Lcom/byazt/uy/uj;->c(Landroid/app/Activity;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-static {v0, p1}, Lcom/byazt/ia/tt;->tt(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/byazt/ia/tt;->tt(Lcom/byazt/ia/tt;J)J

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/byazt/ia/tt;->uj()Lcom/byazt/uy/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, p1}, Lcom/byazt/uy/uj;->c(Landroid/app/Activity;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-static {v0, p1}, Lcom/byazt/ia/tt;->n(Lcom/byazt/ia/tt;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/ia/tt$1;->c:Lcom/byazt/ia/tt;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/byazt/ia/tt;->n(Lcom/byazt/ia/tt;J)J

    .line 36
    .line 37
    .line 38
    return-void
.end method
