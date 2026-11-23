.class Lcom/beizi/ad/v2/h/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/h/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/h/c$2;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/h/c$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/ad/v2/h/c$2;->b:Lcom/beizi/ad/v2/h/c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/ad/v2/h/c;->c(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/internal/d/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/beizi/ad/v2/h/c$2;->b:Lcom/beizi/ad/v2/h/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/beizi/ad/v2/h/c;->e(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/internal/d/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/beizi/ad/v2/h/c$2;->a:Landroid/view/View;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/beizi/ad/v2/h/c$2;->b:Lcom/beizi/ad/v2/h/c;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/beizi/ad/v2/h/c;->d(Lcom/beizi/ad/v2/h/c;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/beizi/ad/v2/h/c$2;->b:Lcom/beizi/ad/v2/h/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/beizi/ad/v2/h/c;->f(Lcom/beizi/ad/v2/h/c;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/beizi/ad/v2/h/c$2;->b:Lcom/beizi/ad/v2/h/c;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/h/c;->a(Lcom/beizi/ad/v2/h/c;Z)Z

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/beizi/ad/v2/h/c$2;->b:Lcom/beizi/ad/v2/h/c;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/beizi/ad/v2/h/c;->g(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/internal/a/b;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c$2$1;->a:Lcom/beizi/ad/v2/h/c$2;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/beizi/ad/v2/h/c$2;->a:Landroid/view/View;

    .line 68
    .line 69
    new-instance v1, Lcom/beizi/ad/v2/h/c$2$1$1;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/h/c$2$1$1;-><init>(Lcom/beizi/ad/v2/h/c$2$1;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method
