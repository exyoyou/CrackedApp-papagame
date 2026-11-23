.class public final Lcom/byazt/sx/uj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a0,
        0x65
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sx/uj;->c(JIIJLorg/json/JSONObject;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic c:J

.field public final synthetic n:Lorg/json/JSONObject;

.field public final synthetic tt:I

.field public final synthetic uj:J

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(JIIJLorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/sx/uj$4;->c:J

    .line 2
    .line 3
    iput p3, p0, Lcom/byazt/sx/uj$4;->tt:I

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/sx/uj$4;->ve:I

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/byazt/sx/uj$4;->uj:J

    .line 8
    .line 9
    iput-object p7, p0, Lcom/byazt/sx/uj$4;->n:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p8, p0, Lcom/byazt/sx/uj$4;->a:Ljava/util/Map;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/byazt/sx/uj$4;->c:J

    .line 2
    .line 3
    iget v2, p0, Lcom/byazt/sx/uj$4;->tt:I

    .line 4
    .line 5
    iget v3, p0, Lcom/byazt/sx/uj$4;->ve:I

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/byazt/sx/uj$4;->uj:J

    .line 8
    .line 9
    iget-object v6, p0, Lcom/byazt/sx/uj$4;->n:Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/byazt/sx/uj$4;->a:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static/range {v0 .. v7}, Lcom/byazt/ng/a;->c(JIIJLorg/json/JSONObject;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
