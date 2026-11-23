.class public Lcom/byazt/wdw/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve$c;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wdw/ve$c;

.field public final synthetic tt:Lcom/byazt/wdw/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/ve;Lcom/byazt/wdw/ve$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/ve$1;->tt:Lcom/byazt/wdw/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wdw/ve$1;->c:Lcom/byazt/wdw/ve$c;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wdw/ve$1;->c:Lcom/byazt/wdw/ve$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/wdw/ve$c;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
