.class Lcom/join/mgps/adapter/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/e;->r(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/e$j;->c:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/e$j;->c:Lcom/join/mgps/adapter/e;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_info_tpl_type()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getSp_tpl_two_position()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/mgps/adapter/e;->h(Ljava/lang/String;Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->f()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v0, 0x7

    .line 70
    if-gt p1, v0, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/adapter/e$j;->c:Lcom/join/mgps/adapter/e;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object p1, p0, Lcom/join/mgps/adapter/e$j;->c:Lcom/join/mgps/adapter/e;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object p1, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v3, "todayButton"

    .line 109
    .line 110
    iget-object p1, p0, Lcom/join/mgps/adapter/e$j;->b:Lcom/join/mgps/adapter/e$i0;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->e()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v5, "\u6bcf\u65e5\u53d1\u73b0\u6e38\u620f"

    .line 117
    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    return-void
.end method
