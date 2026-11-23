.class Lcom/join/mgps/adapter/k3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/k3;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/k3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/k3;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/k3$c;->b:Lcom/join/mgps/adapter/k3;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/k3$c;->b:Lcom/join/mgps/adapter/k3;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/k3$c;->b:Lcom/join/mgps/adapter/k3;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/join/mgps/activity/HandShankOverActivity_;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {}, Lt6/x;->p()Lt6/x;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lt6/x;->o()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/k3$c;->b:Lcom/join/mgps/adapter/k3;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/adapter/k3$c;->b:Lcom/join/mgps/adapter/k3;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-class v2, Lcom/join/mgps/activity/HandShankYesActivity_;

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/k3$c;->b:Lcom/join/mgps/adapter/k3;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Landroid/content/Intent;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/adapter/k3$c;->b:Lcom/join/mgps/adapter/k3;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/join/mgps/adapter/k3;->a(Lcom/join/mgps/adapter/k3;)Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-class v2, Lcom/join/mgps/activity/HandShankNoActivity_;

    .line 85
    .line 86
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method
