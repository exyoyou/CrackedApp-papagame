.class public Lcom/byazt/lc/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/six/sp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x51f,
        0x3ad
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lc/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lc/c$1;


# direct methods
.method public constructor <init>(Lcom/byazt/lc/c$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lc/c$1$1;->c:Lcom/byazt/lc/c$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lc/c$1$1;->c:Lcom/byazt/lc/c$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lc/c$1;->tt:Lcom/byazt/xs/ve;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Lcom/byazt/xs/ve;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lc/c$1$1;->c:Lcom/byazt/lc/c$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/lc/c$1;->tt:Lcom/byazt/xs/ve;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/xs/ve;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
