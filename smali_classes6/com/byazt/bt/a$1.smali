.class public final Lcom/byazt/bt/a$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bt/a;->tt(Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/bwm/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/bwm/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/bt/a$1;->c:Lcom/byazt/bwm/a;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bt/a$1;->c:Lcom/byazt/bwm/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
