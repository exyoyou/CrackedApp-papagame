.class public Lcom/byazt/fcd/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0xcd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/i;->i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/fcd/i;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/i;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/i$2;->tt:Lcom/byazt/fcd/i;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/fcd/i$2;->c:Z

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
    iget-object v0, p0, Lcom/byazt/fcd/i$2;->tt:Lcom/byazt/fcd/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Lcom/byazt/dqg/i;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/byazt/fcd/i$2;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/dqg/i;->tt()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/dqg/i;->ve()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
