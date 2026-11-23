.class public Lcom/byazt/ysz/sp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0x250
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ysz/sp;->da()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ysz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/ysz/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ysz/sp$2;->c:Lcom/byazt/ysz/sp;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ysz/sp$2$1;

    .line 2
    .line 3
    const-string v1, "doInitLive"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/byazt/ysz/sp$2$1;-><init>(Lcom/byazt/ysz/sp$2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
