.class public Lcom/byazt/omf/gr$8;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x6c4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->c(Lorg/json/JSONObject;Lcom/byazt/dbo/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/dbo/tt;

.field public final synthetic ve:Lcom/byazt/omf/gr;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;JLcom/byazt/dbo/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$8;->ve:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/omf/gr$8;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/omf/gr$8;->tt:Lcom/byazt/dbo/tt;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 10

    if-eqz p2, :cond_5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/omf/gr$8;->c:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_3

    :try_start_0
    const-string p1, "checkAndCorrectAd"

    const/4 v4, 0x0

    .line 3
    invoke-static {p2, p1, v4}, Lcom/byazt/by/a;->c(Lcom/byazt/hm/tt;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1

    .line 4
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    :try_start_1
    invoke-static {p1}, Lcom/byazt/dbo/n;->c(Lorg/json/JSONObject;)Lcom/byazt/dbo/n;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    iget p1, v4, Lcom/byazt/dbo/n;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v5, p1

    goto :goto_1

    :cond_1
    move-wide v5, v2

    :goto_1
    move-wide v6, v5

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    move-wide v6, v2

    :goto_2
    move-object v5, v4

    .line 8
    iget-object v4, p0, Lcom/byazt/omf/gr$8;->tt:Lcom/byazt/dbo/tt;

    move-wide v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/byazt/dbo/tt;->c(Ljava/lang/Object;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    nop

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->tt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->tt()I

    move-result p1

    int-to-long p1, p1

    move-wide v6, p1

    goto :goto_3

    :cond_4
    move-wide v6, v2

    .line 11
    :goto_3
    iget-object v4, p0, Lcom/byazt/omf/gr$8;->tt:Lcom/byazt/dbo/tt;

    const/4 v5, 0x0

    move-wide v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/byazt/dbo/tt;->c(Ljava/lang/Object;JJ)V

    :cond_5
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/byazt/omf/gr$8;->tt:Lcom/byazt/dbo/tt;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/byazt/dbo/tt;->c(Ljava/lang/Object;JJ)V

    return-void
.end method
