.class public final Lcom/byazt/yih/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0xce
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yih/i;->tt(Lcom/byazt/aas/c;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/aas/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lcom/byazt/aas/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yih/i$3;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/yih/i$3;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/yih/i$3;->ve:Lcom/byazt/aas/c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yih/i$3;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/yih/i$3;->tt:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/yih/i;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/yih/i$3;->ve:Lcom/byazt/aas/c;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/aas/c;->ve()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yih/i$3;->ve:Lcom/byazt/aas/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/aas/c;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yih/i$3;->ve:Lcom/byazt/aas/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/aas/c;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
