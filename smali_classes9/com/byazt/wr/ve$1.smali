.class public Lcom/byazt/wr/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x551,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wr/ve;->c(Lcom/byazt/yy/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yy/c;

.field public final synthetic tt:Lcom/byazt/wr/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/wr/ve;Lcom/byazt/yy/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wr/ve$1;->tt:Lcom/byazt/wr/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wr/ve$1;->c:Lcom/byazt/yy/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wr/ve$1;->tt:Lcom/byazt/wr/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/wr/ve$1;->c:Lcom/byazt/yy/c;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/wr/ve;->c(Lcom/byazt/wr/ve;Lcom/byazt/yy/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
