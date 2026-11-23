.class Lcom/join/mgps/fragment/u3$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/u3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

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
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

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
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    iget-object p2, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/fragment/u3;->j:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d02e9

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
    new-instance p3, Lcom/join/mgps/fragment/u3$d;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 22
    .line 23
    invoke-direct {p3, v0}, Lcom/join/mgps/fragment/u3$d;-><init>(Lcom/join/mgps/fragment/u3;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a15c3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    iput-object v0, p3, Lcom/join/mgps/fragment/u3$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    const v0, 0x7f0a1a24

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p3, Lcom/join/mgps/fragment/u3$d;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    const v0, 0x7f0a1a48

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p3, Lcom/join/mgps/fragment/u3$d;->b:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f0a13d7

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    iput-object v0, p3, Lcom/join/mgps/fragment/u3$d;->d:Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Lcom/join/mgps/fragment/u3$d;

    .line 79
    .line 80
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    iget-object v0, p3, Lcom/join/mgps/fragment/u3$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/fragment/u3$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 132
    .line 133
    const v1, 0x7f080caf

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 137
    .line 138
    .line 139
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/fragment/u3$d;->b:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p3, Lcom/join/mgps/fragment/u3$d;->c:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 166
    .line 167
    iget-object v2, v2, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, "\u6b3e"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object p3, p3, Lcom/join/mgps/fragment/u3$d;->d:Landroid/widget/RelativeLayout;

    .line 195
    .line 196
    new-instance v0, Lcom/join/mgps/fragment/u3$c$a;

    .line 197
    .line 198
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/u3$c$a;-><init>(Lcom/join/mgps/fragment/u3$c;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    return-object p2
.end method
