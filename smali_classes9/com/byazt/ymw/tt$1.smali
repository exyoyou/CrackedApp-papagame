.class public Lcom/byazt/ymw/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ce,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ymw/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/tt$1;->c:Lcom/byazt/ymw/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ymw/tt$1;->c:Lcom/byazt/ymw/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ymw/tt;->c(Lcom/byazt/ymw/tt;)Lcom/byazt/aas/a$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ymw/tt$1;->c:Lcom/byazt/ymw/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ymw/tt;->c(Lcom/byazt/ymw/tt;)Lcom/byazt/aas/a$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/aas/a$c;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
