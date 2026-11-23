.class Lcom/beizi/fusion/work/a/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/tool/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/a/a;->a(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/beizi/fusion/work/a/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/a/a;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/work/a/a$10;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/beizi/fusion/work/a/a$10;->b:I

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
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->H(Lcom/beizi/fusion/work/a/a;)Z

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->c(Lcom/beizi/fusion/work/a/a;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/a/a;->d(Lcom/beizi/fusion/work/a/a;Z)Z

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    new-array v2, v0, [I

    .line 35
    .line 36
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lcom/beizi/fusion/work/a/a$10;->a:I

    .line 46
    .line 47
    div-int/2addr v3, v0

    .line 48
    iget v4, p0, Lcom/beizi/fusion/work/a/a$10;->b:I

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
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v4, 0x0

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 73
    .line 74
    invoke-static {v3}, Lcom/beizi/fusion/work/a/a;->h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 79
    .line 80
    invoke-static {v3}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    aget v3, v0, v4

    .line 85
    .line 86
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    aget v3, v0, v1

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    aget v3, v0, v4

    .line 97
    .line 98
    aget v9, v2, v4

    .line 99
    .line 100
    add-int/2addr v3, v9

    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    aget v0, v0, v1

    .line 106
    .line 107
    aget v1, v2, v1

    .line 108
    .line 109
    add-int/2addr v0, v1

    .line 110
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    const/4 v11, 0x2

    .line 115
    new-instance v12, Lcom/beizi/fusion/work/a/a$10$1;

    .line 116
    .line 117
    invoke-direct {v12, p0}, Lcom/beizi/fusion/work/a/a$10$1;-><init>(Lcom/beizi/fusion/work/a/a$10;)V

    .line 118
    .line 119
    .line 120
    invoke-interface/range {v5 .. v12}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->I(Lcom/beizi/fusion/work/a/a;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->J(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 140
    .line 141
    invoke-static {v0, v4}, Lcom/beizi/fusion/work/a/a;->e(Lcom/beizi/fusion/work/a/a;Z)Z

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->K(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/tool/ad;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->J(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->B(Lcom/beizi/fusion/work/a/a;)Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 166
    .line 167
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->L(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/beizi/fusion/tool/ap;->a()Lcom/beizi/fusion/tool/ap;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$10;->c:Lcom/beizi/fusion/work/a/a;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->L(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/ap;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    :cond_2
    :goto_0
    return-void
.end method
