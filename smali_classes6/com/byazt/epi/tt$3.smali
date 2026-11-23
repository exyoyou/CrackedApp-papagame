.class public Lcom/byazt/epi/tt$3;
.super Lcom/byazt/ke/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x675,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/epi/tt;->c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/epi/tt;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Lorg/json/JSONObject;

.field public final synthetic tt:Ljava/util/List;

.field public final synthetic uj:Lcom/byazt/vb/uj;

.field public final synthetic ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/epi/tt;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/byazt/vb/uj;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/epi/tt$3;->a:Lcom/byazt/epi/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/epi/tt$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/epi/tt$3;->tt:Ljava/util/List;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/byazt/epi/tt$3;->ve:Z

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/epi/tt$3;->uj:Lcom/byazt/vb/uj;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/epi/tt$3;->n:Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/byazt/ke/tt;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/epi/tt$3;->a:Lcom/byazt/epi/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/epi/tt$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/epi/tt$3;->tt:Ljava/util/List;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/byazt/epi/tt$3;->ve:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/epi/tt$3;->uj:Lcom/byazt/vb/uj;

    .line 10
    .line 11
    invoke-interface {v4}, Lcom/byazt/vb/uj;->da()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget-object v5, p0, Lcom/byazt/epi/tt$3;->n:Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/byazt/epi/tt;->c(Lcom/byazt/epi/tt;Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
