.class public final Lcom/byazt/dk/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/a$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0xa7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dk/t;->c(Landroid/app/Activity;[Ljava/lang/String;Lcom/byazt/dk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dk/a;

.field public final synthetic tt:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/dk/a;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dk/t$1;->c:Lcom/byazt/dk/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dk/t$1;->tt:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/t$1;->c:Lcom/byazt/dk/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/byazt/dk/a;->c()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/byazt/dk/t$1;->tt:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ukr/yp;->c(Z[Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/dk/t$1;->c:Lcom/byazt/dk/a;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/dk/a;->c(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ukr/yp;->c(Z[Ljava/lang/String;)V

    return-void
.end method
