.class public Lcom/byazt/iym/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iym/n$tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iym/n;->c(Lcom/byazt/iym/tt;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iym/n;


# direct methods
.method public constructor <init>(Lcom/byazt/iym/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iym/n$4;->c:Lcom/byazt/iym/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/iym/n$4;->c:Lcom/byazt/iym/n;

    invoke-static {v0}, Lcom/byazt/iym/n;->tt(Lcom/byazt/iym/n;)Lcom/byazt/fcd/ve$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fcd/ve$c;->uj()V

    return-void
.end method

.method public c(JJ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/iym/n$4;->c:Lcom/byazt/iym/n;

    invoke-static {v0}, Lcom/byazt/iym/n;->tt(Lcom/byazt/iym/n;)Lcom/byazt/fcd/ve$c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/fcd/ve$c;->c(JJ)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n$4;->c:Lcom/byazt/iym/n;

    invoke-static {v0, p1}, Lcom/byazt/iym/n;->tt(Lcom/byazt/iym/n;Z)V

    return-void
.end method
