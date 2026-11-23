.class public Lcom/join/mgps/activity/GameDetailPermissionActivity_$b;
.super Lorg/androidannotations/api/builder/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailPermissionActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/a<",
        "Lcom/join/mgps/activity/GameDetailPermissionActivity_$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/join/mgps/activity/GameDetailPermissionActivity_;

    invoke-direct {p0, p1, v0}, Lorg/androidannotations/api/builder/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/join/mgps/activity/GameDetailPermissionActivity_;

    invoke-direct {p0, v0, v1}, Lorg/androidannotations/api/builder/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailPermissionActivity_$b;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/join/mgps/activity/GameDetailPermissionActivity_$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .line 1
    const-string v0, "permission"

    .line 2
    .line 3
    invoke-super {p0, v0, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/activity/GameDetailPermissionActivity_$b;

    .line 8
    .line 9
    return-object p1
.end method

.method public startForResult(I)Lorg/androidannotations/api/builder/f;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestCode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailPermissionActivity_$b;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/app/Activity;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/androidannotations/api/builder/a;->lastOptions:Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-static {v0, v1, p1, v2}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lorg/androidannotations/api/builder/e;->intent:Landroid/content/Intent;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance p1, Lorg/androidannotations/api/builder/f;

    .line 33
    .line 34
    iget-object v0, p0, Lorg/androidannotations/api/builder/e;->context:Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {p1, v0}, Lorg/androidannotations/api/builder/f;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method
