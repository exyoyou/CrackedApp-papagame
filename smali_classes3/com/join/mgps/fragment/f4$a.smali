.class Lcom/join/mgps/fragment/f4$a;
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f4$a;->b:Lcom/join/mgps/fragment/f4;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$a;->b:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/f4;->H:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$a;->b:Lcom/join/mgps/fragment/f4;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v0, v1, p1}, Lcom/join/mgps/fragment/f4;->Y(Lcom/join/mgps/fragment/f4;ILandroidx/fragment/app/FragmentTransaction;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$a;->b:Lcom/join/mgps/fragment/f4;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/join/mgps/fragment/f4;->J:Lcom/join/mgps/fragment/c;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lcom/join/mgps/fragment/c;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/join/mgps/fragment/c;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, v0, Lcom/join/mgps/fragment/f4;->J:Lcom/join/mgps/fragment/c;

    .line 27
    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "room_type"

    .line 34
    .line 35
    const/16 v3, 0x1f

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v2, "game_type"

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string v2, "pn"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/join/mgps/fragment/f4$a;->b:Lcom/join/mgps/fragment/f4;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/join/mgps/fragment/f4;->J:Lcom/join/mgps/fragment/c;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$a;->b:Lcom/join/mgps/fragment/f4;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/join/mgps/fragment/f4;->J:Lcom/join/mgps/fragment/c;

    .line 61
    .line 62
    const v2, 0x7f0a06c3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$a;->b:Lcom/join/mgps/fragment/f4;

    .line 76
    .line 77
    iput v1, p1, Lcom/join/mgps/fragment/f4;->T:I

    .line 78
    .line 79
    return-void
.end method
