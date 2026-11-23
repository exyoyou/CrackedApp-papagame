.class public Lcom/byazt/si/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xs/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x260,
        0x66
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/si/c;->c(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/si/c;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/si/c;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/si/c$6;->uj:Lcom/byazt/si/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/si/c$6;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/si/c$6;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/si/c$6;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/si/c$6;->uj:Lcom/byazt/si/c;

    iget v1, p0, Lcom/byazt/si/c$6;->c:I

    iget v2, p0, Lcom/byazt/si/c$6;->tt:I

    iget-object v3, p0, Lcom/byazt/si/c$6;->ve:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/si/c;->c(Lcom/byazt/si/c;Lorg/json/JSONObject;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
