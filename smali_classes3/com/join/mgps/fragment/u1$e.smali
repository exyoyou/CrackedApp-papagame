.class Lcom/join/mgps/fragment/u1$e;
.super Lcom/join/mgps/adapter/ForumBaseAdapter$b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u1;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/u1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;-><init>()V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/u1;->O(Lcom/join/mgps/fragment/u1;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/u1;->P(Lcom/join/mgps/fragment/u1;Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/fragment/u1;->O(Lcom/join/mgps/fragment/u1;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f120142

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/u1;->showMessage(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/fragment/u1;->u0()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/fragment/u1;->p0()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/u1;->k0(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/u1;->h0(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public d(I)V
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
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$b1;->d(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/fragment/u1;->O(Lcom/join/mgps/fragment/u1;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 19
    .line 20
    .line 21
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
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$e;->a:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/join/mgps/fragment/u1;->C:Z

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/u1;->V(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
