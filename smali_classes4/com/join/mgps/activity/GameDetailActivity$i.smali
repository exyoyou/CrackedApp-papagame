.class Lcom/join/mgps/activity/GameDetailActivity$i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic e:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;Ljava/util/List;ILcom/join/mgps/dto/GameListItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "commentBaseBeans",
            "color",
            "searchDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;I",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->b:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->d:Lcom/join/mgps/dto/GameListItemBean;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->b:Ljava/util/List;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d035b

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/join/mgps/dto/CommentBaseBean;

    .line 26
    .line 27
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    .line 28
    .line 29
    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f0714f8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const v2, 0x7f0711b4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity$i;->c:I

    .line 67
    .line 68
    invoke-virtual {p3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a1b00

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 79
    .line 80
    const v2, 0x7f0a1b0c

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/widget/TextView;

    .line 88
    .line 89
    const v3, 0x7f0a03db

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/join/mgps/customview/MStarBar;

    .line 97
    .line 98
    const v4, 0x7f0a0424

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 106
    .line 107
    const v5, 0x7f0a1087

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Landroid/widget/TextView;

    .line 115
    .line 116
    const v5, 0x7f0a0fee

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const v6, 0x7f0a1b1f

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v5, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-static {v1, p3}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    const/4 v1, 0x1

    .line 152
    const/16 v2, 0x8

    .line 153
    .line 154
    if-eq p3, v1, :cond_2

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    const/4 v1, 0x0

    .line 169
    cmpl-float p3, p3, v1

    .line 170
    .line 171
    if-nez p3, :cond_1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 182
    .line 183
    .line 184
    move-result-wide v7

    .line 185
    invoke-virtual {v3, v7, v8}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_2
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result p3

    .line 200
    if-eqz p3, :cond_3

    .line 201
    .line 202
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {v4, p3, v1, v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->y(Ljava/lang/CharSequence;II)V

    .line 225
    .line 226
    .line 227
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$i$a;

    .line 228
    .line 229
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$i$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity$i;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$i$b;

    .line 236
    .line 237
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$i$b;-><init>(Lcom/join/mgps/activity/GameDetailActivity$i;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$i$c;

    .line 244
    .line 245
    invoke-direct {p3, p0, v4, p1}, Lcom/join/mgps/activity/GameDetailActivity$i$c;-><init>(Lcom/join/mgps/activity/GameDetailActivity$i;Lcom/join/mgps/customview/GamelistExpandableTextView;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 249
    .line 250
    .line 251
    return-object p2
.end method
