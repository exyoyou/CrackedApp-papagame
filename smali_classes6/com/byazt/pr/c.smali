.class public Lcom/byazt/pr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x31a,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Z

.field public static tt:Lcom/byazt/pr/ve;

.field public static ve:Lcom/byazt/pr/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c()Lcom/byazt/pr/ve;
    .locals 1

    .line 5
    sget-object v0, Lcom/byazt/pr/c;->tt:Lcom/byazt/pr/ve;

    return-object v0
.end method

.method public static c(Lcom/byazt/pr/ve;Lcom/byazt/pr/uj;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/pr/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/byazt/pr/c;->c:Z

    .line 3
    sput-object p0, Lcom/byazt/pr/c;->tt:Lcom/byazt/pr/ve;

    .line 4
    sput-object p1, Lcom/byazt/pr/c;->ve:Lcom/byazt/pr/uj;

    :cond_0
    return-void
.end method

.method public static tt()Lcom/byazt/pr/uj;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/pr/c;->ve:Lcom/byazt/pr/uj;

    .line 2
    .line 3
    return-object v0
.end method
