.class Lcom/kongzue/dialogx/util/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/f;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/f;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

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
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->a(Lcom/kongzue/dialogx/util/f;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/kongzue/dialogx/util/f;->c(Lcom/kongzue/dialogx/util/f;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    iget-object v2, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/kongzue/dialogx/util/f;->h(Lcom/kongzue/dialogx/util/f;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-gez v4, :cond_1

    .line 29
    .line 30
    long-to-float v0, v0

    .line 31
    iget-object v1, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kongzue/dialogx/util/f;->h(Lcom/kongzue/dialogx/util/f;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    long-to-float v1, v1

    .line 38
    div-float/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/kongzue/dialogx/util/f;->i(Lcom/kongzue/dialogx/util/f;)Landroid/view/animation/Interpolator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/kongzue/dialogx/util/f;->i(Lcom/kongzue/dialogx/util/f;)Landroid/view/animation/Interpolator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/kongzue/dialogx/util/f;->j(Lcom/kongzue/dialogx/util/f;)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/kongzue/dialogx/util/f;->k(Lcom/kongzue/dialogx/util/f;)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget-object v3, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/kongzue/dialogx/util/f;->j(Lcom/kongzue/dialogx/util/f;)F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    sub-float/2addr v2, v3

    .line 76
    mul-float v0, v0, v2

    .line 77
    .line 78
    add-float/2addr v1, v0

    .line 79
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->l(Lcom/kongzue/dialogx/util/f;)Lcom/kongzue/dialogx/util/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->m(Lcom/kongzue/dialogx/util/f;)Landroid/os/Handler;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v2, Lcom/kongzue/dialogx/util/f$a$a;

    .line 94
    .line 95
    invoke-direct {v2, p0, v1}, Lcom/kongzue/dialogx/util/f$a$a;-><init>(Lcom/kongzue/dialogx/util/f$a;F)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/f;->b(Lcom/kongzue/dialogx/util/f;Z)Z

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->n(Lcom/kongzue/dialogx/util/f;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->o(Lcom/kongzue/dialogx/util/f;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v1, -0x1

    .line 120
    if-eq v0, v1, :cond_2

    .line 121
    .line 122
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->d(Lcom/kongzue/dialogx/util/f;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget-object v1, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 129
    .line 130
    invoke-static {v1}, Lcom/kongzue/dialogx/util/f;->o(Lcom/kongzue/dialogx/util/f;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-ge v0, v1, :cond_3

    .line 135
    .line 136
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->e(Lcom/kongzue/dialogx/util/f;)I

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v1

    .line 147
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/util/f;->f(Lcom/kongzue/dialogx/util/f;J)J

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/f;->b(Lcom/kongzue/dialogx/util/f;Z)Z

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/f$a;->b:Lcom/kongzue/dialogx/util/f;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/kongzue/dialogx/util/f;->g(Lcom/kongzue/dialogx/util/f;)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    int-to-long v0, v0

    .line 163
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_4
    return-void
.end method
