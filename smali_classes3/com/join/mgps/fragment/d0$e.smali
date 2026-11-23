.class Lcom/join/mgps/fragment/d0$e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/d0;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/fragment/d0;->j:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->p:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->o:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 2
    .line 3
    iget p1, p1, Lcom/join/mgps/fragment/d0;->j:I

    .line 4
    .line 5
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/fragment/d0;->j:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_2

    .line 7
    .line 8
    check-cast p1, Lcom/join/mgps/fragment/d0$d;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->p:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->d:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getContent()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->e:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getNickname()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->f:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getSend_time()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getAvatar_src()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getVideo_url()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    const-string v2, "{}"

    .line 64
    .line 65
    const/16 v3, 0x8

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getVideo_url()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->g:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->g:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getImage_url()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getImage_url()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_1

    .line 109
    .line 110
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->h:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$d;->h:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-object p1, p1, Lcom/join/mgps/fragment/d0$d;->i:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    new-instance v0, Lcom/join/mgps/fragment/d0$e$a;

    .line 124
    .line 125
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/fragment/d0$e$a;-><init>(Lcom/join/mgps/fragment/d0$e;Lcom/join/mgps/dto/DiscoverListWeiboItemBean;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    check-cast p1, Lcom/join/mgps/fragment/d0$c;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/join/mgps/fragment/d0;->o:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Lcom/join/mgps/dto/DiscoverListItemBean;

    .line 141
    .line 142
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$c;->d:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getSubject()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$c;->g:Landroid/widget/TextView;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getCommit()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, ""

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$c;->f:Landroid/widget/TextView;

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getView()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->e(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$c;->e:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getNickname()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p1, Lcom/join/mgps/fragment/d0$c;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 215
    .line 216
    const v1, 0x7f080faf

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getBig_pic()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lcom/join/mgps/fragment/d0$c;->h:Landroid/widget/LinearLayout;

    .line 227
    .line 228
    new-instance v0, Lcom/join/mgps/fragment/d0$e$b;

    .line 229
    .line 230
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/fragment/d0$e$b;-><init>(Lcom/join/mgps/fragment/d0$e;Lcom/join/mgps/dto/DiscoverListItemBean;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/d0$e;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/join/mgps/fragment/d0;->l:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const v0, 0x7f0d0245

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/join/mgps/fragment/d0$d;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 27
    .line 28
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/d0$d;-><init>(Lcom/join/mgps/fragment/d0;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/join/mgps/fragment/d0;->l:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const v0, 0x7f0d0244

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Lcom/join/mgps/fragment/d0$c;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/d0$e;->e:Lcom/join/mgps/fragment/d0;

    .line 50
    .line 51
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/d0$c;-><init>(Lcom/join/mgps/fragment/d0;Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object p2
.end method
