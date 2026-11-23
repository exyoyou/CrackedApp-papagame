.class Lcom/beizi/ad/internal/c/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/c/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/beizi/ad/internal/c/a;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/c/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/ad/internal/c/a$7;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->i(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/model/c$b$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->i(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/model/c$b$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b$b;->f()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/ad/internal/c/a;->i(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/model/c$b$b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/c$b$b;->m(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->j(Lcom/beizi/ad/internal/c/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/beizi/ad/internal/c/a;->k(Lcom/beizi/ad/internal/c/a;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    const-wide/16 v2, 0x7d0

    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-lez v4, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->i(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/model/c$b$b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->i(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/model/c$b$b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b$b;->j()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/beizi/ad/internal/c/a;->i(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/model/c$b$b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/c$b$b;->q(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$7;->b:Lcom/beizi/ad/internal/c/a;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->c(Lcom/beizi/ad/internal/c/a;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/beizi/ad/internal/c/a$7;->a:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/internal/c/a;->a(Lcom/beizi/ad/internal/c/a;Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
