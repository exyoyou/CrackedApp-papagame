.class public final Lcom/byazt/btt/ve$2;
.super Lcom/byazt/whk/x;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x828,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic n:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/jzl/a;

.field public final synthetic uj:J

.field public final synthetic ve:Lcom/byazt/fk/da$c;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;JLcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/btt/ve$2;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/btt/ve$2;->tt:Lcom/byazt/jzl/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/btt/ve$2;->ve:Lcom/byazt/fk/da$c;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/byazt/btt/ve$2;->uj:J

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/btt/ve$2;->n:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/whk/x;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(ILcom/byazt/whk/i;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 9

    .line 1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/whk/i;->uj()Landroid/util/SparseArray;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/byazt/btt/ve$2;->c:Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/byazt/ukr/yp;->c(Landroid/util/SparseArray;Lorg/json/JSONObject;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lcom/byazt/btt/ve$2;->tt:Lcom/byazt/jzl/a;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/byazt/btt/ve$2;->ve:Lcom/byazt/fk/da$c;

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/byazt/btt/ve$2;->uj:J

    .line 22
    .line 23
    iget-object v8, p0, Lcom/byazt/btt/ve$2;->n:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    move v2, p1

    .line 26
    move-object v3, p2

    .line 27
    invoke-static/range {v2 .. v8}, Lcom/byazt/btt/ve;->c(ILcom/byazt/whk/i;Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;JLcom/byazt/ete/ic;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method
