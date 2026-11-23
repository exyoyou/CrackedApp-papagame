.class public Lcom/byazt/ut/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qi/x;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x342,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ut/ve;->initPglArmorCallApi(Lcom/byazt/dna/n$tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dna/n$tt;

.field public final synthetic tt:Lcom/byazt/ut/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ut/ve;Lcom/byazt/dna/n$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ut/ve$2;->tt:Lcom/byazt/ut/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ut/ve$2;->c:Lcom/byazt/dna/n$tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/ut/ve$2;->c:Lcom/byazt/dna/n$tt;

    invoke-interface {v0}, Lcom/byazt/dna/n$tt;->getArmorFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/ve$2;->c:Lcom/byazt/dna/n$tt;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/dna/n$tt;->setCryptInitStatus(JZ)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ut/ve$2;->c:Lcom/byazt/dna/n$tt;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/n$tt;->reportSoftDecData(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
