.class public Lcom/beizi/ad/v2/c/b;
.super Lcom/beizi/ad/v2/a/b;
.source "SourceFile"


# static fields
.field public static H:Lcom/beizi/ad/v2/c/b;


# instance fields
.field private I:Lcom/beizi/ad/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/ad/internal/f;->e:Lcom/beizi/ad/internal/f;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/beizi/ad/v2/a/b;-><init>(Landroid/content/Context;Lcom/beizi/ad/internal/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private F()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->z()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->x()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->y()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    move-object v3, v2

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    const/4 v4, 0x3

    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Lcom/beizi/ad/a;->a(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/beizi/ad/a;->a()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void

    .line 56
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lcom/beizi/ad/a;->a(I)V

    .line 67
    .line 68
    .line 69
    :cond_5
    return-void

    .line 70
    :cond_6
    invoke-static {}, Lcom/beizi/ad/internal/e/s;->a()Lcom/beizi/ad/internal/e/s;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/beizi/ad/v2/a/b;->a:Landroid/content/Context;

    .line 75
    .line 76
    new-instance v4, Lcom/beizi/ad/v2/c/b$1;

    .line 77
    .line 78
    invoke-direct {v4, p0}, Lcom/beizi/ad/v2/c/b$1;-><init>(Lcom/beizi/ad/v2/c/b;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/beizi/ad/internal/e/s;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/beizi/ad/internal/e/s$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/c/b;)Lcom/beizi/ad/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/ad/v2/c/b;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/beizi/ad/v2/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/c/b;->F()V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->u:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->r:Lcom/beizi/ad/internal/a/b;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/beizi/ad/a;->b()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->d(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/ad/a;->c()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/a;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BeiZisAd"

    const-string v1, "showInterstitial"

    .line 4
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sput-object p0, Lcom/beizi/ad/v2/c/b;->H:Lcom/beizi/ad/v2/c/b;

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/beizi/ad/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    return-void
.end method

.method public a(Lcom/beizi/ad/internal/d/a;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->c(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->B()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/ad/v2/a/b;->a(Z)V

    .line 11
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Lcom/beizi/ad/v2/c/b$3;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/c/b$3;-><init>(Lcom/beizi/ad/v2/c/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/beizi/ad/v2/c/b$2;

    invoke-direct {v1, p0, p1}, Lcom/beizi/ad/v2/c/b$2;-><init>(Lcom/beizi/ad/v2/c/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b;->I:Lcom/beizi/ad/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/beizi/ad/a;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/beizi/ad/v2/a/b;->q()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/beizi/ad/v2/c/b;->H:Lcom/beizi/ad/v2/c/b;

    .line 6
    .line 7
    return-void
.end method
