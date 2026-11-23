.class Lcom/join/mgps/fragment/u1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u1;->a0()V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/u1$c;->b:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$c;->b:Lcom/join/mgps/fragment/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/u1;->b0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$c;->b:Lcom/join/mgps/fragment/u1;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/join/mgps/fragment/t1;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$c;->b:Lcom/join/mgps/fragment/u1;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/fragment/t1;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/fragment/t1;->l0()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$c;->b:Lcom/join/mgps/fragment/u1;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/fragment/u1;->s0()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$c;->b:Lcom/join/mgps/fragment/u1;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput v1, v0, Lcom/join/mgps/fragment/u1;->q:I

    .line 42
    .line 43
    iput v1, v0, Lcom/join/mgps/fragment/u1;->p:I

    .line 44
    .line 45
    iget-object v0, v0, Lcom/join/mgps/fragment/u1;->u:Ljava/util/List;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/u1$c;->b:Lcom/join/mgps/fragment/u1;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/u1;->X(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method
