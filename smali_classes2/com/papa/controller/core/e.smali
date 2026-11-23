.class public Lcom/papa/controller/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/papa/controller/component/bluetooth/spp/a;

.field private e:Lcom/papa/controller/core/PadInfo;

.field private f:Lcom/papa/controller/core/c;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa/controller/core/e;->h:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/papa/controller/core/e;->i:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/papa/controller/core/e;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/papa/controller/core/e;->c:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/a;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 23
    .line 24
    new-instance p1, Lcom/papa/controller/core/PadInfo;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/papa/controller/core/PadInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Lcom/papa/controller/core/PadInfo;->i0(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/papa/controller/core/PadInfo;->f0(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/papa/controller/core/e;->D()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private A(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/b;->k()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 6
    .line 7
    invoke-static {p1}, Lu7/a;->a([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Lcom/papa/controller/core/PadInfo;->a0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private B(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/a;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    and-int/lit8 v1, v1, 0xf

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    shr-int/lit8 v0, v0, 0x4

    .line 21
    .line 22
    and-int/lit16 v0, v0, 0xff

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "."

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->n()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->o()[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->m()[B

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->k()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x1

    .line 62
    if-ne v4, v6, :cond_0

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v4, 0x0

    .line 67
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/c;->l()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-ne p2, v6, :cond_1

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    :cond_1
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->i0(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 80
    .line 81
    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->l0(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 85
    .line 86
    invoke-static {v2}, Lu7/a;->a([B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->p0(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 94
    .line 95
    invoke-static {v3}, Lu7/a;->a([B)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p2, v1}, Lcom/papa/controller/core/PadInfo;->k0(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Lcom/papa/controller/core/PadInfo;->r0(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lcom/papa/controller/core/PadInfo;->f0(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 113
    .line 114
    invoke-virtual {p1, v4}, Lcom/papa/controller/core/PadInfo;->b0(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 118
    .line 119
    invoke-virtual {p1, v5}, Lcom/papa/controller/core/PadInfo;->c0(Z)V

    .line 120
    .line 121
    .line 122
    iput-boolean v6, p0, Lcom/papa/controller/core/e;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-void
.end method

.method private C(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->k()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->l()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p2}, Lcom/papa/controller/core/hardware/f;->m()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-ne p2, v2, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_1
    iget-object p2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/papa/controller/core/PadInfo;->V(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/papa/controller/core/PadInfo;->m0(Z)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/papa/controller/core/PadInfo;->s0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/papa/controller/core/e$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/papa/controller/core/e$a;-><init>(Lcom/papa/controller/core/e;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->V(Lcom/papa/controller/component/bluetooth/spp/a$g;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 15
    .line 16
    new-instance v1, Lcom/papa/controller/core/e$b;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/papa/controller/core/e$b;-><init>(Lcom/papa/controller/core/e;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->T(Lcom/papa/controller/component/bluetooth/spp/a$f;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 25
    .line 26
    new-instance v1, Lcom/papa/controller/core/e$c;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/papa/controller/core/e$c;-><init>(Lcom/papa/controller/core/e;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/Thread;

    .line 6
    .line 7
    new-instance v3, Lcom/papa/controller/core/e$d;

    .line 8
    .line 9
    invoke-direct {v3, p0, v0, v1}, Lcom/papa/controller/core/e$d;-><init>(Lcom/papa/controller/core/e;J)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/papa/controller/core/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/core/e;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/core/e;->w(Ljava/lang/String;[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/papa/controller/core/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/e;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/papa/controller/core/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/e;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/papa/controller/core/e;)Lcom/papa/controller/component/bluetooth/spp/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/papa/controller/core/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/e;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/papa/controller/core/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/e;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/papa/controller/core/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/e;->j:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/papa/controller/core/e;)Lcom/papa/controller/core/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/core/e;->r()Lcom/papa/controller/core/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private m(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iput-object p1, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->L()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x3

    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/core/e;->I()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/papa/controller/core/e;->J()V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x3

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->J()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x2

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->C()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private p(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/core/PadInfo;->a(Lcom/papa/controller/core/c;Lcom/papa/controller/core/hardware/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private r()Lcom/papa/controller/core/b;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->B()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/papa/controller/core/PadInfo;->J()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/papa/controller/core/PadInfo;->Q()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/papa/controller/core/PadInfo;->E()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/papa/controller/core/PadInfo;->O()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v5, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/papa/controller/core/PadInfo;->L()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-object v6, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/papa/controller/core/PadInfo;->f()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    move-object v7, v3

    .line 50
    move-object v8, v4

    .line 51
    move-object v9, v5

    .line 52
    move-object v10, v6

    .line 53
    move-object v4, v0

    .line 54
    move-object v5, v1

    .line 55
    move-object v6, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v2, ""

    .line 58
    .line 59
    move-object v5, v0

    .line 60
    move-object v7, v1

    .line 61
    move-object v4, v2

    .line 62
    move-object v6, v4

    .line 63
    move-object v8, v6

    .line 64
    move-object v9, v8

    .line 65
    move-object v10, v9

    .line 66
    :goto_0
    new-instance v0, Lcom/papa/controller/core/b;

    .line 67
    .line 68
    move-object v3, v0

    .line 69
    invoke-direct/range {v3 .. v10}, Lcom/papa/controller/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/papa/controller/core/hardware/c;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/papa/controller/core/hardware/c;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/papa/controller/core/hardware/c;->a()[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 20
    .line 21
    new-instance v1, Lcom/papa/controller/core/hardware/f;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/papa/controller/core/hardware/f;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/papa/controller/core/hardware/f;->a()[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 34
    .line 35
    new-instance v1, Lcom/papa/controller/core/hardware/b;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/papa/controller/core/hardware/b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/papa/controller/core/hardware/b;->a()[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private w(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/controller/core/hardware/a;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/a;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/papa/controller/core/hardware/a;->getType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x14

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0xf6

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/papa/controller/core/hardware/c;

    .line 26
    .line 27
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/c;-><init>([B)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->B(Ljava/lang/String;Lcom/papa/controller/core/hardware/c;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/papa/controller/core/hardware/b;

    .line 35
    .line 36
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/b;-><init>([B)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->A(Ljava/lang/String;Lcom/papa/controller/core/hardware/b;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lcom/papa/controller/core/hardware/f;

    .line 44
    .line 45
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/f;-><init>([B)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->C(Ljava/lang/String;Lcom/papa/controller/core/hardware/f;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lcom/papa/controller/core/hardware/d;

    .line 53
    .line 54
    invoke-direct {v0, p2}, Lcom/papa/controller/core/hardware/d;-><init>([B)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, v0}, Lcom/papa/controller/core/e;->p(Ljava/lang/String;Lcom/papa/controller/core/hardware/d;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method


# virtual methods
.method public E(Lcom/papa/controller/core/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    return-void
.end method

.method public F(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/e;->j:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/e;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public H(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->O()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 13
    .line 14
    new-instance v1, Lcom/papa/controller/core/hardware/g;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/papa/controller/core/hardware/g;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, p2}, Lcom/papa/controller/core/hardware/g;->k(II)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public I()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->M()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->O()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->W()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 33
    .line 34
    const-string v1, "Bluetooth is not enable!"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/papa/controller/core/e;->m(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/papa/controller/core/e;->o(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lcom/papa/controller/core/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->f:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lcom/papa/controller/component/bluetooth/spp/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Lcom/papa/controller/core/PadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->e:Lcom/papa/controller/core/PadInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/e;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/core/e;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/e;->d:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/papa/controller/core/hardware/e;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/papa/controller/core/hardware/e;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/papa/controller/core/hardware/e;->k(I)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->Q([BZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
