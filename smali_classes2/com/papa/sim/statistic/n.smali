.class public Lcom/papa/sim/statistic/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/papa/sim/statistic/n$a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/n$a;-><init>(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, p1, v1}, Lcom/papa/sim/statistic/http/c;->i(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/papa/sim/statistic/n$b;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/n$b;-><init>(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, p1, v1}, Lcom/papa/sim/statistic/http/c;->j(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
