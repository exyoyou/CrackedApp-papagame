.class Lcom/beizi/ad/v2/g/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/g/b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/g/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/v2/g/b;->a(Lcom/beizi/ad/v2/g/b;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/beizi/ad/v2/g/b;->C()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/ad/v2/g/b;->b(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/d/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/ad/v2/g/b;->e(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/d/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/beizi/ad/v2/g/b;->c(Lcom/beizi/ad/v2/g/b;)Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/beizi/ad/v2/g/b;->d(Lcom/beizi/ad/v2/g/b;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/beizi/ad/v2/g/b;->f(Lcom/beizi/ad/v2/g/b;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/g/b;->a(Lcom/beizi/ad/v2/g/b;Z)Z

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/beizi/ad/v2/g/b;->g(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/internal/a/b;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/beizi/ad/v2/g/b;->h(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/beizi/ad/v2/g/b;->h(Lcom/beizi/ad/v2/g/b;)Lcom/beizi/ad/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/beizi/ad/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    iget-object v0, p0, Lcom/beizi/ad/v2/g/b$1;->a:Lcom/beizi/ad/v2/g/b;

    .line 86
    .line 87
    const/16 v1, 0xb

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/g/b;->b(I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    return-void
.end method
