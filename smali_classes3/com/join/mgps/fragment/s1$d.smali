.class Lcom/join/mgps/fragment/s1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/s1;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/s1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/s1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/s1$d;->b:Lcom/join/mgps/fragment/s1;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1$d;->b:Lcom/join/mgps/fragment/s1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/fragment/s1;->c0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/s1$d;->b:Lcom/join/mgps/fragment/s1;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lcom/join/mgps/activity/ForumActivity;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/s1$d;->b:Lcom/join/mgps/fragment/s1;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/join/mgps/activity/ForumActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumActivity;->isRefresh()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/s1$d;->b:Lcom/join/mgps/fragment/s1;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1$d;->b:Lcom/join/mgps/fragment/s1;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput v1, v0, Lcom/join/mgps/fragment/s1;->s:I

    .line 42
    .line 43
    iput v1, v0, Lcom/join/mgps/fragment/s1;->r:I

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/s1;->Y(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
