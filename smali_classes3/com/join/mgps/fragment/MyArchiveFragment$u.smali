.class public Lcom/join/mgps/fragment/MyArchiveFragment$u;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/MyArchiveFragment$u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/fragment/MyArchiveFragment$u$b;",
        ">;"
    }
.end annotation


# instance fields
.field e:Landroid/content/Context;

.field f:Z

.field final synthetic g:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->f:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->e:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/fragment/MyArchiveFragment$u$b;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p2, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->g:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    new-instance v4, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;

    .line 56
    .line 57
    invoke-direct {v4, p0, p2, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$u$a;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment$u;ILcom/join/mgps/fragment/MyArchiveFragment$u$b;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 64
    .line 65
    iget-boolean v4, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->D:Z

    .line 66
    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    iget v2, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 70
    .line 71
    const/4 v4, 0x2

    .line 72
    const/4 v5, 0x4

    .line 73
    if-ne v2, v4, :cond_3

    .line 74
    .line 75
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x5

    .line 88
    if-eq v0, v1, :cond_2

    .line 89
    .line 90
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->g:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->g:Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 102
    .line 103
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    if-ne v2, v1, :cond_6

    .line 113
    .line 114
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->g:Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->g:Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->d:Landroid/widget/ImageView;

    .line 140
    .line 141
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->e:Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->g:Landroid/widget/RelativeLayout;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->f:Lcom/join/mgps/customview/ClouldItemView;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ClouldItemView;->setCloudItemListener(Lw6/c;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;->f:Lcom/join/mgps/customview/ClouldItemView;

    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 165
    .line 166
    iget-object v3, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->u:Ljava/lang/String;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    move-object v4, p1

    .line 175
    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    .line 176
    .line 177
    iget-object v9, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 178
    .line 179
    iget v5, v9, Lcom/join/mgps/fragment/MyArchiveFragment;->v:I

    .line 180
    .line 181
    const/16 v6, 0x9

    .line 182
    .line 183
    iget-boolean v7, v9, Lcom/join/mgps/fragment/MyArchiveFragment;->D:Z

    .line 184
    .line 185
    const/4 v8, 0x0

    .line 186
    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/customview/ClouldItemView;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/MyArchiveFragment$u$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d0475

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 16
    .line 17
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;-><init>(Lcom/join/mgps/fragment/MyArchiveFragment$u;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$u;->g:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->q:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment$u;->a(Lcom/join/mgps/fragment/MyArchiveFragment$u$b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment$u;->b(Landroid/view/ViewGroup;I)Lcom/join/mgps/fragment/MyArchiveFragment$u$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
