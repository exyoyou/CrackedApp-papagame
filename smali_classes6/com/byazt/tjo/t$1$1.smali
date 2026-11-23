.class public Lcom/byazt/tjo/t$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x79a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjo/t$1;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/tjo/t$1;


# direct methods
.method public constructor <init>(Lcom/byazt/tjo/t$1;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjo/t$1$1;->ve:Lcom/byazt/tjo/t$1;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/tjo/t$1$1;->c:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/tjo/t$1$1;->tt:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/tjo/t$1$1;->ve:Lcom/byazt/tjo/t$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/tjo/t$1;->uj:Lcom/byazt/tjo/t;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/byazt/tjo/t$1;->tt:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/tjo/t;->c(Lcom/byazt/tjo/t;)Lcom/byazt/lkb/c;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v0, p0, Lcom/byazt/tjo/t$1$1;->ve:Lcom/byazt/tjo/t$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/tjo/t$1;->uj:Lcom/byazt/tjo/t;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/tjo/t;->tt(Lcom/byazt/tjo/t;)Lcom/byazt/fb/ve;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-wide v5, p0, Lcom/byazt/tjo/t$1$1;->c:J

    .line 20
    .line 21
    iget-wide v7, p0, Lcom/byazt/tjo/t$1$1;->tt:J

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/tjo/t$1$1;->ve:Lcom/byazt/tjo/t$1;

    .line 24
    .line 25
    iget-object v9, v0, Lcom/byazt/tjo/t$1;->ve:Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-static/range {v1 .. v9}, Lcom/byazt/tjo/t;->c(Lcom/byazt/tjo/t;Landroid/content/Context;Lcom/byazt/lkb/c;Lcom/byazt/fb/ve;JJLorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
