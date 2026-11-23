.class Lcom/join/mgps/adapter/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/e;->v(Lcom/join/mgps/adapter/e$b0;I)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/e$b;->c:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/e$b;->c:Lcom/join/mgps/adapter/e;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

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
    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getTpl_type()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/e$b;->c:Lcom/join/mgps/adapter/e;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object p1, p0, Lcom/join/mgps/adapter/e$b;->c:Lcom/join/mgps/adapter/e;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/join/mgps/adapter/e;->a(Lcom/join/mgps/adapter/e;)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object p1, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->a()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "todayButton"

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/adapter/e$b;->b:Lcom/join/mgps/adapter/e$i0;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/adapter/e$i0;->e()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const-string v5, "\u65b0\u6e38\u9884\u7ea6"

    .line 108
    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
