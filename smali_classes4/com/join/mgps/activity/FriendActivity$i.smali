.class Lcom/join/mgps/activity/FriendActivity$i;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/FriendActivity$h;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/join/mgps/activity/FriendActivity$g;

.field final synthetic g:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/FriendActivity$i;->e:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/FriendActivity$i;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity$i;->c(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic c(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lcom/join/mgps/activity/FriendActivity;->access$002(Lcom/join/mgps/activity/FriendActivity;I)I

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$i;->f:Lcom/join/mgps/activity/FriendActivity$g;

    .line 25
    .line 26
    invoke-interface {p2, p1}, Lcom/join/mgps/activity/FriendActivity$g;->onItemClick(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public b()Lcom/join/mgps/dto/GameInfoBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity$i;->getItemCount()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v0, v2, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    :goto_0
    return-object v1
.end method

.method public d(Lcom/join/mgps/activity/FriendActivity$h;I)V
    .locals 4
    .param p1    # Lcom/join/mgps/activity/FriendActivity$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomSelcterVH",
            "pos"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, -0x400

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/join/mgps/activity/FriendActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 47
    .line 48
    invoke-static {v1, p2}, Lcom/join/mgps/activity/FriendActivity;->access$002(Lcom/join/mgps/activity/FriendActivity;I)I

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$h;->d:Landroid/widget/TextView;

    .line 57
    .line 58
    const/4 v2, -0x1

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v1, p2, :cond_1

    .line 70
    .line 71
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$h;->d:Landroid/widget/TextView;

    .line 72
    .line 73
    const/high16 v2, -0x1000000

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$h;->d:Landroid/widget/TextView;

    .line 80
    .line 81
    const-string v2, "#C3C3C3"

    .line 82
    .line 83
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$h;->d:Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ne v2, p2, :cond_2

    .line 99
    .line 100
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 104
    .line 105
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/join/mgps/activity/FriendActivity;->access$000(Lcom/join/mgps/activity/FriendActivity;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-ne v2, p2, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    const/4 v3, 0x0

    .line 120
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$h;->d:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 133
    .line 134
    new-instance v0, Lcom/join/mgps/activity/q1;

    .line 135
    .line 136
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/q1;-><init>(Lcom/join/mgps/activity/FriendActivity$i;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/FriendActivity$h;
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
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$i;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d0787

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
    const p2, 0x7f080e47

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0711b6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    new-instance p2, Lcom/join/mgps/activity/FriendActivity$h;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 43
    .line 44
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/FriendActivity$h;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    return-object p2
.end method

.method public f(Lcom/join/mgps/activity/FriendActivity$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$i;->f:Lcom/join/mgps/activity/FriendActivity$g;

    .line 2
    .line 3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$i;->g:Lcom/join/mgps/activity/FriendActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->gameInfoListData:Ljava/util/List;

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
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "roomSelcterVH",
            "pos"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/activity/FriendActivity$h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity$i;->d(Lcom/join/mgps/activity/FriendActivity$h;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity$i;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/FriendActivity$h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
