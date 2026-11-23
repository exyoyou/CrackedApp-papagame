.class Lcom/join/mgps/adapter/e$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/e;->o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/e$i0;

.field final synthetic c:Lcom/join/mgps/adapter/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/e;Lcom/join/mgps/adapter/e$i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e$k;->c:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/e$k;->b:Lcom/join/mgps/adapter/e$i0;

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
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/e$k;->b:Lcom/join/mgps/adapter/e$i0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/e$k;->c:Lcom/join/mgps/adapter/e;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/e$k;->b:Lcom/join/mgps/adapter/e$i0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/dto/InformationListDataBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/InformationListDataBean;->getInfo_id()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/e;->i(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/adapter/e$k;->b:Lcom/join/mgps/adapter/e$i0;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->f()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x7

    .line 34
    if-gt p1, v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/adapter/e$k;->c:Lcom/join/mgps/adapter/e;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p1, p0, Lcom/join/mgps/adapter/e$k;->c:Lcom/join/mgps/adapter/e;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object p1, p0, Lcom/join/mgps/adapter/e$k;->b:Lcom/join/mgps/adapter/e$i0;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/join/mgps/dto/InformationListDataBean;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/InformationListDataBean;->getGame_id()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "todayButton"

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/adapter/e$k;->b:Lcom/join/mgps/adapter/e$i0;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->e()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-string v5, "\u5927\u603b\u7ba1\u64ad\u62a5"

    .line 81
    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method
