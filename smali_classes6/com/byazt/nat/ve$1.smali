.class public Lcom/byazt/nat/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4ac,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nat/ve;->c(Ljava/util/Map;Lcom/byazt/zo/ve;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nat/c$c;

.field public final synthetic tt:Lcom/byazt/nat/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nat/ve;Lcom/byazt/nat/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nat/ve$1;->tt:Lcom/byazt/nat/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nat/ve$1;->c:Lcom/byazt/nat/c$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/ve$1;->c:Lcom/byazt/nat/c$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/nat/ve$1;->tt:Lcom/byazt/nat/ve;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/nat/ve;->c(Lcom/byazt/nat/ve;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/byazt/nat/ve$1;->tt:Lcom/byazt/nat/ve;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/byazt/nat/tt;->ve()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-interface {v0, v1, v2}, Lcom/byazt/nat/c$c;->c(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
