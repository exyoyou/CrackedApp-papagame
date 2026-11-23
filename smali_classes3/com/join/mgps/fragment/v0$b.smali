.class Lcom/join/mgps/fragment/v0$b;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/v0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/v0;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v0$b;->e:Lcom/join/mgps/fragment/v0;

    .line 2
    .line 3
    const p1, 0x7f0d03fe

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/v0$b;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected r(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;)V
    .locals 8
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v2, 0x7f0a18c3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x2

    .line 24
    if-gt v3, v5, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    :goto_0
    const v6, 0x7f0a09ec

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v6, v3}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-le v3, v5, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    :cond_1
    invoke-virtual {v0, v2, v4}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getNickname()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const v3, 0x7f0a18ad

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getCost_coin()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-string v4, ""

    .line 68
    .line 69
    if-lez v3, :cond_2

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getCost_coin()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v7, "\u5e01 "

    .line 84
    .line 85
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-object v3, v4

    .line 94
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getUse_time()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const v3, 0x7f0a18da

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getRole()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getRole_rank()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-lez v2, :cond_3

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v3, "\u7b2c"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getRole_rank()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getRole()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    :cond_3
    const v2, 0x7f0a1872

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;->getAvatar()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const v2, 0x7f0a0134

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 175
    .line 176
    invoke-static {v0, p2, v2}, Lcom/join/mgps/Util/UtilsMy;->M3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    const v0, 0x7f0a0135

    .line 184
    .line 185
    .line 186
    if-nez p2, :cond_4

    .line 187
    .line 188
    const p2, 0x7f0808b1

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const p2, 0x7f081199

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-ne p2, v1, :cond_5

    .line 207
    .line 208
    const p2, 0x7f0808b2

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    const p2, 0x7f08119a    # 1.808664E38f

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-ne p2, v5, :cond_6

    .line 227
    .line 228
    const p2, 0x7f0808b3

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v6, p2}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const p2, 0x7f08119b

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_6
    const p2, 0x7f0604e5

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 246
    .line 247
    .line 248
    :goto_2
    return-void
.end method
