.class public Lcom/join/mgps/customview/ForumGroupHeaderView;
.super Lcom/join/mgps/customview/ForumBaseHeaderView;
.source "SourceFile"


# instance fields
.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Lcom/facebook/drawee/view/SimpleDraweeView;

.field j:Lcom/facebook/drawee/view/SimpleDraweeView;

.field k:Lcom/facebook/drawee/view/SimpleDraweeView;

.field l:Lcom/facebook/drawee/view/SimpleDraweeView;

.field m:Lcom/facebook/drawee/view/SimpleDraweeView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Lcom/join/mgps/customview/WrapContentListView;

.field q:Landroid/view/View;

.field r:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/ForumBaseHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/ForumBaseHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->a(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0d0713

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0a084f

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 24
    .line 25
    const p1, 0x7f0a10d8

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->e:Landroid/widget/TextView;

    .line 35
    .line 36
    const p1, 0x7f0a048c

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/widget/TextView;

    .line 46
    .line 47
    const p1, 0x7f0a011d

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    .line 55
    .line 56
    const p1, 0x7f0a0121

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->h:Landroid/view/View;

    .line 64
    .line 65
    const p1, 0x7f0a08d0

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    const p1, 0x7f0a08d1

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    .line 87
    const p1, 0x7f0a08d2

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    const p1, 0x7f0a08d3

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 108
    .line 109
    const p1, 0x7f0a08d4

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 117
    .line 118
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 119
    .line 120
    const p1, 0x7f0a0441

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    .line 130
    .line 131
    const p1, 0x7f0a0674

    .line 132
    .line 133
    .line 134
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Landroid/widget/TextView;

    .line 141
    .line 142
    const p1, 0x7f0a1c00

    .line 143
    .line 144
    .line 145
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/join/mgps/customview/WrapContentListView;

    .line 150
    .line 151
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->p:Lcom/join/mgps/customview/WrapContentListView;

    .line 152
    .line 153
    const p1, 0x7f0a1029

    .line 154
    .line 155
    .line 156
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->q:Landroid/view/View;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->h:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->q:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const/4 v1, 0x0

    .line 189
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 190
    .line 191
    .line 192
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->p:Lcom/join/mgps/customview/WrapContentListView;

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->t:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0a1029

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f0a0121

    .line 15
    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/widget/TextView;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/widget/TextView;

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public setData(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->t:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_icon()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->e:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_description()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_number()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_number()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ""

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v2, 0x1

    .line 85
    if-ne v0, v2, :cond_2

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setJoinState(Z)V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x5

    .line 94
    new-array v3, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    aput-object v4, v3, v1

    .line 99
    .line 100
    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 101
    .line 102
    aput-object v4, v3, v2

    .line 103
    .line 104
    const/4 v2, 0x2

    .line 105
    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 106
    .line 107
    aput-object v4, v3, v2

    .line 108
    .line 109
    const/4 v2, 0x3

    .line 110
    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 111
    .line 112
    aput-object v4, v3, v2

    .line 113
    .line 114
    const/4 v2, 0x4

    .line 115
    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 116
    .line 117
    aput-object v4, v3, v2

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    :goto_2
    if-ge v2, v0, :cond_5

    .line 121
    .line 122
    aget-object v4, v3, v2

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getLast_joied()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-eqz v5, :cond_4

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getLast_joied()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-lt v2, v5, :cond_3

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Lcom/facebook/drawee/generic/a;

    .line 149
    .line 150
    new-instance v6, Lcom/facebook/drawee/drawable/o;

    .line 151
    .line 152
    const-string v7, "#FFFFFF"

    .line 153
    .line 154
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-direct {v6, v7}, Lcom/facebook/drawee/drawable/o;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/a;->z(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getLast_joied()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_4
    :goto_3
    const/16 v5, 0x8

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getTop_posts()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setTopPosts(Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public setJoinState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isJoined"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "\u5df2\u52a0\u5165"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->h:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Landroid/widget/TextView;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Landroid/widget/TextView;

    .line 37
    .line 38
    const-string v1, "\u52a0\u5165\u5c0f\u7ec4"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->t:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->setIs_joined(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public setTopPosts(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Ljava/util/ArrayList;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v1, v2, :cond_4

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 49
    .line 50
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 51
    .line 52
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 53
    .line 54
    new-instance v12, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :goto_1
    move-object v7, v5

    .line 80
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-lez v5, :cond_3

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    const/4 v8, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/4 v8, 0x0

    .line 90
    :goto_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_pic()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    move-object v5, v12

    .line 103
    invoke-direct/range {v5 .. v11}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;-><init>(ILjava/lang/String;ZZZLjava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v4, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 120
    .line 121
    .line 122
    return-void
.end method
