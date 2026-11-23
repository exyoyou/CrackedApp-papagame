.class Lcom/join/mgps/fragment/f4$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/f4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/fragment/f4;->J0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/fragment/f4;->H0()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/fragment/f4;->H:Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-static {v0, v1, p1}, Lcom/join/mgps/fragment/f4;->Y(Lcom/join/mgps/fragment/f4;ILandroidx/fragment/app/FragmentTransaction;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/join/mgps/fragment/f4;->I:Lcom/join/mgps/activity/arena/b;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    new-instance v2, Lcom/join/mgps/activity/arena/b;

    .line 36
    .line 37
    invoke-direct {v2}, Lcom/join/mgps/activity/arena/b;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, v0, Lcom/join/mgps/fragment/f4;->I:Lcom/join/mgps/activity/arena/b;

    .line 41
    .line 42
    new-instance v0, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "mType"

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/join/mgps/fragment/f4;->I:Lcom/join/mgps/activity/arena/b;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/join/mgps/fragment/f4;->I:Lcom/join/mgps/activity/arena/b;

    .line 63
    .line 64
    const v2, 0x7f0a06c3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$p;->b:Lcom/join/mgps/fragment/f4;

    .line 78
    .line 79
    iput v1, p1, Lcom/join/mgps/fragment/f4;->T:I

    .line 80
    .line 81
    return-void
.end method
