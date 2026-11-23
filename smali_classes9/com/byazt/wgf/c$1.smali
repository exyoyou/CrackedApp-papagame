.class public Lcom/byazt/wgf/c$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb2,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wgf/c;->c(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/bwm/a;

.field public final synthetic tt:Lcom/byazt/wgf/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wgf/c;Ljava/lang/String;ILcom/byazt/bwm/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wgf/c$1;->tt:Lcom/byazt/wgf/c;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/byazt/wgf/c$1;->c:Lcom/byazt/bwm/a;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wgf/c$1;->c:Lcom/byazt/bwm/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
