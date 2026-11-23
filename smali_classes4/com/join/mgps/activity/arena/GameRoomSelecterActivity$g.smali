.class Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

.field private f:I

.field final synthetic g:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->g:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 p1, -0x400

    .line 7
    .line 8
    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->f:I

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->e:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;I)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->g:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->gameInfoListData:Ljava/util/List;

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
    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->f:I

    .line 12
    .line 13
    const/16 v2, -0x400

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->g:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->mGameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->d:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->d:Landroid/view/View;

    .line 43
    .line 44
    iget v2, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->f:I

    .line 45
    .line 46
    if-ne v2, p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->e:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;->d:Landroid/view/View;

    .line 63
    .line 64
    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;

    .line 65
    .line 66
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;
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
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->g:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->context:Landroid/content/Context;

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
    new-instance p2, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->g:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;-><init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public f(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->e:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;

    .line 2
    .line 3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->g:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->gameInfoListData:Ljava/util/List;

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
            0x1000,
            0x1000
        }
        names = {
            "roomSelcterVH",
            "i"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->d(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$g;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
