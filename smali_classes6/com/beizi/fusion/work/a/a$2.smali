.class Lcom/beizi/fusion/work/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/work/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/a/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->N(Lcom/beizi/fusion/work/a/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->O(Lcom/beizi/fusion/work/a/a;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_8

    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->H(Lcom/beizi/fusion/work/a/a;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/beizi/fusion/work/a/a;->P(Lcom/beizi/fusion/work/a/a;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    sub-long/2addr v0, v2

    .line 39
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/beizi/fusion/work/a/a;->Q(Lcom/beizi/fusion/work/a/a;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    cmp-long v4, v0, v2

    .line 46
    .line 47
    if-gez v4, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/beizi/fusion/work/a/a;->R(Lcom/beizi/fusion/work/a/a;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    sub-long/2addr v0, v2

    .line 61
    const-wide/16 v2, 0x32

    .line 62
    .line 63
    cmp-long v4, v0, v2

    .line 64
    .line 65
    if-gez v4, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/a/a;->b(Lcom/beizi/fusion/work/a/a;J)J

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-wide v1, 0x3fe999999999999aL    # 0.8

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/aw;->a(Landroid/view/View;D)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    const/4 v0, 0x2

    .line 96
    new-array v0, v0, [I

    .line 97
    .line 98
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    .line 114
    .line 115
    :cond_5
    const/4 v1, 0x1

    .line 116
    aget v2, v0, v1

    .line 117
    .line 118
    if-lez v2, :cond_6

    .line 119
    .line 120
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/beizi/fusion/work/a/a;->S(Lcom/beizi/fusion/work/a/a;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_6

    .line 127
    .line 128
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 129
    .line 130
    aget v3, v0, v1

    .line 131
    .line 132
    invoke-static {v2, v3}, Lcom/beizi/fusion/work/a/a;->e(Lcom/beizi/fusion/work/a/a;I)I

    .line 133
    .line 134
    .line 135
    :cond_6
    const-string v2, "BeiZis"

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v4, "mOnScrollChangedListener mAdSlideScrollDistance:"

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 148
    .line 149
    invoke-static {v4}, Lcom/beizi/fusion/work/a/a;->S(Lcom/beizi/fusion/work/a/a;)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v4, ";mAdSlideClickDistance:"

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v4, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 162
    .line 163
    invoke-static {v4}, Lcom/beizi/fusion/work/a/a;->T(Lcom/beizi/fusion/work/a/a;)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v4, ";screenLocation[1]:"

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    aget v4, v0, v1

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 188
    .line 189
    invoke-static {v2}, Lcom/beizi/fusion/work/a/a;->S(Lcom/beizi/fusion/work/a/a;)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    aget v0, v0, v1

    .line 194
    .line 195
    sub-int/2addr v2, v0

    .line 196
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 201
    .line 202
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->T(Lcom/beizi/fusion/work/a/a;)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-ge v0, v1, :cond_7

    .line 207
    .line 208
    return-void

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a$2;->a:Lcom/beizi/fusion/work/a/a;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/beizi/fusion/work/a/a;->M(Lcom/beizi/fusion/work/a/a;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const/4 v2, 0x0

    .line 216
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_8
    :goto_0
    return-void

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :goto_1
    return-void
.end method
