.class Lcom/join/mgps/fragment/GmaeFormPostFragment$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/GmaeFormPostFragment;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O(Lcom/join/mgps/fragment/GmaeFormPostFragment;I)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q0(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 25
    .line 26
    const v1, 0x7f12031e

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 37
    .line 38
    const/16 v1, 0x11

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
