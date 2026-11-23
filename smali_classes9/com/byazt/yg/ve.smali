.class public Lcom/byazt/yg/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yg/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc0,
        0x36
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yg/ve;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(JLjava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/yg/ve;->c:Landroid/content/Context;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/byazt/xz/c;->c(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/byazt/xz/c;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/byazt/yg/ve;->c:Landroid/content/Context;

    sget-object p3, Lcom/byazt/uy/ve;->tt:Lcom/byazt/uy/ve;

    invoke-virtual {p3}, Lcom/byazt/uy/ve;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p4, v0}, Lcom/byazt/mg/uj;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/byazt/ia/n;->c()Lcom/byazt/ia/n;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/byazt/ia/n;->c(Lcom/byazt/uy/ve;Lcom/byazt/xz/c;)Lcom/byazt/xz/c;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/byazt/jz/c;->c()Lcom/byazt/jz/c;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/xz/c;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/jz/c;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method
