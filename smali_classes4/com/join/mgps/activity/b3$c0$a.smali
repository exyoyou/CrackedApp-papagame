.class Lcom/join/mgps/activity/b3$c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3$c0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

.field final synthetic c:Lcom/join/mgps/activity/b3$d0;

.field final synthetic d:Lcom/join/mgps/activity/b3$c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3$c0;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;Lcom/join/mgps/activity/b3$d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$item",
            "val$holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/b3$c0$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/b3$c0$a;->c:Lcom/join/mgps/activity/b3$d0;

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
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getCurrent_game_state()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "0"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->c:Lcom/join/mgps/activity/b3$d0;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/activity/b3$d0;->b:Landroid/widget/ImageView;

    .line 18
    .line 19
    const v0, 0x7f0805b5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->j2:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->q2:Lcom/join/mgps/customview/XListView2;

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->n2:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->o2:Landroid/widget/TextView;

    .line 60
    .line 61
    const-string v3, "\u6536\u85cf\u6210\u529f"

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->p2:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sput-object p1, Lcom/join/mgps/activity/b3;->R2:Ljava/lang/String;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 86
    .line 87
    iput-boolean v1, p1, Lcom/join/mgps/activity/b3;->y2:Z

    .line 88
    .line 89
    iget v1, p1, Lcom/join/mgps/activity/b3;->r1:I

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    iput v1, p1, Lcom/join/mgps/activity/b3;->r1:I

    .line 94
    .line 95
    if-lez v1, :cond_1

    .line 96
    .line 97
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->E:Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->F:Landroid/widget/TextView;

    .line 107
    .line 108
    const-string v0, "\u5df2\u6536\u85cf"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->c:Lcom/join/mgps/activity/b3$d0;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/join/mgps/activity/b3$d0;->b:Landroid/widget/ImageView;

    .line 117
    .line 118
    const v1, 0x7f0805b4

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setCurrent_game_state(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/b3$c0$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v2, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 142
    .line 143
    iget-object v2, v2, Lcom/join/mgps/activity/b3;->d:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v3, p0, Lcom/join/mgps/activity/b3$c0$a;->c:Lcom/join/mgps/activity/b3$d0;

    .line 146
    .line 147
    invoke-virtual {p1, v0, v2, v3}, Lcom/join/mgps/activity/b3;->V(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/b3$d0;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 153
    .line 154
    iget v0, p1, Lcom/join/mgps/activity/b3;->r1:I

    .line 155
    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 157
    .line 158
    iput v0, p1, Lcom/join/mgps/activity/b3;->r1:I

    .line 159
    .line 160
    iput v0, p1, Lcom/join/mgps/activity/b3;->r1:I

    .line 161
    .line 162
    if-nez v0, :cond_1

    .line 163
    .line 164
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->E:Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/mgps/activity/b3$c0$a;->d:Lcom/join/mgps/activity/b3$c0;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/join/mgps/activity/b3$c0;->b:Lcom/join/mgps/activity/b3;

    .line 172
    .line 173
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->F:Landroid/widget/TextView;

    .line 174
    .line 175
    const-string v0, "\u6536\u85cf"

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :cond_1
    :goto_0
    return-void
.end method
