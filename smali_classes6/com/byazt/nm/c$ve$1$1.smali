.class public Lcom/byazt/nm/c$ve$1$1;
.super Lcom/byazt/dhf/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x5c2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/c$ve$1;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/c$ve$1;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$ve$1;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$ve$1$1;->c:Lcom/byazt/nm/c$ve$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/dhf/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILjava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1$1;->c:Lcom/byazt/nm/c$ve$1;

    iget-object p1, p1, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    invoke-static {p1}, Lcom/byazt/nm/c$ve;->c(Lcom/byazt/nm/c$ve;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1$1;->c:Lcom/byazt/nm/c$ve$1;

    iget-object p1, p1, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/byazt/nm/c$ve;->c(Lcom/byazt/nm/c$ve;Z)Z

    .line 4
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1$1;->c:Lcom/byazt/nm/c$ve$1;

    iget-object p1, p1, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    invoke-static {p1}, Lcom/byazt/nm/c$ve;->tt(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/a;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/zq/c;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1$1;->c:Lcom/byazt/nm/c$ve$1;

    iget-object p1, p1, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object p1, p1, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {p1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1$1;->c:Lcom/byazt/nm/c$ve$1;

    iget-object p1, p1, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    invoke-static {p1}, Lcom/byazt/nm/c$ve;->ve(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/oc/c;->c()V

    :cond_1
    return-void
.end method

.method public tt()V
    .locals 0

    return-void
.end method
