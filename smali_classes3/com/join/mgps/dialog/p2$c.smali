.class Lcom/join/mgps/dialog/p2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/p2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/p2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/p2;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/p2$c;->b:Lcom/join/mgps/dialog/p2;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/p2$c;->b:Lcom/join/mgps/dialog/p2;

    .line 2
    .line 3
    iget v0, p1, Lcom/join/mgps/dialog/p2;->f:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/papa/sim/statistic/Event;->agreePrivacyProtocol:Lcom/papa/sim/statistic/Event;

    .line 15
    .line 16
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/dialog/p2$c;->b:Lcom/join/mgps/dialog/p2;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/dialog/p2$c;->b:Lcom/join/mgps/dialog/p2;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/join/mgps/dialog/p2;->g:Lcom/join/mgps/dialog/p2$g;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/join/mgps/dialog/p2$g;->a()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lcom/papa/sim/statistic/Event;->disagreeThinkAgain:Lcom/papa/sim/statistic/Event;

    .line 57
    .line 58
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/join/mgps/dialog/p2;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/dialog/p2$c;->b:Lcom/join/mgps/dialog/p2;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/dialog/p2;->b:Landroid/app/Activity;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, "/static/gy_yhxkxy.html"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/join/mgps/dialog/p2$c;->b:Lcom/join/mgps/dialog/p2;

    .line 92
    .line 93
    iget-object v3, v3, Lcom/join/mgps/dialog/p2;->g:Lcom/join/mgps/dialog/p2$g;

    .line 94
    .line 95
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/join/mgps/dialog/p2;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/join/mgps/dialog/p2$g;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dialog/p2;->show()V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/p2$c;->b:Lcom/join/mgps/dialog/p2;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 104
    .line 105
    .line 106
    return-void
.end method
