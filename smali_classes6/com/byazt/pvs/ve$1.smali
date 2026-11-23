.class public Lcom/byazt/pvs/ve$1;
.super Lcom/byazt/ke/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c1,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pvs/ve;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/pvs/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/pvs/ve;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pvs/ve$1;->tt:Lcom/byazt/pvs/ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/pvs/ve$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/ke/tt;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/pvs/ve$1;->tt:Lcom/byazt/pvs/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pvs/ve;->c(Lcom/byazt/pvs/ve;)Lcom/byazt/pvs/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/byazt/pvs/n;->c()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/pvs/ve$1;->tt:Lcom/byazt/pvs/ve;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/pvs/ve$1;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lcom/byazt/pvs/ve;->c(Lcom/byazt/pvs/ve;Ljava/util/List;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
