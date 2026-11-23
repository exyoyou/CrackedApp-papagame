.class Lcom/join/mgps/activity/EndGameActivity$k;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/EndGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/join/mgps/activity/EndGameActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/EndGameActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/EndGameActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "fragmentActivity",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameActivity$k;->f:Lcom/join/mgps/activity/EndGameActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/activity/EndGameActivity$k;->e:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/EndGameActivity$k;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/EndGameActivity$k;->d(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/activity/EndGameActivity$k;I)Lcom/join/mgps/fragment/j1;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/EndGameActivity$k;->c(I)Lcom/join/mgps/fragment/j1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private c(I)Lcom/join/mgps/fragment/j1;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$k;->f:Lcom/join/mgps/activity/EndGameActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "f"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameActivity$k;->getItemId(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    instance-of v0, p1, Lcom/join/mgps/fragment/j1;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    check-cast p1, Lcom/join/mgps/fragment/j1;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method private d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameActivity$k;->e:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$k;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/EndGameTypeBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/EndGameTypeBean;->getModelType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {}, Lcom/join/mgps/fragment/j1;->b0()Lcom/join/mgps/fragment/j1$h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/j1$h;->b(I)Lcom/join/mgps/fragment/j1$h;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/fragment/j1$h;->a()Lcom/join/mgps/fragment/i1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$k;->f:Lcom/join/mgps/activity/EndGameActivity;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$400(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/dto/EndGameNameListBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$k;->f:Lcom/join/mgps/activity/EndGameActivity;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$400(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/dto/EndGameNameListBean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i1;->S(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$k;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x64

    int-to-long v0, p1

    return-wide v0
.end method
