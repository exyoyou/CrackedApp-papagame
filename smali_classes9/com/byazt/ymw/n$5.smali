.class public Lcom/byazt/ymw/n$5;
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
        0x246
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ymw/n;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ymw/n;


# direct methods
.method public constructor <init>(Lcom/byazt/ymw/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ymw/n$5;->c:Lcom/byazt/ymw/n;

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
    iget-object v0, p0, Lcom/byazt/ymw/n$5;->c:Lcom/byazt/ymw/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ymw/n;->c(Lcom/byazt/ymw/n;)Lcom/byazt/tn/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/tn/c;->uj()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
