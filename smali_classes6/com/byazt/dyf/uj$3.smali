.class public Lcom/byazt/dyf/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dyf/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dyf/uj;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dyf/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/dyf/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dyf/uj$3;->c:Lcom/byazt/dyf/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILcom/byazt/nc/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/uj$3;->c:Lcom/byazt/dyf/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/dyf/uj;)Lcom/byazt/sif/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/dyf/uj$3;->c:Lcom/byazt/dyf/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/dyf/uj;)Lcom/byazt/sif/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/byazt/sif/ve;->c(ILcom/byazt/nc/a;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/byazt/dyf/uj$3;->c:Lcom/byazt/dyf/uj;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p1, v0}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/dyf/uj;Z)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/byazt/dyf/uj$3;->c:Lcom/byazt/dyf/uj;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/byazt/dyf/uj;->dismiss()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/pr/c;->c()Lcom/byazt/pr/ve;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/byazt/dyf/uj$3;->c:Lcom/byazt/dyf/uj;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/byazt/dyf/uj;->tt(Lcom/byazt/dyf/uj;)Lcom/byazt/vo/tt;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p1, v0, p2}, Lcom/byazt/pr/ve;->c(Lcom/byazt/vo/tt;Lcom/byazt/nc/a;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
