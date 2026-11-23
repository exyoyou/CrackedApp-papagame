.class Lcom/beizi/fusion/work/d/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/tool/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/d/b;->a(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/beizi/fusion/work/d/b;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/d/b;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/work/d/b$6;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/beizi/fusion/work/d/b$6;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/fusion/tool/aw;->a(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->p(Lcom/beizi/fusion/work/d/b;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/d/b;->b(Lcom/beizi/fusion/work/d/b;Z)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/d/b;->c(Lcom/beizi/fusion/work/d/b;Z)Z

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    new-array v2, v0, [I

    .line 33
    .line 34
    iget-object v3, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39
    .line 40
    .line 41
    iget v3, p0, Lcom/beizi/fusion/work/d/b$6;->a:I

    .line 42
    .line 43
    div-int/2addr v3, v0

    .line 44
    iget v4, p0, Lcom/beizi/fusion/work/d/b$6;->b:I

    .line 45
    .line 46
    div-int/2addr v4, v0

    .line 47
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v3, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/beizi/fusion/work/d/b;->m(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/e;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    iget-object v3, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 61
    .line 62
    iget-object v5, v3, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-static {v3}, Lcom/beizi/fusion/work/d/b;->m(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/e;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-object v3, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 71
    .line 72
    iget-object v7, v3, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    aget v3, v0, v4

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    aget v3, v0, v1

    .line 81
    .line 82
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    aget v3, v0, v4

    .line 87
    .line 88
    aget v5, v2, v4

    .line 89
    .line 90
    add-int/2addr v3, v5

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    aget v0, v0, v1

    .line 96
    .line 97
    aget v1, v2, v1

    .line 98
    .line 99
    add-int/2addr v0, v1

    .line 100
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    const/4 v12, 0x2

    .line 105
    new-instance v13, Lcom/beizi/fusion/work/d/b$6$1;

    .line 106
    .line 107
    invoke-direct {v13, p0}, Lcom/beizi/fusion/work/d/b$6$1;-><init>(Lcom/beizi/fusion/work/d/b$6;)V

    .line 108
    .line 109
    .line 110
    invoke-interface/range {v6 .. v13}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->q(Lcom/beizi/fusion/work/d/b;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->r(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 130
    .line 131
    invoke-static {v0, v4}, Lcom/beizi/fusion/work/d/b;->d(Lcom/beizi/fusion/work/d/b;Z)Z

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->s(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/fusion/tool/ad;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/beizi/fusion/work/d/b;->r(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 150
    .line 151
    iget-object v1, v0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->t(Lcom/beizi/fusion/work/d/b;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v1, v0, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/beizi/fusion/tool/ap;->a()Lcom/beizi/fusion/tool/ap;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b$6;->c:Lcom/beizi/fusion/work/d/b;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/beizi/fusion/work/d/b;->t(Lcom/beizi/fusion/work/d/b;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v2

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/ap;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    :cond_2
    :goto_0
    return-void
.end method
