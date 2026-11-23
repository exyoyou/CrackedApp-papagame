.class public Lcom/byazt/omf/gr$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x5d1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/omf/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final c:I

.field public final da:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final sp:Ljava/lang/String;

.field public final tt:J

.field public final uj:I

.field public final ve:J

.field public final x:Lcom/byazt/ete/c;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/byazt/ete/c;JJLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/byazt/ete/c;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/byazt/omf/gr$c;->c:I

    .line 5
    .line 6
    iput p3, p0, Lcom/byazt/omf/gr$c;->uj:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/byazt/omf/gr$c;->n:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/byazt/omf/gr$c;->sp:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/byazt/omf/gr$c;->x:Lcom/byazt/ete/c;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/omf/gr$c;->i:Ljava/lang/String;

    .line 15
    .line 16
    iput p5, p0, Lcom/byazt/omf/gr$c;->a:I

    .line 17
    .line 18
    iput-wide p8, p0, Lcom/byazt/omf/gr$c;->tt:J

    .line 19
    .line 20
    iput-wide p10, p0, Lcom/byazt/omf/gr$c;->ve:J

    .line 21
    .line 22
    iput-object p12, p0, Lcom/byazt/omf/gr$c;->da:Ljava/util/ArrayList;

    .line 23
    .line 24
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/omf/gr$c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/byazt/omf/gr$c;->c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)Lcom/byazt/omf/gr$c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)Lcom/byazt/omf/gr$c;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "did"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "processing_time_ms"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "s_receive_ts"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "s_send_ts"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v1, "status_code"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "desc"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "request_id"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "reason"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 10
    invoke-static {v0, v1, v2, v12, v13}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;J)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 12
    check-cast v2, Lcom/byazt/ete/c;

    const-string v9, "request_after"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/byazt/ete/c;->c(J)V

    :cond_0
    if-nez v1, :cond_1

    .line 13
    new-instance v0, Lcom/byazt/omf/gr$c;

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/byazt/omf/gr$c;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/byazt/ete/c;JJLjava/util/ArrayList;)V

    return-object v0

    .line 14
    :cond_1
    new-instance v0, Lcom/byazt/omf/gr$c;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lcom/byazt/ete/c;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/byazt/omf/gr$c;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Lcom/byazt/ete/c;JJLjava/util/ArrayList;)V

    return-object v0
.end method
