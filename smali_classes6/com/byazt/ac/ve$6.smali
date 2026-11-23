.class public Lcom/byazt/ac/ve$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qj/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x182
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ac/ve;->c(Ljava/util/Map;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Landroid/view/View;

.field public final synthetic ve:Lcom/byazt/ac/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/ve;Ljava/util/Map;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/ve$6;->ve:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ac/ve$6;->c:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ac/ve$6;->tt:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/byazt/ac/ve$6;->ve:Lcom/byazt/ac/ve;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/byazt/ac/ve;->c(Lcom/byazt/ac/ve;Lcom/byazt/pg/ve;)Lcom/byazt/pg/ve;

    .line 3
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/ac/ve$6$1;

    invoke-direct {v0, p0}, Lcom/byazt/ac/ve$6$1;-><init>(Lcom/byazt/ac/ve$6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/ac/ve$6;->ve:Lcom/byazt/ac/ve;

    invoke-static {p1}, Lcom/byazt/ac/ve;->uj(Lcom/byazt/ac/ve;)V

    return-void
.end method
