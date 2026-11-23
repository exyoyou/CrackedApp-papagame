.class public Lcom/byazt/ymw/ve$2;
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
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/ve;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ymw/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/ve$2;->c:Lcom/byazt/ymw/ve;

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
    iget-object v0, p0, Lcom/byazt/ymw/ve$2;->c:Lcom/byazt/ymw/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ymw/ve;->c(Lcom/byazt/ymw/ve;)Lcom/byazt/gl/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/gl/c;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
