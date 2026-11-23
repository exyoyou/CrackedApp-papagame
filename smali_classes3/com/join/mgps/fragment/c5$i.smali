.class Lcom/join/mgps/fragment/c5$i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/c5$i$a;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/fragment/c5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/c5;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/c5$i;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/c5;->v:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/c5;->v:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    const-string p3, ""

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lcom/join/mgps/fragment/c5$i$a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c5$i$a;-><init>(Lcom/join/mgps/fragment/c5$i;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/c5$i;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f0d00d4

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const v1, 0x7f0a0440

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/join/mgps/customview/ClouldItemView2;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->a:Lcom/join/mgps/customview/ClouldItemView2;

    .line 34
    .line 35
    const v1, 0x7f0a0f34

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->b:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    const v1, 0x7f0a1a4d

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->c:Landroid/widget/TextView;

    .line 56
    .line 57
    const v1, 0x7f0a1a71

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->d:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/join/mgps/fragment/c5$i$a;

    .line 77
    .line 78
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->a:Lcom/join/mgps/customview/ClouldItemView2;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/ClouldItemView2;->setCloudItemListener(Lw6/c;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/join/mgps/fragment/c5;->v:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    if-ne v1, p1, :cond_1

    .line 96
    .line 97
    iget-object v2, v0, Lcom/join/mgps/fragment/c5$i$a;->a:Lcom/join/mgps/customview/ClouldItemView2;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 100
    .line 101
    iget-object v3, v1, Lcom/join/mgps/fragment/c5;->r:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/join/mgps/fragment/c5;->v:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    move-object v4, v1

    .line 110
    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    .line 111
    .line 112
    iget-object v9, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 113
    .line 114
    iget v5, v9, Lcom/join/mgps/fragment/c5;->q:I

    .line 115
    .line 116
    iget v6, v9, Lcom/join/mgps/fragment/c5;->p:I

    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    const/4 v8, 0x1

    .line 120
    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/customview/ClouldItemView2;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->a:Lcom/join/mgps/customview/ClouldItemView2;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 127
    .line 128
    iget-object v3, v2, Lcom/join/mgps/fragment/c5;->r:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v2, v2, Lcom/join/mgps/fragment/c5;->v:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move-object v4, v2

    .line 137
    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    .line 138
    .line 139
    iget-object v8, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 140
    .line 141
    iget v5, v8, Lcom/join/mgps/fragment/c5;->q:I

    .line 142
    .line 143
    iget v6, v8, Lcom/join/mgps/fragment/c5;->p:I

    .line 144
    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v9, 0x0

    .line 147
    move-object v2, v3

    .line 148
    move-object v3, v4

    .line 149
    move v4, v5

    .line 150
    move v5, v6

    .line 151
    move v6, v7

    .line 152
    move v7, v9

    .line 153
    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/customview/ClouldItemView2;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->a:Lcom/join/mgps/customview/ClouldItemView2;

    .line 157
    .line 158
    iget-object v2, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/join/mgps/fragment/c5;->y:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 161
    .line 162
    iget-boolean v2, v2, Lcom/join/mgps/activity/DocumentManageActivity;->isVBA:Z

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/ClouldItemView2;->setGBAType(Z)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->a:Lcom/join/mgps/customview/ClouldItemView2;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 170
    .line 171
    iget-object v2, v2, Lcom/join/mgps/fragment/c5;->y:Lcom/join/mgps/activity/DocumentManageActivity;

    .line 172
    .line 173
    iget-boolean v3, v2, Lcom/join/mgps/activity/DocumentManageActivity;->marcketDownEnable:Z

    .line 174
    .line 175
    iget-boolean v2, v2, Lcom/join/mgps/activity/DocumentManageActivity;->marcketPGNEnable:Z

    .line 176
    .line 177
    invoke-virtual {v1, v3, v2}, Lcom/join/mgps/customview/ClouldItemView2;->setPGN(ZZ)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 181
    .line 182
    iget v1, v1, Lcom/join/mgps/fragment/c5;->p:I

    .line 183
    .line 184
    const/4 v2, 0x4

    .line 185
    if-ne v1, v2, :cond_2

    .line 186
    .line 187
    iget-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->b:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/join/mgps/fragment/c5$i$a;->c:Landroid/widget/TextView;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v3, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 201
    .line 202
    iget-object v3, v3, Lcom/join/mgps/fragment/c5;->v:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    check-cast v3, Lcom/join/mgps/dto/CloudListDataBean;

    .line 209
    .line 210
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getTodayCoin()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v0, Lcom/join/mgps/fragment/c5$i$a;->d:Landroid/widget/TextView;

    .line 228
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    iget-object v2, p0, Lcom/join/mgps/fragment/c5$i;->c:Lcom/join/mgps/fragment/c5;

    .line 235
    .line 236
    iget-object v2, v2, Lcom/join/mgps/fragment/c5;->v:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getTotalCoin()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_2
    iget-object p1, v0, Lcom/join/mgps/fragment/c5$i$a;->b:Landroid/widget/LinearLayout;

    .line 263
    .line 264
    const/16 p3, 0x8

    .line 265
    .line 266
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :catch_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 272
    .line 273
    .line 274
    :goto_2
    return-object p2
.end method
