.class Lcom/join/mgps/activity/MGGameDetailActivity$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity$v;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/MGGameDetailActivity$w;

.field final synthetic d:Lcom/join/mgps/activity/MGGameDetailActivity$v;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity$v;ILcom/join/mgps/activity/MGGameDetailActivity$w;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$w;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:I

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
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$w;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$w;->b:Landroid/widget/ImageView;

    .line 32
    .line 33
    const v0, 0x7f0805b5

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_show_finish:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->list:Lcom/join/mgps/customview/XListView2;

    .line 53
    .line 54
    const/16 v0, 0x8

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->tv_finish:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->tv_show_tips:Landroid/widget/TextView;

    .line 73
    .line 74
    const-string v3, "\u6536\u85cf\u6210\u529f"

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->ll_build:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 93
    .line 94
    iget v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:I

    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sput-object p1, Lcom/join/mgps/activity/MGGameDetailActivity;->gamefromid:Ljava/lang/String;

    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 111
    .line 112
    iput-boolean v2, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->isCommit:Z

    .line 113
    .line 114
    iget v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 115
    .line 116
    add-int/2addr v0, v1

    .line 117
    iput v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 118
    .line 119
    if-lez v0, :cond_1

    .line 120
    .line 121
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$w;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$w;->b:Landroid/widget/ImageView;

    .line 139
    .line 140
    const v3, 0x7f0805b4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 151
    .line 152
    iget v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:I

    .line 153
    .line 154
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setCurrent_game_state(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 166
    .line 167
    iget-object v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->listData:Ljava/util/List;

    .line 168
    .line 169
    iget v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->b:I

    .line 170
    .line 171
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 182
    .line 183
    iget-object v3, v3, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 184
    .line 185
    iget-object v3, v3, Lcom/join/mgps/activity/MGGameDetailActivity;->gameId:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->c:Lcom/join/mgps/activity/MGGameDetailActivity$w;

    .line 188
    .line 189
    invoke-virtual {p1, v0, v3, v4}, Lcom/join/mgps/activity/MGGameDetailActivity;->DelectGame(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/MGGameDetailActivity$w;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 193
    .line 194
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 195
    .line 196
    iget v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 197
    .line 198
    sub-int/2addr v0, v1

    .line 199
    iput v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 200
    .line 201
    iput v0, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 202
    .line 203
    if-nez v0, :cond_1

    .line 204
    .line 205
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->setGame_follow(I)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$v$a;->d:Lcom/join/mgps/activity/MGGameDetailActivity$v;

    .line 213
    .line 214
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity$v;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->refreshAdapter()V

    .line 217
    .line 218
    .line 219
    :cond_1
    :goto_0
    return-void
.end method
