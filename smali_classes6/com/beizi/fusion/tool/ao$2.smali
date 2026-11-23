.class Lcom/beizi/fusion/tool/ao$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/ao;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/ao;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/ao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

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
    const-string v0, "all"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/beizi/fusion/tool/ao;->e(Lcom/beizi/fusion/tool/ao;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->f(Lcom/beizi/fusion/tool/ao;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->g(Lcom/beizi/fusion/tool/ao;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->h(Lcom/beizi/fusion/tool/ao;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->i(Lcom/beizi/fusion/tool/ao;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->j(Lcom/beizi/fusion/tool/ao;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 42
    .line 43
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/tool/ao;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 49
    .line 50
    .line 51
    const-string v0, "down"

    .line 52
    .line 53
    iget-object v1, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/beizi/fusion/tool/ao;->e(Lcom/beizi/fusion/tool/ao;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x2

    .line 64
    const/4 v2, 0x1

    .line 65
    const/4 v3, 0x0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    const-string v0, "up"

    .line 69
    .line 70
    iget-object v4, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 71
    .line 72
    invoke-static {v4}, Lcom/beizi/fusion/tool/ao;->e(Lcom/beizi/fusion/tool/ao;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->o(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-array v1, v1, [Landroid/animation/Animator;

    .line 90
    .line 91
    iget-object v4, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 92
    .line 93
    invoke-static {v4}, Lcom/beizi/fusion/tool/ao;->k(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    aput-object v4, v1, v3

    .line 98
    .line 99
    iget-object v3, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 100
    .line 101
    invoke-static {v3}, Lcom/beizi/fusion/tool/ao;->n(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    aput-object v3, v1, v2

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->o(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v4, 0x4

    .line 118
    new-array v4, v4, [Landroid/animation/Animator;

    .line 119
    .line 120
    iget-object v5, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 121
    .line 122
    invoke-static {v5}, Lcom/beizi/fusion/tool/ao;->k(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    aput-object v5, v4, v3

    .line 127
    .line 128
    iget-object v3, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 129
    .line 130
    invoke-static {v3}, Lcom/beizi/fusion/tool/ao;->l(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    aput-object v3, v4, v2

    .line 135
    .line 136
    iget-object v2, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 137
    .line 138
    invoke-static {v2}, Lcom/beizi/fusion/tool/ao;->m(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    aput-object v2, v4, v1

    .line 143
    .line 144
    iget-object v1, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/beizi/fusion/tool/ao;->n(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const/4 v2, 0x3

    .line 151
    aput-object v1, v4, v2

    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->o(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v1, Lcom/beizi/fusion/tool/ao$2$1;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/beizi/fusion/tool/ao$2$1;-><init>(Lcom/beizi/fusion/tool/ao$2;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$2;->a:Lcom/beizi/fusion/tool/ao;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->o(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    :catch_0
    return-void
.end method
