.class Lcom/join/mgps/activity/arena/GameRoomListActivity$z;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/arena/GameRoomListActivity$y;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

.field final synthetic f:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;)Lcom/join/mgps/activity/arena/GameRoomListActivity$w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->e:Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Lcom/join/mgps/dto/GameInfoBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->getItemCount()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v0, v2, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

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

.method public c(Lcom/join/mgps/activity/arena/GameRoomListActivity$y;I)V
    .locals 5
    .param p1    # Lcom/join/mgps/activity/arena/GameRoomListActivity$y;
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
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

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
    const/high16 v4, -0x1000000

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomListActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 43
    .line 44
    invoke-static {v1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3002(Lcom/join/mgps/activity/arena/GameRoomListActivity;I)I

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->d:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->e:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, p2, :cond_1

    .line 65
    .line 66
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->e:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->e:Landroid/widget/TextView;

    .line 73
    .line 74
    const-string v2, "#C3C3C3"

    .line 75
    .line 76
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->d:Landroid/view/View;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$3000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne v2, p2, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v3, 0x0

    .line 95
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 96
    .line 97
    .line 98
    :goto_2
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->e:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->d:Landroid/view/View;

    .line 108
    .line 109
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;

    .line 110
    .line 111
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomListActivity$y;
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
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d0787

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public f(Lcom/join/mgps/activity/arena/GameRoomListActivity$w;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->e:Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

    .line 2
    .line 3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->f:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->gameInfoListData:Ljava/util/List;

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
            "i"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->c(Lcom/join/mgps/activity/arena/GameRoomListActivity$y;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomListActivity$y;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
