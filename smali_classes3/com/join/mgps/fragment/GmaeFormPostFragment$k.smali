.class Lcom/join/mgps/fragment/GmaeFormPostFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M(Lcom/join/mgps/fragment/GmaeFormPostFragment;Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 16
    .line 17
    const v1, 0x7f120142

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showMessage(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h1()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V0()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J0(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->D0(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->U0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 18
    .line 19
    iput p1, v1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 20
    .line 21
    new-instance p1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "key_mediacmd"

    .line 33
    .line 34
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 43
    .line 44
    iget v2, v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->b:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;->a:Ljava/lang/String;

    .line 61
    .line 62
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "key_mediacmd_params"

    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->X(Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->v0()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q1:Z

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;->a:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
