.class Lcom/join/mgps/fragment/u1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u1;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/u1;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const-string v0, "stopXlistRefreshAndLoadMore"

    .line 2
    .line 3
    const-string v1, "XListView"

    .line 4
    .line 5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 27
    .line 28
    .line 29
    const-string v0, "stopXlistRefreshAndLoadMore111111111111"

    .line 30
    .line 31
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 39
    .line 40
    iget v0, v0, Lcom/join/mgps/fragment/u1;->q:I

    .line 41
    .line 42
    const/4 v2, -0x1

    .line 43
    if-ne v0, v2, :cond_1

    .line 44
    .line 45
    const-string v0, "stopXlistRefreshAndLoadMore222222222"

    .line 46
    .line 47
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/join/mgps/fragment/u1;->n:Lcom/join/mgps/customview/XListView2;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    instance-of v0, v0, Lcom/join/mgps/fragment/t1;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/join/mgps/fragment/t1;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/fragment/t1;->b0()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v1, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/join/mgps/fragment/u1;->Q(Lcom/join/mgps/fragment/u1;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ne v0, v1, :cond_2

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$g;->b:Lcom/join/mgps/fragment/u1;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/join/mgps/fragment/t1;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/fragment/t1;->D0()V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method
