.class public abstract Lcom/mgsim/common/fragment/BackHandledFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field protected b:Lcom/mgsim/common/fragment/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of p1, p1, Lcom/mgsim/common/fragment/a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/mgsim/common/fragment/a;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mgsim/common/fragment/BackHandledFragment;->b:Lcom/mgsim/common/fragment/a;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 22
    .line 23
    const-string v0, "Hosting Activity must implement BackHandledInterface"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mgsim/common/fragment/BackHandledFragment;->b:Lcom/mgsim/common/fragment/a;

    .line 5
    .line 6
    invoke-interface {v0, p0}, Lcom/mgsim/common/fragment/a;->setSelectedFragment(Lcom/mgsim/common/fragment/BackHandledFragment;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
