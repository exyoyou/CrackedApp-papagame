.class public final Lcom/byazt/ng/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Ljava/util/Map;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;JIIILjava/lang/String;IILcom/byazt/nbs/tt;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic c:Lcom/byazt/ng/uj;

.field public final synthetic da:I

.field public final synthetic i:I

.field public final synthetic n:I

.field public final synthetic sl:Lcom/byazt/nbs/tt;

.field public final synthetic sp:I

.field public final synthetic t:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/ll/tt;

.field public final synthetic u:Lorg/json/JSONObject;

.field public final synthetic uj:J

.field public final synthetic ve:Lcom/byazt/yl/ve;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;JIIILjava/lang/String;IILcom/byazt/nbs/tt;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/a$3;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$3;->tt:Lcom/byazt/ll/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ng/a$3;->ve:Lcom/byazt/yl/ve;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/byazt/ng/a$3;->uj:J

    .line 8
    .line 9
    iput p6, p0, Lcom/byazt/ng/a$3;->n:I

    .line 10
    .line 11
    iput p7, p0, Lcom/byazt/ng/a$3;->a:I

    .line 12
    .line 13
    iput p8, p0, Lcom/byazt/ng/a$3;->sp:I

    .line 14
    .line 15
    iput-object p9, p0, Lcom/byazt/ng/a$3;->x:Ljava/lang/String;

    .line 16
    .line 17
    iput p10, p0, Lcom/byazt/ng/a$3;->i:I

    .line 18
    .line 19
    iput p11, p0, Lcom/byazt/ng/a$3;->da:I

    .line 20
    .line 21
    iput-object p12, p0, Lcom/byazt/ng/a$3;->sl:Lcom/byazt/nbs/tt;

    .line 22
    .line 23
    iput-object p13, p0, Lcom/byazt/ng/a$3;->t:Lorg/json/JSONObject;

    .line 24
    .line 25
    iput-object p14, p0, Lcom/byazt/ng/a$3;->u:Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/byazt/tw/c;->c()Lcom/byazt/tw/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ng/a$3;->c:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/ng/a$3;->tt:Lcom/byazt/ll/tt;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/ng/a$3;->ve:Lcom/byazt/yl/ve;

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/byazt/ng/a$3;->uj:J

    .line 12
    .line 13
    iget v6, p0, Lcom/byazt/ng/a$3;->n:I

    .line 14
    .line 15
    iget v7, p0, Lcom/byazt/ng/a$3;->a:I

    .line 16
    .line 17
    iget v8, p0, Lcom/byazt/ng/a$3;->sp:I

    .line 18
    .line 19
    iget-object v9, p0, Lcom/byazt/ng/a$3;->x:Ljava/lang/String;

    .line 20
    .line 21
    iget v10, p0, Lcom/byazt/ng/a$3;->i:I

    .line 22
    .line 23
    iget v11, p0, Lcom/byazt/ng/a$3;->da:I

    .line 24
    .line 25
    iget-object v12, p0, Lcom/byazt/ng/a$3;->sl:Lcom/byazt/nbs/tt;

    .line 26
    .line 27
    iget-object v13, p0, Lcom/byazt/ng/a$3;->t:Lorg/json/JSONObject;

    .line 28
    .line 29
    iget-object v14, p0, Lcom/byazt/ng/a$3;->u:Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v14}, Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;JIIILjava/lang/String;IILcom/byazt/nbs/tt;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
