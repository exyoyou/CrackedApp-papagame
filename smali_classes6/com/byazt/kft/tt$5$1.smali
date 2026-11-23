.class public Lcom/byazt/kft/tt$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x9bb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/tt$5;->onRenderStart(Lcom/byazt/fk/sp;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/kft/tt$5;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/tt$5;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/tt$5$1;->tt:Lcom/byazt/kft/tt$5;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/kft/tt$5$1;->c:J

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt$5$1;->tt:Lcom/byazt/kft/tt$5;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/byazt/kft/tt$5$1;->c:J

    .line 8
    .line 9
    invoke-interface {v1, v0, v2, v3}, Lcom/byazt/fk/sp$c;->onRenderStart(Lcom/byazt/fk/sp;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
