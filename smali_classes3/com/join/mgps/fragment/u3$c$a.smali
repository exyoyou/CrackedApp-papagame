.class Lcom/join/mgps/fragment/u3$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/u3$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/u3$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/u3$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/u3$c$a;->c:Lcom/join/mgps/fragment/u3$c;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/u3$c$a;->b:I

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
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c$a;->c:Lcom/join/mgps/fragment/u3$c;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c$a;->c:Lcom/join/mgps/fragment/u3$c;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

    .line 21
    .line 22
    iget v1, p0, Lcom/join/mgps/fragment/u3$c$a;->b:I

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "fromid"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c$a;->c:Lcom/join/mgps/fragment/u3$c;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/join/mgps/fragment/u3;->q:Ljava/util/List;

    .line 44
    .line 45
    iget v1, p0, Lcom/join/mgps/fragment/u3$c$a;->b:I

    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-string v1, "groupuid"

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string v0, "_from"

    .line 63
    .line 64
    const/16 v1, 0x2b60

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const-string v0, "gameid"

    .line 70
    .line 71
    const-string v1, "0"

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string v0, "company_id"

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/fragment/u3$c$a;->c:Lcom/join/mgps/fragment/u3$c;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/join/mgps/fragment/u3$c;->b:Lcom/join/mgps/fragment/u3;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
