.class Lcom/join/mgps/adapter/x1$s1;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s1"
.end annotation


# instance fields
.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/ImageView;

.field n:Lcom/join/mgps/customview/ExpandLayout;

.field o:Lcom/join/mgps/customview/ExpandLayout;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/LinearLayout;

.field final synthetic r:Lcom/join/mgps/adapter/x1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->r:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a177f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a109a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->f:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a0fa1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->h:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    const p1, 0x7f0a0899

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->j:Landroid/widget/ImageView;

    .line 49
    .line 50
    const p1, 0x7f0a084f

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->l:Landroid/widget/ImageView;

    .line 60
    .line 61
    const p1, 0x7f0a0573

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/join/mgps/customview/ExpandLayout;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->n:Lcom/join/mgps/customview/ExpandLayout;

    .line 71
    .line 72
    const p1, 0x7f0a0f55

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->p:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    const p1, 0x7f0a1781

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->e:Landroid/widget/TextView;

    .line 93
    .line 94
    const p1, 0x7f0a109c

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->g:Landroid/widget/TextView;

    .line 104
    .line 105
    const p1, 0x7f0a0fa3

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->i:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    const p1, 0x7f0a08a2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/widget/ImageView;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->k:Landroid/widget/ImageView;

    .line 126
    .line 127
    const p1, 0x7f0a0859

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/ImageView;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->m:Landroid/widget/ImageView;

    .line 137
    .line 138
    const p1, 0x7f0a0574

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/join/mgps/customview/ExpandLayout;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->o:Lcom/join/mgps/customview/ExpandLayout;

    .line 148
    .line 149
    const p1, 0x7f0a0f56

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/widget/LinearLayout;

    .line 157
    .line 158
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->q:Landroid/widget/LinearLayout;

    .line 159
    .line 160
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "data2"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f071395

    .line 6
    .line 7
    .line 8
    const-string v2, "#f47500"

    .line 9
    .line 10
    const-string v3, "\u8054\u7cfb\u5ba2\u670d"

    .line 11
    .line 12
    const/16 v4, 0x8

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$s1;->p:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$s1;->l:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$s1;->l:Landroid/widget/ImageView;

    .line 28
    .line 29
    const v6, 0x7f080364

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$s1;->d:Landroid/widget/TextView;

    .line 36
    .line 37
    const-string v6, "\u4e13\u5c5e\u798f\u5229"

    .line 38
    .line 39
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$s1;->n:Lcom/join/mgps/customview/ExpandLayout;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->r:Lcom/join/mgps/adapter/x1;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->f(Lcom/join/mgps/adapter/x1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->f:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->f:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->f:Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$s1;->r:Lcom/join/mgps/adapter/x1;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-float v0, v0

    .line 100
    invoke-virtual {p1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->h:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->h:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    new-instance v0, Lcom/join/mgps/adapter/x1$s1$a;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/x1$s1$a;-><init>(Lcom/join/mgps/adapter/x1$s1;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->p:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->q:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->m:Landroid/widget/ImageView;

    .line 136
    .line 137
    const v0, 0x7f080362

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->m:Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->e:Landroid/widget/TextView;

    .line 149
    .line 150
    const-string v0, "\u5145\u503c\u8fd4\u5229"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->o:Lcom/join/mgps/customview/ExpandLayout;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ExpandLayout;->setContent(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->r:Lcom/join/mgps/adapter/x1;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/join/mgps/adapter/x1;->f(Lcom/join/mgps/adapter/x1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_exclusive_benefits_qq()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_3

    .line 175
    .line 176
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->g:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->g:Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->g:Landroid/widget/TextView;

    .line 191
    .line 192
    iget-object p2, p0, Lcom/join/mgps/adapter/x1$s1;->r:Lcom/join/mgps/adapter/x1;

    .line 193
    .line 194
    invoke-static {p2}, Lcom/join/mgps/adapter/x1;->g(Lcom/join/mgps/adapter/x1;)Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    int-to-float p2, p2

    .line 207
    invoke-virtual {p1, v5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->i:Landroid/widget/LinearLayout;

    .line 211
    .line 212
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->i:Landroid/widget/LinearLayout;

    .line 216
    .line 217
    new-instance p2, Lcom/join/mgps/adapter/x1$s1$b;

    .line 218
    .line 219
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/x1$s1$b;-><init>(Lcom/join/mgps/adapter/x1$s1;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$s1;->q:Landroid/widget/LinearLayout;

    .line 227
    .line 228
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    :cond_3
    :goto_1
    return-void
.end method
