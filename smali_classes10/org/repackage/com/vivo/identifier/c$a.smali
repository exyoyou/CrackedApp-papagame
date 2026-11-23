.class Lorg/repackage/com/vivo/identifier/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/repackage/com/vivo/identifier/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/repackage/com/vivo/identifier/c;


# direct methods
.method constructor <init>(Lorg/repackage/com/vivo/identifier/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/repackage/com/vivo/identifier/c$a;->b:Lorg/repackage/com/vivo/identifier/c;

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
    .locals 7

    .line 1
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->V()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->X()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->Y()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->Z()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->a0()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->b0()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->c0()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v1, v2

    .line 34
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->Z()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v1, v2

    .line 39
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->d0()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->e0()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v2, v3

    .line 48
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->f0()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/2addr v2, v3

    .line 53
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->g0()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    add-int/2addr v2, v3

    .line 58
    add-int/2addr v0, v1

    .line 59
    add-int/2addr v0, v2

    .line 60
    if-lez v0, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    new-array v0, v0, [Landroid/content/ContentValues;

    .line 64
    .line 65
    new-instance v1, Landroid/content/ContentValues;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lorg/repackage/com/vivo/identifier/c$a;->b:Lorg/repackage/com/vivo/identifier/c;

    .line 71
    .line 72
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->V()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->X()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->Y()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->h0()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-static {v2, v3, v4, v5, v6}, Lorg/repackage/com/vivo/identifier/c;->j(Lorg/repackage/com/vivo/identifier/c;IIII)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "oaid"

    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lorg/repackage/com/vivo/identifier/c$a;->b:Lorg/repackage/com/vivo/identifier/c;

    .line 98
    .line 99
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->a0()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->b0()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->c0()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->Z()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-static {v2, v3, v4, v5, v6}, Lorg/repackage/com/vivo/identifier/c;->j(Lorg/repackage/com/vivo/identifier/c;IIII)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "vaid"

    .line 120
    .line 121
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lorg/repackage/com/vivo/identifier/c$a;->b:Lorg/repackage/com/vivo/identifier/c;

    .line 125
    .line 126
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->d0()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->e0()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->f0()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->g0()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-static {v2, v3, v4, v5, v6}, Lorg/repackage/com/vivo/identifier/c;->j(Lorg/repackage/com/vivo/identifier/c;IIII)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "aaid"

    .line 147
    .line 148
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    aput-object v1, v0, v2

    .line 153
    .line 154
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->i0()Lorg/repackage/com/vivo/identifier/b;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const/4 v3, 0x7

    .line 159
    const-string v4, "vivo"

    .line 160
    .line 161
    invoke-virtual {v1, v3, v4, v0}, Lorg/repackage/com/vivo/identifier/b;->c(ILjava/lang/String;[Landroid/content/ContentValues;)Z

    .line 162
    .line 163
    .line 164
    invoke-static {v2}, Lorg/repackage/com/vivo/identifier/c;->I(I)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->E(I)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->A(I)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->v(I)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->p(I)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->f(I)I

    .line 185
    .line 186
    .line 187
    invoke-static {v2}, Lorg/repackage/com/vivo/identifier/c;->W(I)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->T(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->R(I)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->P(I)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->N(I)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->L(I)I

    .line 208
    .line 209
    .line 210
    :cond_0
    return-void
.end method
