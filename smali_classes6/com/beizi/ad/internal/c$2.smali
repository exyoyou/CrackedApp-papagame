.class Lcom/beizi/ad/internal/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/internal/c;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

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
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "count:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/beizi/ad/internal/c;->d(Lcom/beizi/ad/internal/c;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ";onActivityDestroyed"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->b(Lcom/beizi/ad/internal/c;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->b(Lcom/beizi/ad/internal/c;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->b(Lcom/beizi/ad/internal/c;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/beizi/ad/internal/a;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/beizi/ad/internal/a;->b()V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->b(Lcom/beizi/ad/internal/c;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->a(Lcom/beizi/ad/internal/c;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->c(Lcom/beizi/ad/internal/c;)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->d(Lcom/beizi/ad/internal/c;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Lcom/beizi/ad/internal/c;->a(Lcom/beizi/ad/internal/c;I)I

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->d(Lcom/beizi/ad/internal/c;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->b(Lcom/beizi/ad/internal/c;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->b(Lcom/beizi/ad/internal/c;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lez p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/beizi/ad/internal/c$2;->a:Lcom/beizi/ad/internal/c;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/beizi/ad/internal/c;->b(Lcom/beizi/ad/internal/c;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/beizi/ad/internal/a;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/beizi/ad/internal/a;->a()V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method
