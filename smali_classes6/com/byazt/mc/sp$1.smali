.class public Lcom/byazt/mc/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3e9,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/mc/sp;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mc/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/mc/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mc/sp$1;->c:Lcom/byazt/mc/sp;

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
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/mc/sp$1;->c:Lcom/byazt/mc/sp;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/mc/sp;->c(Lcom/byazt/mc/sp;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/mc/sp$1;->c:Lcom/byazt/mc/sp;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/mc/sp;->tt(Lcom/byazt/mc/sp;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
