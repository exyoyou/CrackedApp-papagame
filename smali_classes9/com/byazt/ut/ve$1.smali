.class public Lcom/byazt/ut/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gf/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x342,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ut/ve;->setHARSensorCallBack(Lcom/byazt/dna/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dna/n$c;

.field public final synthetic tt:Lcom/byazt/ut/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ut/ve;Lcom/byazt/dna/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ut/ve$1;->tt:Lcom/byazt/ut/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ut/ve$1;->c:Lcom/byazt/dna/n$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/ve$1;->c:Lcom/byazt/dna/n$c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/dna/n$c;->reportSensorData(Lorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
