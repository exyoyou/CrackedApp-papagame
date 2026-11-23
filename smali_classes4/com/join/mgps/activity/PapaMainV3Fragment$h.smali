.class Lcom/join/mgps/activity/PapaMainV3Fragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PapaMainV3Fragment;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PapaMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onLoadMore: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->k0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "  "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->l0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->l0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->m0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->n0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->k0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->R(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment$h;->a:Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->i0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
