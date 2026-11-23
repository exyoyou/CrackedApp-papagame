.class public Lcom/byazt/wz/c$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wdw/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x4cf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/c;->c(Lcom/byazt/ete/ic;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/wz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/c;Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$12;->ve:Lcom/byazt/wz/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/c$12;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/wz/c$12;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c$12;->ve:Lcom/byazt/wz/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/wz/c$12;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/byazt/wz/c$12;->tt:Z

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/byazt/wz/c;->c(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
