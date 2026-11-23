.class public Lcom/byazt/ouz/gu$2;
.super Lcom/byazt/sy/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x7fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/gu;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/ouz/gu;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/gu;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ouz/gu$2;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/sy/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(F)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->c(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->c(I)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ouz/NativeExpressView;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    invoke-static {v0}, Lcom/byazt/ouz/gu;->a(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ouz/gu$2;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->i()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    .line 12
    iget-object p1, p0, Lcom/byazt/ouz/gu$2;->c:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/p;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/p$c;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;Lcom/byazt/ete/ir;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 14
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    .line 15
    :cond_0
    instance-of p1, p3, Lcom/byazt/ete/gr;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 16
    check-cast p3, Lcom/byazt/ete/gr;

    .line 17
    invoke-virtual {p3}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "isLottieInternalClick"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object p3, p0, Lcom/byazt/ouz/gu$2;->c:Lcom/byazt/ete/ic;

    const/4 v0, 0x0

    invoke-static {p3, p4, p2, v0, p1}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;Z)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->n()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->setPauseFromExpressView(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->tt()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->tt(I)V

    :cond_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->uj()V

    :cond_0
    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->ve()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/gu$2;->tt:Lcom/byazt/ouz/gu;

    iget-object v0, v0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->ve(I)V

    :cond_0
    return-void
.end method
