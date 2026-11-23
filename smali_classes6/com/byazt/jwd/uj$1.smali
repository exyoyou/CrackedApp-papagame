.class public Lcom/byazt/jwd/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x301,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jwd/uj;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/ete/ic;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/jwd/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/jwd/uj;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jwd/uj$1;->ve:Lcom/byazt/jwd/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/jwd/uj$1;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/jwd/uj$1;->tt:Ljava/lang/String;

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
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/jwd/uj$1;->c:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/jwd/uj$1;->tt:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 2
    invoke-static {}, Lcom/byazt/ddx/x;->c()Lcom/byazt/ddx/x;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/jwd/uj$1;->c:Lcom/byazt/ete/ic;

    iget-object v6, p0, Lcom/byazt/jwd/uj$1;->tt:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/byazt/ddx/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/byazt/jwd/uj$1;->c:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/jwd/uj$1;->tt:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method
