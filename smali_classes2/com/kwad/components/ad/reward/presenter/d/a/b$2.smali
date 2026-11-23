.class final Lcom/kwad/components/ad/reward/presenter/d/a/b$2;
.super Lcom/kwad/components/ad/reward/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/reward/presenter/d/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/e/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dd()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->d(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->fb(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->e(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->f(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->hc()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->g(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-boolean v0, v0, Lcom/kwad/components/ad/reward/g;->tb:Z

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->h(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-boolean v0, v0, Lcom/kwad/components/ad/reward/g;->th:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-static {v0, v1}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->a(Lcom/kwad/components/ad/reward/presenter/d/a/b;Z)Z

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->i(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/l/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->i(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/l/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/kwad/components/ad/l/b;->bc()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v2}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->a(Lcom/kwad/components/ad/reward/presenter/d/a/b;Z)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->j(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->k(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    xor-int/2addr v1, v2

    .line 100
    iput-boolean v1, v0, Lcom/kwad/components/ad/reward/g;->ts:Z

    .line 101
    .line 102
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->k(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->l(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sC:Lcom/kwad/components/ad/reward/j;

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->m(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->n(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-boolean v2, v0, Lcom/kwad/components/ad/reward/g;->sO:Z

    .line 135
    .line 136
    const-string v3, "end_card"

    .line 137
    .line 138
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->o(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dj(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->p(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sC:Lcom/kwad/components/ad/reward/j;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/kwad/components/ad/l/b;->getLoadTime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v7

    .line 164
    sub-long/2addr v5, v7

    .line 165
    const/4 v7, 0x1

    .line 166
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/reward/monitor/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/lang/String;Ljava/lang/String;JI)V

    .line 167
    .line 168
    .line 169
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->q(Lcom/kwad/components/ad/reward/presenter/d/a/b;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    :goto_0
    return-void
.end method

.method public final getPriority()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
