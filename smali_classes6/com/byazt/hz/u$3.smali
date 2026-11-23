.class public Lcom/byazt/hz/u$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x45e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/u;->ve(Lcom/byazt/pp/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pp/c;

.field public final synthetic tt:Lcom/byazt/hz/u;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/u;Lcom/byazt/pp/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/u$3;->tt:Lcom/byazt/hz/u;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/u$3;->c:Lcom/byazt/pp/c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/u$3;->tt:Lcom/byazt/hz/u;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hz/u;->c(Lcom/byazt/hz/u;)Lcom/byazt/ko/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/hz/u$3;->tt:Lcom/byazt/hz/u;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/hz/u;->c(Lcom/byazt/hz/u;)Lcom/byazt/ko/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/hz/u$3;->c:Lcom/byazt/pp/c;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/byazt/ko/tt;->c(Lcom/byazt/pp/c;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
