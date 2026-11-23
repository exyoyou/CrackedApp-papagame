.class public Lqb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqb/a;


# instance fields
.field private a:Lqb/a;

.field private b:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqb/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "position",
            "id",
            "checked"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqb/b;->a:Lqb/a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    move v5, p5

    .line 7
    invoke-interface/range {v0 .. v5}, Lqb/a;->a(Landroid/view/ActionMode;IJZ)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lqb/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 11
    .line 12
    invoke-virtual {p2}, Lit/sephiroth/android/library/widget/AbsHListView;->getCheckedItemCount()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqb/b;->a:Lqb/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public c(Lqb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapped"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lqb/b;->a:Lqb/a;

    .line 2
    .line 3
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqb/b;->a:Lqb/a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "menu"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqb/b;->a:Lqb/a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lqb/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqb/b;->a:Lqb/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lqb/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Q()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lqb/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 18
    .line 19
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lqb/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 23
    .line 24
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lqb/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "menu"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqb/b;->a:Lqb/a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
