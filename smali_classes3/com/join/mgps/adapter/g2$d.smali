.class public Lcom/join/mgps/adapter/g2$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public j:Lcom/join/mgps/customview/CountDownerTextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/view/View;

.field public o:Lcom/join/mgps/customview/VipView;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field r:[Lcom/join/mgps/adapter/g2$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "convertView"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/g2$d;->b(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemView",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput p2, p0, Lcom/join/mgps/adapter/g2$d;->e:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/g2$d;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view1",
            "p",
            "nickname1",
            "divider1",
            "pos"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0134

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    const v1, 0x7f0a1938

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/ImageView;

    .line 18
    .line 19
    const v2, 0x7f0a0a85

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/ImageView;

    .line 27
    .line 28
    const v3, 0x7f0a1258

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/ImageView;

    .line 36
    .line 37
    const v4, 0x7f0a11d1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    const v5, 0x7f0a1bb5

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/join/mgps/customview/VipView;

    .line 54
    .line 55
    const v6, 0x7f0a09eb

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Landroid/widget/ImageView;

    .line 63
    .line 64
    const v7, 0x7f0a0213

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    new-instance v8, Lcom/join/mgps/adapter/g2$c;

    .line 72
    .line 73
    invoke-direct {v8}, Lcom/join/mgps/adapter/g2$c;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, v8, Lcom/join/mgps/adapter/g2$c;->a:Landroid/view/View;

    .line 77
    .line 78
    iput-object v4, v8, Lcom/join/mgps/adapter/g2$c;->c:Landroid/view/View;

    .line 79
    .line 80
    iput-object p2, v8, Lcom/join/mgps/adapter/g2$c;->b:Landroid/view/View;

    .line 81
    .line 82
    iput-object v0, v8, Lcom/join/mgps/adapter/g2$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    iput-object v1, v8, Lcom/join/mgps/adapter/g2$c;->f:Landroid/widget/ImageView;

    .line 85
    .line 86
    iput-object v2, v8, Lcom/join/mgps/adapter/g2$c;->h:Landroid/widget/ImageView;

    .line 87
    .line 88
    iput-object p3, v8, Lcom/join/mgps/adapter/g2$c;->e:Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object v3, v8, Lcom/join/mgps/adapter/g2$c;->i:Landroid/widget/ImageView;

    .line 91
    .line 92
    iput-object p4, v8, Lcom/join/mgps/adapter/g2$c;->d:Landroid/view/View;

    .line 93
    .line 94
    iput-object v5, v8, Lcom/join/mgps/adapter/g2$c;->j:Lcom/join/mgps/customview/VipView;

    .line 95
    .line 96
    iput-object v6, v8, Lcom/join/mgps/adapter/g2$c;->k:Landroid/widget/ImageView;

    .line 97
    .line 98
    iput-object v7, v8, Lcom/join/mgps/adapter/g2$c;->l:Landroid/view/View;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/adapter/g2$d;->r:[Lcom/join/mgps/adapter/g2$c;

    .line 101
    .line 102
    aput-object v8, p1, p5

    .line 103
    .line 104
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "convertView"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const v0, 0x7f0a196c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->f:Landroid/widget/TextView;

    .line 15
    .line 16
    const v0, 0x7f0a0a56

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->g:Landroid/widget/ImageView;

    .line 26
    .line 27
    const v0, 0x7f0a0a99

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->h:Landroid/widget/ImageView;

    .line 37
    .line 38
    const v0, 0x7f0a198c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->i:Landroid/widget/TextView;

    .line 48
    .line 49
    const v0, 0x7f0a198d

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->l:Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a1975

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/mgps/customview/CountDownerTextView;

    .line 68
    .line 69
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->j:Lcom/join/mgps/customview/CountDownerTextView;

    .line 70
    .line 71
    const v0, 0x7f0a1a69

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->k:Landroid/widget/TextView;

    .line 81
    .line 82
    const v0, 0x7f0a186a

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->m:Landroid/widget/TextView;

    .line 92
    .line 93
    const v0, 0x7f0a1bda

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->n:Landroid/view/View;

    .line 101
    .line 102
    const v0, 0x7f0a1bb5

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 110
    .line 111
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->o:Lcom/join/mgps/customview/VipView;

    .line 112
    .line 113
    const v0, 0x7f0a112f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v3, v0

    .line 121
    check-cast v3, Landroid/widget/TextView;

    .line 122
    .line 123
    const v0, 0x7f0a1130

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    move-object v8, v0

    .line 131
    check-cast v8, Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a1131

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    move-object v9, v0

    .line 141
    check-cast v9, Landroid/widget/TextView;

    .line 142
    .line 143
    const v0, 0x7f0a1132

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    move-object v10, v0

    .line 151
    check-cast v10, Landroid/widget/TextView;

    .line 152
    .line 153
    const v0, 0x7f0a0eb7

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const v0, 0x7f0a0eb8

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    const v0, 0x7f0a0eb9

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    const v0, 0x7f0a0eba

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    const v0, 0x7f0a11cc

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const v0, 0x7f0a11ce

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    const v0, 0x7f0a11cf

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    const v0, 0x7f0a11d0

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    const v0, 0x7f0a1841

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->p:Landroid/view/View;

    .line 217
    .line 218
    const v0, 0x7f0a1842

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->q:Landroid/view/View;

    .line 226
    .line 227
    const/4 v0, 0x4

    .line 228
    new-array v0, v0, [Lcom/join/mgps/adapter/g2$c;

    .line 229
    .line 230
    iput-object v0, v6, Lcom/join/mgps/adapter/g2$d;->r:[Lcom/join/mgps/adapter/g2$c;

    .line 231
    .line 232
    new-instance v4, Landroid/view/View;

    .line 233
    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    const/4 v5, 0x0

    .line 242
    move-object/from16 v0, p0

    .line 243
    .line 244
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/adapter/g2$d;->a(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;I)V

    .line 245
    .line 246
    .line 247
    const/4 v4, 0x0

    .line 248
    const/4 v5, 0x1

    .line 249
    move-object v1, v11

    .line 250
    move-object v2, v14

    .line 251
    move-object v3, v8

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/adapter/g2$d;->a(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;I)V

    .line 253
    .line 254
    .line 255
    const/4 v5, 0x2

    .line 256
    move-object v1, v12

    .line 257
    move-object v2, v15

    .line 258
    move-object v3, v9

    .line 259
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/adapter/g2$d;->a(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;I)V

    .line 260
    .line 261
    .line 262
    const/4 v5, 0x3

    .line 263
    move-object v1, v13

    .line 264
    move-object/from16 v2, v16

    .line 265
    .line 266
    move-object v3, v10

    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/adapter/g2$d;->a(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method
