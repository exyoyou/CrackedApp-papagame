.class public Lcom/beizi/ad/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/a/a/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

.field private c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

.field private d:Lcom/beizi/ad/a/a/c$a;

.field private e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:D

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->d:Lcom/beizi/ad/a/a/c$a;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/beizi/ad/a/a/c;->h:D

    .line 14
    .line 15
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/beizi/ad/a/a/c;->j:I

    .line 19
    .line 20
    :try_start_0
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getOrderData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1, p3}, Lcom/beizi/ad/a/a/c;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;->getRegionalClickView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;->getRegionalClickView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    const-string p2, "\u70b9\u51fb\u4e0b\u8f7d\u5e94\u7528"

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    if-nez p4, :cond_1

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getTitle()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getDownloadTitle()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iput-object p2, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 74
    .line 75
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getTitleColor()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getBackgroundColor()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getBackgroundAlpha()D

    .line 102
    .line 103
    .line 104
    move-result-wide p1

    .line 105
    iput-wide p1, p0, Lcom/beizi/ad/a/a/c;->h:D

    .line 106
    .line 107
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getIsDisableClick()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/beizi/ad/a/a/c;->j:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 117
    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    if-nez p4, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getTitle()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getDownloadTitle()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    iput-object p2, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 142
    .line 143
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 150
    .line 151
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getTitleColor()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    .line 158
    .line 159
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getBackgroundColor()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    .line 166
    .line 167
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getBackgroundAlpha()D

    .line 170
    .line 171
    .line 172
    move-result-wide p1

    .line 173
    iput-wide p1, p0, Lcom/beizi/ad/a/a/c;->h:D

    .line 174
    .line 175
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getIsDisableClick()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    iput p1, p0, Lcom/beizi/ad/a/a/c;->j:I

    .line 182
    .line 183
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_7

    .line 190
    .line 191
    const-string p1, "\u70b9\u51fb\u8df3\u8f6c\u7f51\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 192
    .line 193
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    .line 194
    .line 195
    :cond_7
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    const-string p1, "#3976FF"

    .line 204
    .line 205
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    .line 206
    .line 207
    :cond_8
    iget-object p1, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_9

    .line 214
    .line 215
    const-string p1, "#FFFFFF"

    .line 216
    .line 217
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    :cond_9
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/a/a/c;)Lcom/beizi/ad/a/a/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/a/a/c;->d:Lcom/beizi/ad/a/a/c$a;

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;

    .line 73
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)[I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "RegionClickUtil"

    const-string v3, ";"

    const-string v4, "%"

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v9, 0x0

    if-eqz v0, :cond_14

    .line 1
    :try_start_0
    iget-object v10, v1, Lcom/beizi/ad/a/a/c;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    if-nez v10, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {v10}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object v10

    .line 3
    iget-object v11, v1, Lcom/beizi/ad/a/a/c;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v11}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterY()Ljava/lang/String;

    move-result-object v11

    .line 4
    iget-object v12, v1, Lcom/beizi/ad/a/a/c;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v12}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v12

    .line 5
    iget-object v13, v1, Lcom/beizi/ad/a/a/c;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getHeight()Ljava/lang/String;

    move-result-object v13

    .line 6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "0"

    if-nez v14, :cond_1

    :try_start_1
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    move-object v10, v15

    .line 7
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    move-object v11, v15

    .line 8
    :cond_4
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 9
    iget-object v14, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v14, v6}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v6

    .line 10
    iget-object v14, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14, v7}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v7

    if-gtz v6, :cond_5

    .line 11
    iget-object v6, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/beizi/ad/lance/a/q;->h(Landroid/content/Context;)I

    move-result v6

    .line 12
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position containerWidth:"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";containerHeight:"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    :cond_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 17
    :cond_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v13, "40"

    .line 18
    :cond_9
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, v6

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 20
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 23
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int v7, v7, v8

    div-int/lit8 v7, v7, 0x64

    goto :goto_1

    .line 24
    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 25
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_d
    const/4 v7, 0x0

    .line 26
    :goto_1
    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 27
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 28
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int v6, v6, v8

    div-int/lit8 v6, v6, 0x64

    goto :goto_2

    .line 29
    :cond_e
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 30
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_f
    const/4 v6, 0x0

    .line 31
    :goto_2
    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 32
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int v4, v4, v6

    div-int/lit8 v4, v4, 0x64

    goto :goto_3

    .line 33
    :cond_10
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 34
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    :cond_11
    const/16 v4, 0x28

    .line 35
    :goto_3
    iget-object v8, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v8, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v6

    .line 36
    iget-object v8, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    int-to-float v4, v4

    invoke-static {v8, v4}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    .line 37
    iget-object v8, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v8, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 38
    iget-object v8, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v8, v7}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v7

    aput v6, v5, v9

    const/4 v6, 0x1

    aput v4, v5, v6

    if-lez v0, :cond_12

    const/4 v4, 0x2

    aput v0, v5, v4

    :cond_12
    if-lez v7, :cond_13

    const/4 v0, 0x3

    aput v7, v5, v0

    .line 39
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position widthInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";heightInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerX:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerY:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 40
    :cond_14
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object v2, v1, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    aput v0, v5, v9

    const/4 v0, 0x1

    aput v2, v5, v0

    const/4 v0, 0x2

    aput v9, v5, v0

    const/4 v0, 0x3

    aput v9, v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v5
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 10

    if-eqz p1, :cond_14

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    const/16 v3, 0x11

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 9
    iget v4, p0, Lcom/beizi/ad/a/a/c;->j:I

    if-nez v4, :cond_1

    .line 10
    new-instance v4, Lcom/beizi/ad/a/a/c$1;

    invoke-direct {v4, p0}, Lcom/beizi/ad/a/a/c$1;-><init>(Lcom/beizi/ad/a/a/c;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 12
    iget-object v4, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "#FFFFFF"

    .line 14
    iput-object v4, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "#"

    if-nez v4, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    iget-object v4, p0, Lcom/beizi/ad/a/a/c;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :cond_4
    iget-object v4, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "#80000000"

    .line 18
    iput-object v4, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    .line 19
    :cond_5
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 20
    iget-object v6, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 21
    iget-object v5, p0, Lcom/beizi/ad/a/a/c;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 22
    :cond_6
    iget-wide v5, p0, Lcom/beizi/ad/a/a/c;->h:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_7

    const-wide v7, 0x406fe00000000000L    # 255.0

    mul-double v5, v5, v7

    double-to-int v5, v5

    .line 23
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 24
    :cond_7
    iget-object v5, p0, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v5, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 25
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/beizi/ad/a/a/c;->b(Landroid/view/ViewGroup;)[I

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 27
    :try_start_2
    aget v7, v4, v2

    if-lez v7, :cond_8

    .line 28
    iget-object v8, p0, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v8, v7}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v7

    div-int/2addr v7, v5

    int-to-double v7, v7

    goto :goto_0

    :cond_8
    const-wide/high16 v7, 0x402c000000000000L    # 14.0

    :goto_0
    double-to-float v7, v7

    .line 29
    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 30
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :goto_1
    instance-of v7, p1, Landroid/widget/RelativeLayout;

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-eqz v7, :cond_b

    .line 32
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    aget v1, v4, v1

    if-lez v1, :cond_9

    .line 34
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 35
    :cond_9
    aget v1, v4, v2

    if-lez v1, :cond_a

    .line 36
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 37
    :cond_a
    aget v1, v4, v6

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 38
    aget v1, v4, v5

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 39
    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    invoke-virtual {p1, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 41
    :cond_b
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_e

    .line 42
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    aget v1, v4, v1

    if-lez v1, :cond_c

    .line 44
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 45
    :cond_c
    aget v1, v4, v2

    if-lez v1, :cond_d

    .line 46
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 47
    :cond_d
    aget v1, v4, v6

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 48
    aget v1, v4, v5

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 49
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 50
    :cond_e
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_11

    .line 51
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    aget v1, v4, v1

    if-lez v1, :cond_f

    .line 53
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 54
    :cond_f
    aget v1, v4, v2

    if-lez v1, :cond_10

    .line 55
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 56
    :cond_10
    aget v1, v4, v6

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 57
    aget v1, v4, v5

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 58
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 59
    :cond_11
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 60
    aget v1, v4, v1

    if-lez v1, :cond_12

    .line 61
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    :cond_12
    aget v1, v4, v2

    if-lez v1, :cond_13

    .line 63
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    :cond_13
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_2
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/beizi/ad/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_1
    iget p2, p0, Lcom/beizi/ad/a/a/c;->j:I

    if-eqz p2, :cond_2

    return-void

    .line 69
    :cond_2
    new-instance p2, Lcom/beizi/ad/a/a/c$2;

    invoke-direct {p2, p0}, Lcom/beizi/ad/a/a/c$2;-><init>(Lcom/beizi/ad/a/a/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/ad/a/a/c$a;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/beizi/ad/a/a/c;->d:Lcom/beizi/ad/a/a/c$a;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 44
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 45
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 46
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->d:Lcom/beizi/ad/a/a/c$a;

    .line 47
    iput-object v0, p0, Lcom/beizi/ad/a/a/c;->a:Landroid/content/Context;

    return-void
.end method
