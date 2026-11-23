.class public Lcom/byazt/qya/ve$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b1,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qya/ve;->tt(Lcom/byazt/qya/ve$tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qya/ve$tt;

.field public final synthetic tt:Lcom/byazt/qya/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/qya/ve;Ljava/lang/String;Lcom/byazt/qya/ve$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qya/ve$2;->tt:Lcom/byazt/qya/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/qya/ve$2;->c:Lcom/byazt/qya/ve$tt;

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
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qya/ve$2;->c:Lcom/byazt/qya/ve$tt;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/qya/ve$tt;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/byazt/qya/ve$2;->tt:Lcom/byazt/qya/ve;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/qya/ve$2;->c:Lcom/byazt/qya/ve$tt;

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/byazt/qya/ve;->c(Lcom/byazt/qya/ve;Lcom/byazt/qya/ve$tt;Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
