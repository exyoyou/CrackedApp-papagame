.class public Lcom/byazt/ac/ve$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x186
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ac/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/ve$5;->c:Lcom/byazt/ac/ve;

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
    iget-object v0, p0, Lcom/byazt/ac/ve$5;->c:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/ve;->md:Lcom/byazt/nr/d;

    .line 4
    .line 5
    const/16 v1, 0x65

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
