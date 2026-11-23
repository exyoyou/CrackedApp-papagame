.class public Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u0;
.super Lorg/androidannotations/api/builder/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetialModleThreeActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/d<",
        "Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u0;",
        "Lcom/join/mgps/activity/f2;",
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
.method public a()Lcom/join/mgps/activity/f2;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_;-><init>()V

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

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialModleThreeActivity_$u0;->a()Lcom/join/mgps/activity/f2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
