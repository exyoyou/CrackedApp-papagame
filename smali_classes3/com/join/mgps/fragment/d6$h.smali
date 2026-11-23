.class Lcom/join/mgps/fragment/d6$h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/d6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/d6$h$a;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z

.field final synthetic e:Lcom/join/mgps/fragment/d6;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/d6;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/d6$h;->e:Lcom/join/mgps/fragment/d6;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/fragment/d6$h;->c:I

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/fragment/d6$h;->d:Z

    .line 10
    .line 11
    iput-object p2, p0, Lcom/join/mgps/fragment/d6$h;->b:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalnum"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/d6$h;->d:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/d6$h;->d:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/join/mgps/fragment/d6$h;->c:I

    .line 8
    .line 9
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6$h;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/fragment/d6$h;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
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
    .locals 5
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
    const/16 v0, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const p3, 0x7f0d04bc

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lcom/join/mgps/fragment/d6$h$a;

    .line 22
    .line 23
    invoke-direct {p3, p0}, Lcom/join/mgps/fragment/d6$h$a;-><init>(Lcom/join/mgps/fragment/d6$h;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/fragment/d6$h;->e:Lcom/join/mgps/fragment/d6;

    .line 27
    .line 28
    iget-object v2, p3, Lcom/join/mgps/fragment/d6$h$a;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    iput-object v2, v1, Lcom/join/mgps/fragment/d6;->q:Landroid/view/View;

    .line 31
    .line 32
    const v1, 0x7f0a0a61

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    .line 41
    iput-object v1, p3, Lcom/join/mgps/fragment/d6$h$a;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    const v1, 0x7f0a19cf

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v1, p3, Lcom/join/mgps/fragment/d6$h$a;->d:Landroid/widget/TextView;

    .line 53
    .line 54
    const v1, 0x7f0a19ce

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v1, p3, Lcom/join/mgps/fragment/d6$h$a;->e:Landroid/widget/TextView;

    .line 64
    .line 65
    const v1, 0x7f0a0ee5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    iput-object v1, p3, Lcom/join/mgps/fragment/d6$h$a;->a:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    const v1, 0x7f0a0579

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p3, Lcom/join/mgps/fragment/d6$h$a;->b:Landroid/view/View;

    .line 84
    .line 85
    const v1, 0x7f0a1035

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v1, p3, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    check-cast p3, Lcom/join/mgps/fragment/d6$h$a;

    .line 108
    .line 109
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/d6$h;->b:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/join/mgps/fragment/d6$h;->e:Lcom/join/mgps/fragment/d6;

    .line 118
    .line 119
    invoke-static {v2}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/4 v3, 0x0

    .line 132
    if-nez v2, :cond_4

    .line 133
    .line 134
    if-nez p1, :cond_3

    .line 135
    .line 136
    iget p1, p0, Lcom/join/mgps/fragment/d6$h;->c:I

    .line 137
    .line 138
    if-lez p1, :cond_2

    .line 139
    .line 140
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget p1, p0, Lcom/join/mgps/fragment/d6$h;->c:I

    .line 146
    .line 147
    const/16 v2, 0x63

    .line 148
    .line 149
    if-le p1, v2, :cond_1

    .line 150
    .line 151
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 152
    .line 153
    const-string v2, "+99"

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v4, ""

    .line 167
    .line 168
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget v4, p0, Lcom/join/mgps/fragment/d6$h;->c:I

    .line 172
    .line 173
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_5

    .line 200
    .line 201
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->b:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->a:Landroid/widget/LinearLayout;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->b:Landroid/view/View;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isPlaceHolder()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->a:Landroid/widget/LinearLayout;

    .line 224
    .line 225
    const/4 v0, 0x4

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_6
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->a:Landroid/widget/LinearLayout;

    .line 231
    .line 232
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    :goto_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    if-eqz p1, :cond_7

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterItemBean;->getPic_remote()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iget-object v0, p3, Lcom/join/mgps/fragment/d6$h$a;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 250
    .line 251
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 252
    .line 253
    invoke-static {v0, p1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->d:Landroid/widget/TextView;

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterItemBean;->getSub_title()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p3, Lcom/join/mgps/fragment/d6$h$a;->e:Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 272
    .line 273
    .line 274
    move-result-object p3

    .line 275
    invoke-virtual {p3}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    :cond_7
    :goto_3
    return-object p2
.end method
