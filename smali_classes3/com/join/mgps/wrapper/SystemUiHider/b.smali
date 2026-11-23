.class Lcom/join/mgps/wrapper/SystemUiHider/b;
.super Lcom/join/mgps/wrapper/SystemUiHider/a;
.source "SourceFile"


# instance fields
.field private i:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "anchorView",
            "flags"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/wrapper/SystemUiHider/a;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x400

    .line 14
    .line 15
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    .line 25
    .line 26
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x300

    .line 14
    .line 15
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/16 v2, 0x400

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-interface {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/b;->i:Z

    .line 26
    .line 27
    return-void
.end method
