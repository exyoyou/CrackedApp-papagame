.class public Lcom/byazt/nq/tt$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3ee,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nq/tt;->c(Lcom/byazt/nq/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nq/c;

.field public final synthetic tt:Lcom/byazt/nq/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/nq/tt;Ljava/lang/String;Lcom/byazt/nq/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nq/tt$3;->tt:Lcom/byazt/nq/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nq/tt$3;->c:Lcom/byazt/nq/c;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/nq/ve;->c()Lcom/byazt/nq/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/nq/tt$3;->c:Lcom/byazt/nq/c;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/byazt/nq/ve;->c(Lcom/byazt/nq/c;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
