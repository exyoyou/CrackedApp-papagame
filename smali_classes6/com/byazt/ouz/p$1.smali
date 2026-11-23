.class public Lcom/byazt/ouz/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hkv/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x7dd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/p;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/ouz/p;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/p;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/p$1;->tt:Lcom/byazt/ouz/p;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/ouz/p$1;->c:I

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/p$1;->tt:Lcom/byazt/ouz/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ouz/p;->c(Lcom/byazt/ouz/p;)Lcom/byazt/omf/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/p$1;->tt:Lcom/byazt/ouz/p;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ouz/p;->c(Lcom/byazt/ouz/p;)Lcom/byazt/omf/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/byazt/ouz/p$1;->c:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
