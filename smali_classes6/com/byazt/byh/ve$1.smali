.class public Lcom/byazt/byh/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x317,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/byh/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/byh/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/byh/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/byh/ve$1;->c:Lcom/byazt/byh/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-string v0, "thread_service"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/qp;

    .line 8
    .line 9
    new-instance v1, Lcom/byazt/byh/ve$1$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/byazt/byh/ve$1$1;-><init>(Lcom/byazt/byh/ve$1;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/byazt/dna/qp;->executeNormalTask(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
