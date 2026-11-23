.class Lcom/beizi/fusion/tool/an$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/an;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/an;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/an;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

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
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->e(Lcom/beizi/fusion/tool/an;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->f(Lcom/beizi/fusion/tool/an;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->g(Lcom/beizi/fusion/tool/an;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 17
    .line 18
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 24
    .line 25
    .line 26
    const-string v0, "all"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/beizi/fusion/tool/an;->h(Lcom/beizi/fusion/tool/an;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x2

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->k(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-array v3, v3, [Landroid/animation/Animator;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 52
    .line 53
    invoke-static {v4}, Lcom/beizi/fusion/tool/an;->i(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    aput-object v4, v3, v2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/beizi/fusion/tool/an;->j(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    aput-object v2, v3, v1

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->k(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v4, 0x3

    .line 78
    new-array v4, v4, [Landroid/animation/Animator;

    .line 79
    .line 80
    iget-object v5, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 81
    .line 82
    invoke-static {v5}, Lcom/beizi/fusion/tool/an;->l(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    aput-object v5, v4, v2

    .line 87
    .line 88
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/beizi/fusion/tool/an;->i(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    aput-object v2, v4, v1

    .line 95
    .line 96
    iget-object v1, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/beizi/fusion/tool/an;->j(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    aput-object v1, v4, v3

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->k(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Lcom/beizi/fusion/tool/an$2$1;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/beizi/fusion/tool/an$2$1;-><init>(Lcom/beizi/fusion/tool/an$2;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$2;->a:Lcom/beizi/fusion/tool/an;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->k(Lcom/beizi/fusion/tool/an;)Landroid/animation/AnimatorSet;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :catch_0
    return-void
.end method
