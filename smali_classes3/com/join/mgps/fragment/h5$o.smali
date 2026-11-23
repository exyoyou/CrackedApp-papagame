.class public Lcom/join/mgps/fragment/h5$o;
.super Lorg/androidannotations/api/builder/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/d<",
        "Lcom/join/mgps/fragment/h5$o;",
        "Lcom/join/mgps/fragment/g5;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/builder/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/fragment/g5;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/h5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/h5;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public b(I)Lcom/join/mgps/fragment/h5$o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "currentTab"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/h5$o;->a()Lcom/join/mgps/fragment/g5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/join/mgps/fragment/h5$o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "game_id"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/fragment/h5$o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "keyword"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
