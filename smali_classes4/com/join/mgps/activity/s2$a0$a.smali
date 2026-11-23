.class Lcom/join/mgps/activity/s2$a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/s2$a0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/s2$b0;

.field final synthetic d:Lcom/join/mgps/activity/s2$a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/s2$a0;ILcom/join/mgps/activity/s2$b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$position",
            "val$holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/s2$a0$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/s2$a0$a;->c:Lcom/join/mgps/activity/s2$b0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->s2:Ljava/util/List;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/activity/s2$a0$a;->b:I

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getCurrent_game_state()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "0"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->c:Lcom/join/mgps/activity/s2$b0;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/s2$b0;->b:Landroid/widget/ImageView;

    .line 30
    .line 31
    const v0, 0x7f0805b5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->e2:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->l2:Lcom/join/mgps/customview/XListView2;

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i2:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->j2:Landroid/widget/TextView;

    .line 72
    .line 73
    const-string v3, "\u6536\u85cf\u6210\u529f"

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->k2:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->s2:Ljava/util/List;

    .line 92
    .line 93
    iget v2, p0, Lcom/join/mgps/activity/s2$a0$a;->b:I

    .line 94
    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sput-object p1, Lcom/join/mgps/activity/s2;->Y2:Ljava/lang/String;

    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 110
    .line 111
    iput-boolean v1, p1, Lcom/join/mgps/activity/s2;->t2:Z

    .line 112
    .line 113
    iget v1, p1, Lcom/join/mgps/activity/s2;->r1:I

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    iput v1, p1, Lcom/join/mgps/activity/s2;->r1:I

    .line 118
    .line 119
    if-lez v1, :cond_1

    .line 120
    .line 121
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->E:Landroid/widget/ImageView;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->F:Landroid/widget/TextView;

    .line 131
    .line 132
    const-string v0, "\u5df2\u6536\u85cf"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->c:Lcom/join/mgps/activity/s2$b0;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/join/mgps/activity/s2$b0;->b:Landroid/widget/ImageView;

    .line 141
    .line 142
    const v1, 0x7f0805b4

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->s2:Ljava/util/List;

    .line 153
    .line 154
    iget v2, p0, Lcom/join/mgps/activity/s2$a0$a;->b:I

    .line 155
    .line 156
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setCurrent_game_state(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 166
    .line 167
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 168
    .line 169
    iget-object v0, p1, Lcom/join/mgps/activity/s2;->s2:Ljava/util/List;

    .line 170
    .line 171
    iget v2, p0, Lcom/join/mgps/activity/s2$a0$a;->b:I

    .line 172
    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 184
    .line 185
    iget-object v2, v2, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 186
    .line 187
    iget-object v2, v2, Lcom/join/mgps/activity/s2;->d:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/join/mgps/activity/s2$a0$a;->c:Lcom/join/mgps/activity/s2$b0;

    .line 190
    .line 191
    invoke-virtual {p1, v0, v2, v3}, Lcom/join/mgps/activity/s2;->U(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/s2$b0;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 197
    .line 198
    iget v0, p1, Lcom/join/mgps/activity/s2;->r1:I

    .line 199
    .line 200
    add-int/lit8 v0, v0, -0x1

    .line 201
    .line 202
    iput v0, p1, Lcom/join/mgps/activity/s2;->r1:I

    .line 203
    .line 204
    iput v0, p1, Lcom/join/mgps/activity/s2;->r1:I

    .line 205
    .line 206
    if-nez v0, :cond_1

    .line 207
    .line 208
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->E:Landroid/widget/ImageView;

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/join/mgps/activity/s2$a0$a;->d:Lcom/join/mgps/activity/s2$a0;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/join/mgps/activity/s2$a0;->b:Lcom/join/mgps/activity/s2;

    .line 216
    .line 217
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->F:Landroid/widget/TextView;

    .line 218
    .line 219
    const-string v0, "\u6536\u85cf"

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    :cond_1
    :goto_0
    return-void
.end method
