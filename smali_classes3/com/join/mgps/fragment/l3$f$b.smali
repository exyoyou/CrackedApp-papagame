.class Lcom/join/mgps/fragment/l3$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/l3$f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

.field final synthetic c:Lcom/join/mgps/fragment/l3$f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/l3$f;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$data1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l3$f$b;->c:Lcom/join/mgps/fragment/l3$f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/l3$f$b;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$f$b;->c:Lcom/join/mgps/fragment/l3$f;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/fragment/l3$f;->b:Lcom/join/mgps/fragment/l3;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/join/mgps/activity/GameDetailActivity_;

    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$f$b;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "fromid"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v0, "_from"

    .line 28
    .line 29
    const/16 v1, 0x2b60

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$f$b;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v1, "groupuid"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v0, "gameid"

    .line 46
    .line 47
    const-string v1, "0"

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const-string v0, "company_id"

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$f$b;->c:Lcom/join/mgps/fragment/l3$f;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/mgps/fragment/l3$f;->b:Lcom/join/mgps/fragment/l3;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
