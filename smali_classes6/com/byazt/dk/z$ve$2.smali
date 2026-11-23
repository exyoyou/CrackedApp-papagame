.class public Lcom/byazt/dk/z$ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dk/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x218
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dk/z$ve;->c(Ljava/lang/String;[BLjava/lang/String;ILcom/byazt/ou/my;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ou/my;

.field public final synthetic tt:Lcom/byazt/dk/z$ve;


# direct methods
.method public constructor <init>(Lcom/byazt/dk/z$ve;Lcom/byazt/ou/my;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dk/z$ve$2;->tt:Lcom/byazt/dk/z$ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dk/z$ve$2;->c:Lcom/byazt/ou/my;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dk/z$ve$2;->c:Lcom/byazt/ou/my;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ou/my;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/dk/z$ve$2;->c:Lcom/byazt/ou/my;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/ou/my;->c(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
