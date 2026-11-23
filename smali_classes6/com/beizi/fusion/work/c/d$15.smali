.class Lcom/beizi/fusion/work/c/d$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/tool/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/ad/e;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/beizi/ad/e;

.field final synthetic d:Lcom/beizi/fusion/work/c/d;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/d;IILcom/beizi/ad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/work/c/d$15;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/beizi/fusion/work/c/d$15;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/beizi/fusion/work/c/d$15;->c:Lcom/beizi/ad/e;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->r(Lcom/beizi/fusion/work/c/d;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/beizi/fusion/tool/aw;->a(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->O(Lcom/beizi/fusion/work/c/d;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/c/d;->b(Lcom/beizi/fusion/work/c/d;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/c/d;->c(Lcom/beizi/fusion/work/c/d;Z)Z

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    new-array v2, v0, [I

    .line 35
    .line 36
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->r(Lcom/beizi/fusion/work/c/d;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lcom/beizi/fusion/work/c/d$15;->a:I

    .line 46
    .line 47
    div-int/2addr v3, v0

    .line 48
    iget v4, p0, Lcom/beizi/fusion/work/c/d$15;->b:I

    .line 49
    .line 50
    div-int/2addr v4, v0

    .line 51
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$15;->c:Lcom/beizi/ad/e;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->r(Lcom/beizi/fusion/work/c/d;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    iget-object v5, p0, Lcom/beizi/fusion/work/c/d$15;->c:Lcom/beizi/ad/e;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->r(Lcom/beizi/fusion/work/c/d;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    aget v3, v0, v4

    .line 77
    .line 78
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    aget v3, v0, v1

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    aget v3, v0, v4

    .line 89
    .line 90
    aget v9, v2, v4

    .line 91
    .line 92
    add-int/2addr v3, v9

    .line 93
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    aget v0, v0, v1

    .line 98
    .line 99
    aget v1, v2, v1

    .line 100
    .line 101
    add-int/2addr v0, v1

    .line 102
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const/4 v11, 0x2

    .line 107
    new-instance v12, Lcom/beizi/fusion/work/c/d$15$1;

    .line 108
    .line 109
    invoke-direct {v12, p0}, Lcom/beizi/fusion/work/c/d$15$1;-><init>(Lcom/beizi/fusion/work/c/d$15;)V

    .line 110
    .line 111
    .line 112
    invoke-interface/range {v5 .. v12}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->P(Lcom/beizi/fusion/work/c/d;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->Q(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 132
    .line 133
    invoke-static {v0, v4}, Lcom/beizi/fusion/work/c/d;->d(Lcom/beizi/fusion/work/c/d;Z)Z

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->q(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/tool/ad;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->Q(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->h(Lcom/beizi/fusion/work/c/d;)Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->R(Lcom/beizi/fusion/work/c/d;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/beizi/fusion/tool/ap;->a()Lcom/beizi/fusion/tool/ap;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$15;->d:Lcom/beizi/fusion/work/c/d;

    .line 179
    .line 180
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->R(Lcom/beizi/fusion/work/c/d;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v2

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/ap;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_0
    return-void
.end method
